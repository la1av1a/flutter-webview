import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kakaomap_webview/kakaomap_webview.dart';
import 'package:map_project2/home.dart';

class KakaoMapWidget extends StatelessWidget {
  const KakaoMapWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            KakaoMapView(
                width: MediaQuery.of(context).size.width,
                height: 400,
                kakaoMapKey: 'c606c7bb3246fe0aeb56f852da42a36d',
                lat: 33.450701,
                lng: 126.570667,
                showMapTypeControl: true,
                showZoomControl: true,
                markerImageURL:
                'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_red.png',
                onTapMarker: (message) async {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text('Marker is clicked')));
                  //await _openKakaoMapScreen(context);
                }),
            FloatingActionButton(backgroundColor: Colors.red,onPressed: ()=> null),
          ],

        ),
      ),
    );
  }


}