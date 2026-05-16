import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdmobAdsWidget extends StatefulWidget {
  const AdmobAdsWidget({super.key});

  @override
  State<AdmobAdsWidget> createState() => _AdmobAdsWidgetState();
}

late BannerAd myBanner;

class _AdmobAdsWidgetState extends State<AdmobAdsWidget> {
  @override
  void initState() {
    myBanner = BannerAd(
      adUnitId: 'ca-app-pub-1867699726143396/7119748323',
      size: AdSize.banner,
      request: const AdRequest(),
      listener: const BannerAdListener(),
    );
    myBanner.load();
    super.initState();
  }
  // BannerAd? _bannerAd;

  // final String _adUnitId = 'ca-app-pub-1867699726143396/7119748323';

  // @override
  // void initState() {
  //   super.initState();
  //   _loadAd();
  // }

  @override
  Widget build(BuildContext context) {
    final AdWidget adWidget = AdWidget(
      ad: myBanner,
    );
    final SizedBox adSizedBox = SizedBox(
      width: myBanner.size.width.toDouble(),
      height: myBanner.size.height.toDouble(),
      child: adWidget,
    );
    return //_bannerAd != null
        //?
        Stack(
      children: [
        Container(
          color: Colors.white,
          width: double.infinity,
          height: myBanner.size.height.toDouble(),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: adSizedBox,
        ),
      ],
    );
    //: Container();
  }

  /// Loads and shows a banner ad.
  ///
  /// Dimensions of the ad are determined by the AdSize class.
  // void _loadAd() async {
  //   BannerAd(
  //     adUnitId: _adUnitId,
  //     request: const AdRequest(),
  //     size: AdSize.banner,
  //     listener: BannerAdListener(
  //       // Called when an ad is successfully received.
  //       onAdLoaded: (ad) {
  //         setState(() {
  //           _bannerAd = ad as BannerAd;
  //         });
  //       },
  //       // Called when an ad request failed.
  //       onAdFailedToLoad: (ad, err) {
  //         ad.dispose();
  //       },
  //       // Called when an ad opens an overlay that covers the screen.
  //       onAdOpened: (Ad ad) {},
  //       // Called when an ad removes an overlay that covers the screen.
  //       onAdClosed: (Ad ad) {},
  //       // Called when an impression occurs on the ad.
  //       onAdImpression: (Ad ad) {},
  //     ),
  //   ).load();
  // }

  // @override
  // void dispose() {
  //   _bannerAd?.dispose();
  //   super.dispose();
  // }
}
