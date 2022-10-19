import 'package:flutter/material.dart';
import 'package:music_app/core/constants/colors.dart';
import 'package:music_app/core/constants/sps2_button.dart';
import 'package:music_app/core/constants/sps_button.dart';
import 'package:music_app/presentation/views/widgets/collection_limits.dart';

class CollectionsPage extends StatelessWidget {
  const CollectionsPage({super.key});

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
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SpsButton(onClick: () {}, text: 'My collections'),
                  SpsButtonBlk(onClick: () {}, text: 'Likes'),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: ((
                  context,
                  index,
                ) {
                  return const CollectionLimit();
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
