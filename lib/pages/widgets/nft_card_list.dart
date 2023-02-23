import 'package:artist_search_app/pages/widgets/nft_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

class ArtistImageList extends StatelessWidget {
  const ArtistImageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemCount: ArtistCardInfo.length,
      itemHeight: 400,
      itemWidth: double.infinity,
      loop: true,
      duration: 1200,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return ArtistCards(
          bidPrice: ArtistCardInfo[index][0],
          artisImage: ArtistCardInfo[index][1],
        );
      },
      layout: SwiperLayout.STACK,
    );
  }
}

final List ArtistCardInfo = [
  // [ArtistPrice, ArtistImage]
  ['50.10', 'assets/images/nft6.jpg'],
  ['10.29', 'assets/images/nft9.jpg'],
  ['25.04', 'assets/images/nft8.jpg'],
  ['65.04', 'assets/images/nft7.jpg'],
];
