import 'package:artist_search_app/pages/widgets/chips.dart';
import 'package:artist_search_app/pages/widgets/nft_card.dart';
import 'package:artist_search_app/pages/widgets/nft_card_list.dart';
import 'package:artist_search_app/pages/widgets/title.dart';
import 'package:artist_search_app/utils/nft_color.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff261515),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 5, right: 20, left: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 28,
                        backgroundImage: NetworkImage(
                          'https://media.licdn.com/dms/image/D4D03AQGlC4e7CFjZHw/profile-displayphoto-shrink_200_200/0/1668800108558?e=1682553600&v=beta&t=pbPbRHeMtZcXQNgQpgq4SN3QDiK7_GLRn7FHKshJs30',
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Navin Kumar',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '5.7k News Upload',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w200),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: NftColors.grey,
                    ),
                    child: const Icon(
                      Icons.grid_view_rounded,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 15.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintText: 'Search artist name..',
                  hintStyle: const TextStyle(color: Colors.white),
                  border: const OutlineInputBorder(),
                  filled: true,
                  fillColor: NftColors.grey,
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(height: 80, child: NftChips()),
              const SizedBox(
                height: 25,
              ),
              const NftTitle(
                title: 'All Collection',
                seeAll: 'See All',
              ),
              const Expanded(child: ArtistImageList()),
              const SizedBox(
                height: 20,
              ),
              const NftTitle(
                title: 'Top Sellers',
                seeAll: 'See All',
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(40)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Badge(
                                badgeContent: const Icon(
                                  Icons.verified,
                                  color: Colors.blue,
                                ),
                                position: BadgePosition.bottomEnd(),
                                badgeStyle: const BadgeStyle(
                                  shape: BadgeShape.twitter,
                                  badgeColor: Colors.transparent,
                                ),
                                child: const CircleAvatar(
                                  radius: 25,
                                  backgroundImage: AssetImage(
                                    'assets/images/user.jpg',
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'jhonWick',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '18.374 ETH',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                            ),
                            child: const Text(
                              'Follow',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
