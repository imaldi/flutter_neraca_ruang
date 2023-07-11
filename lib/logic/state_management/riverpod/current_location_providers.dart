import 'dart:convert';

import 'package:flutter_neraca_ruang/data/models/kota_kabupaten_response/kota_kabupaten_response.dart';
import 'package:flutter_neraca_ruang/data/models/open_street_map/open_street_map_response.dart';
import 'package:flutter_neraca_ruang/data/models/province_response/province_response.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/my_toast.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

import 'async_state_auth_providers.dart';
import 'dashboard_providers.dart';

part 'current_location_providers.g.dart';

@riverpod
class CurrentLocation extends _$CurrentLocation {
  @override
  FutureOr<OpenStreetMapResponse> build() async {
    var currentLocation = await getCurrentLocation();
    var isDetectingLocation = ref.watch(isDetectLokasi);
    return isDetectingLocation
        ? await getCurrentAddress(
            currentLocation.latitude, currentLocation.longitude)
        : OpenStreetMapResponse();
  }

  Future<Position> getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      // throw const LocationServiceDisabledException();
      // return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        throw const PermissionDeniedException(
            'Location permissions are denied');
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      // return Future.error(
      throw const PermissionDeniedException(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }

  Future<OpenStreetMapResponse> getCurrentAddress(
      double lat, double lon) async {
    ref.invalidate(kotaNameProvider);
    ref.invalidate(kotaNameProfileProvider);
    var provList = ref.watch(provinceListProvider).value;
    var cityList = ref.watch(kabKotaListProvider).value;
    try {
      print("lat: $lat");
      print("lon: $lon");
      var result =
          await http.get(Uri.http("nominatim.openstreetmap.org", "/reverse", {
        "format": "jsonv2",
        "lat": lat.toString(),
        "lon": lon.toString(),
      }));
      print("addres status code: ${result.statusCode}");
      print("addres response: ${result.body}");
      if (result.statusCode != 200) throw Error();
      var resultObject =
          OpenStreetMapResponse.fromJson(jsonDecode(result.body));
      // ref.read(provNameProvider.notifier).state = resultObject.address?.city;
      var cekJakarta =
          resultObject.address?.city?.toLowerCase().contains("jakarta") ??
              false;
      var namaCityOSM = resultObject.address?.city ?? "";
      // ini belum bisa detect "Barat" "Selatan" dst, cuma satu kata aja contains
      for (var provinsi in (provList ?? <ProvinceModel>[]).toList()) {
        print("Provinsi from location prvdr: ${provinsi.name}");
        var namaCitySplitted = namaCityOSM.split(" ");
        for (var kataNama in namaCitySplitted) {
          if (provinsi.name?.contains(kataNama) ?? false) {
            ref.read(provNameProvider.notifier).state = provinsi.name;
            ref.read(provIdParamProvider.notifier).state = provinsi.id ?? 0;
            // ref.read(provIdProvider.notifier).state = provinsi.id ?? 0;
          }
          // else {
          //   /// untuk stop redetect
          //   ref.invalidate(isDetectLokasi);
          // }
        }
      }

      // ini nyari nama provinsi, kalau ada yg sama persis gaskan, kalau nggak ya sudah search salah satu kata kyk di atas
      if ((provList ?? [])
          .map((e) => e.name ?? "")
          .contains(resultObject.address?.city)) {
        var selectedProvId = provList
                ?.firstWhere(
                    (element) => element.name == resultObject.address?.city,
                    orElse: () => ProvinceModel(id: 0))
                .id ??
            0;

        ref.read(provIdParamProvider.notifier).state = selectedProvId;
        // ref.read(provIdProvider.notifier).state = selectedProvId;
        // ref.read(provNameProfileProvider.notifier).state = resultObject.address?.city;
      }
      // else {
      //   ref.invalidate(isDetectLokasi);
      // }

      /// ini nyari nama kota, kalau ada yg cocok gaskan, kalau nggak ya sudah
      if ((cityList ?? [])
          .map((e) => e.name ?? "")
          .contains(resultObject.address?.cityDistrict)) {
        var selectedCityId = cityList
                ?.firstWhere(
                    (element) =>
                        element.name?.contains(
                            resultObject.address?.cityDistrict ?? "") ??
                        false,
                    orElse: () => KotaKabupaten(id: 0))
                .id ??
            0;
        ref.read(kotaIdParamProvider.notifier).state = selectedCityId;
        // ref.read(kotaIdProvider.notifier).state = selectedCityId;
        // myToast("Ketemu");

        // ref.read(kotaNameProfileProvider.notifier).state =
        //     resultObject.address?.cityDistrict;
        /// stop redetect
        // ref.invalidate(isDetectLokasi);
      }

      return resultObject;
    } catch (e) {
      return OpenStreetMapResponse();
    }
  }
}
