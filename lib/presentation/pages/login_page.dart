import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neraca_ruang/core/consts/colors.dart';
import 'package:flutter_neraca_ruang/core/consts/sizes.dart';
import 'package:flutter_neraca_ruang/core/consts/urls.dart';
import 'package:flutter_neraca_ruang/core/router/app_router.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/my_toast.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/rounded_container.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/rounded_text_form_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:uni_links/uni_links.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/consts/assets.dart';
import '../../logic/state_management/riverpod/async_state_auth_providers.dart';

@RoutePage()
class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  var usernameController = TextEditingController(text: '4171320089898911');
  var passwordController = TextEditingController(text: 'asdf_123');
  // var usernameController = TextEditingController(text: '');
  // var passwordController = TextEditingController(text: '');
  // var isLoginListener = ref
  void initUniLinks(WidgetRef ref) async {
    try {
      // Get the initial deep link when the app is launched
      final initialLink = await getInitialLink();
      if ((initialLink ?? "").isNotEmpty) {
        handleDeepLink(
            ref, Uri.parse(initialLink ?? "https://neracaruang.com"));
      }
    } on PlatformException {
      // Handle any platform exceptions
    }

    // Listen for incoming deep links while the app is running
    uriLinkStream.listen((Uri? deepLink) {
      handleDeepLink(ref, deepLink ?? Uri.parse("https://neracaruang.com"));
    }, onError: (err) {
      // Handle any errors
    });
  }

  void handleDeepLink(WidgetRef ref, Uri deepLink) {
    myToast(deepLink.toString());
    ref.read(callbackLinkProvider.notifier).state = deepLink.toString();
    ref.read(authStatusProvider.notifier).loginOAuth(deepLink.toString());

    // // Extract the query parameters from the deep link URL
    // final userId = deepLink.queryParameters['userId'];
    // final userName = deepLink.queryParameters['userName'];
    // final userEmail = deepLink.queryParameters['userEmail'];
    //
    // // Do whatever you need with the user data
    // print('User ID: $userId');
    // print('User Name: $userName');
    // print('User Email: $userEmail');
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(color: Color(primaryHintColor));
    var callbackUrl = ref.watch(callbackLinkProvider);
    var responseOAuth = ref.watch(authStatusProvider);

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.grey[100],
          padding: const EdgeInsets.all(medium),
          child: Center(
            child: IntrinsicHeight(
              child: Container(
                padding: const EdgeInsets.all(huge),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(style: BorderStyle.none),
                    borderRadius: BorderRadius.circular(extra)),
                child: SingleChildScrollView(
                  child: IntrinsicWidth(
                    child: Column(
                      children: [
                        Image.asset(iconNRAppbar),
                        Text(
                          "Selamat Datang",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        InkWell(
                          onTap: () async {
                            // myToast("Login by Gmail coming soon!");
                            // var url = Uri.http(baseUrl, "/api/auth/google");
                            var url = Uri.parse(
                                "https://api.neracaruang.com/api/auth/google?mobile=true");
                            initUniLinks(ref);

                            if (!await launchUrl(url,
                                mode: LaunchMode.externalApplication)) {
                              throw Exception('Could not launch $url');
                            }
                          },
                          child: RoundedTextFormField(
                            isEnabled: false,
                            decoration: InputDecoration(
                                label:
                                    Center(child: Text("Masuk Dengan Email"))),
                            // controller: usernameController,
                          ),
                        ),
                        const Text("atau"),
                        RoundedTextFormField(
                          hint: "Nama",
                          controller: usernameController,
                        ),
                        RoundedTextFormField(
                          hint: "Kata Sandi",
                          controller: passwordController,
                        ),
                        Container(
                          color: Colors.grey[100],
                          child: Text("Saya Bukan Robot"),
                        ),
                        RoundedContainer(
                          extra,
                          margin: const EdgeInsets.all(0),
                          padding: const EdgeInsets.all(0),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(primaryColor),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(huge))),
                              clipBehavior: Clip.antiAlias,
                              onPressed: () {
                                // ref
                                //     .read(usernameProvider.notifier)
                                //     .update((state) => usernameController.text);
                                // ref
                                //     .read(passwordProvider.notifier)
                                //     .update((state) => passwordController.text);
                                // ref.read(loginEvent.notifier).state = true;
                                ref.read(authStatusProvider.notifier).login(
                                      username: usernameController.text,
                                      password: passwordController.text,
                                      successCallback: () {
                                        myToast("Log In Success");
                                        context.router
                                            .replace(const LandingRoute());
                                      },
                                      failureCallback: () {
                                        myToast("Log In Failed");
                                      },
                                    );
                              },
                              child: Text("MASUK")),
                        ),
                        Text("Belum memiliki akun?"),
                        InkWell(
                          onTap: () {
                            context.router.push(const RegisterRoute());
                          },
                          child: Text(
                            "DAFTAR",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                        SizedBox(
                          height: huge,
                        ),
                        Text("the Link: ${callbackUrl ?? ""}"),
                        Text(
                            "the Response: ${responseOAuth.value.toString() ?? ""}"),
                        // HtmlWidget("${responseOAuth.value.toString() ?? ""}"),
                        // RoundedContainer(
                        //   extra,
                        //   margin: const EdgeInsets.all(0),
                        //   padding: const EdgeInsets.all(0),
                        //   child: ElevatedButton(
                        //       style: ElevatedButton.styleFrom(
                        //           backgroundColor: Color(primaryColor),
                        //           shape: RoundedRectangleBorder(
                        //               borderRadius:
                        //                   BorderRadius.circular(huge))),
                        //       clipBehavior: Clip.antiAlias,
                        //       onPressed: () {
                        //         ref.read(authStatusProvider.notifier).logout();
                        //       },
                        //       child: Text("Reset Saved Data")),
                        // ),
                        // userData.when(
                        //     data: (data) => Text("userData $data"),
                        //     error: (o, st) => const Text("User Logged Out"),
                        //     loading: () => const CircularProgressIndicator())
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
