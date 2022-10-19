import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:music_app/core/constants/colors.dart';
import 'package:music_app/core/constants/ktext.dart';
import 'package:music_app/presentation/views/widgets/curated_play_list.dart';
import 'package:music_app/presentation/views/widgets/new_release.dart';
import 'package:music_app/presentation/views/widgets/top_chart.dart';

class MusicPage extends StatelessWidget {
  const MusicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgrondColor,
        elevation: 0,
        actions: [
          Container(
              margin: const EdgeInsets.only(right: 230),
              child: Image.asset(
                'images/playIcon.png',
              )),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 30,
            ),
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      backgroundColor: AppColor.backgrondColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CuratedPlayList(),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: KText(
                      text: 'Top Charts',
                      color: null,
                      fontWeight: FontWeight.w700,
                      size: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 250,
                child: CarouselSlider.builder(
                  itemCount: 10,
                  itemBuilder: ((context, index, realIndex) {
                    return const TopCharts();
                  }),
                  options: CarouselOptions(
                    reverse: true,
                    scrollDirection: Axis.horizontal,
                    height: 250.0,
                    enlargeCenterPage: true,
                    // autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 4000),
                    viewportFraction: 0.95,
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: KText(
                      text: 'New releases.',
                      color: null,
                      fontWeight: FontWeight.w700,
                      size: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 220,
                child: Flexible(
                  child: CarouselSlider.builder(
                    itemCount: 3,
                    itemBuilder: ((context, index, realIndex) {
                      return const NewRelease();
                    }),
                    options: CarouselOptions(
                      scrollDirection: Axis.horizontal,
                      height: 250.0,
                      enlargeCenterPage: true,
                      // autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 6000),
                      viewportFraction: 0.95,
                    ),
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset('images/season.png'),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: KText(
                          text: 'Seasons in',
                          color: null,
                          fontWeight: FontWeight.w700,
                          size: 20,
                        ),
                      ),
                      Column(
                        children: const [
                          KText(
                            text: 'James',
                            color: Colors.white24,
                            fontWeight: FontWeight.w400,
                            size: 14,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0, top: 10),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.fast_rewind,
                          size: 30,
                          color: AppColor.homeIconColor,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.play_circle_fill_sharp,
                          size: 30,
                          color: AppColor.homeIconColor,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.fast_forward,
                          size: 30,
                          color: AppColor.homeIconColor,
                        )),
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
