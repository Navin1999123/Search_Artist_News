import 'package:artist_search_app/utils/nft_color.dart';
import 'package:flutter/material.dart';

class NftChips extends StatelessWidget {
  const NftChips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(width: 5),
      itemCount: 1,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Chip(
              label: Text('All'),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 18),
              backgroundColor: NftColors.grey,
            ),
            const SizedBox(width: 5),
            Chip(
              label: const Text(
                'Trending',
                style: TextStyle(color: Colors.white),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
              backgroundColor: Colors.brown.withOpacity(0.9),
            ),
            const SizedBox(width: 5),
            Chip(
              label: const Text(
                'Art Work',
                style: TextStyle(color: Colors.white),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
              backgroundColor: Colors.brown.withOpacity(0.9),
            ),
            const SizedBox(width: 5),
            Chip(
              label: const Text(
                'Collectibles',
                style: TextStyle(color: Colors.white),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
              backgroundColor: Colors.brown.withOpacity(0.9),
            ),
          ],
        );
      },
    );

    /*Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Chip(
          label: Text('All'),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 18),
          backgroundColor: NftColors.grey,
        ),
        Chip(
          label: const Text(
            'Trending',
            style: TextStyle(color: Colors.white),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
          backgroundColor: Colors.brown.withOpacity(0.9),
        ),
        Chip(
          label: const Text(
            'Art Work',
            style: TextStyle(color: Colors.white),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
          backgroundColor: Colors.brown.withOpacity(0.9),
        ),
        Chip(
          label: const Text(
            'Collectibles',
            style: TextStyle(color: Colors.white),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
          backgroundColor: Colors.brown.withOpacity(0.9),
        ),
      ],
    );*/
  }
}
