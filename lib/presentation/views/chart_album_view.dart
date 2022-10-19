import 'package:flutter/material.dart';
import 'package:music_app/core/constants/large_button.dart';
import 'package:music_app/core/constants/colors.dart';
import 'package:music_app/core/constants/ktext.dart';
import 'package:music_app/core/constants/small_button.dart';
import 'package:music_app/presentation/views/widgets/tunes_play.dart';

class ViewChartAlbumPage extends StatelessWidget {
  const ViewChartAlbumPage({super.key});

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
            ),
          ),
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
              Center(child: Image.asset('images/radio.png')),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: KText(
                      text: 'Tomorrow’s tunes',
                      color: AppColor.whiteGreyColor,
                      fontWeight: FontWeight.w700,
                      size: 35,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 30),
                child: KText(
                  text:
                      '''Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis''',
                  color: AppColor.whiteColor.withOpacity(0.5),
                  fontWeight: FontWeight.w700,
                  size: 16,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    KButtonSmall(
                      onClick: () {},
                      text: 'Play All',
                      icon: const Icon(
                        Icons.play_circle,
                        color: AppColor.homeIconColor,
                      ),
                    ),
                    KButton(
                        onClick: () {},
                        text: 'Add to collection',
                        icon: const Icon(
                          Icons.queue_music_outlined,
                          color: AppColor.homeIconColor,
                        )),
                    KButtonSmall(
                      onClick: () {},
                      text: 'Likes',
                      icon: const Icon(
                        Icons.favorite_outline,
                        color: AppColor.homeIconColor,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: ((context, index) {
                    return const TunesPlayContainer();
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
