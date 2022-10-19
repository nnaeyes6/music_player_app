import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/ktext.dart';

class CuratedPlayList extends StatelessWidget {
  const CuratedPlayList({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Container(
            height: 503,
            width: 367,
            decoration: BoxDecoration(
              color: AppColor.playListContainerColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: KText(
                      text: 'Curated PlayList',
                      color: null,
                      fontWeight: null,
                      size: null,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 200,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: KText(
                      text: 'R & B Hits',
                      color: null,
                      fontWeight: FontWeight.w700,
                      size: 45,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: KText(
                      text:
                          'All mine, Lie again, Petty call me everyday,\nOut of time, No love,\nBad habit,and so much more',
                      color: null,
                      fontWeight: FontWeight.w400,
                      size: null,
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ),
        Positioned(
          top: 0,
          left: 100,
          child: Image.asset('images/curated_line.png'),
        ),
        Positioned(
          top: 430,
          left: 10,
          child: Image.asset(
            'images/stack1.png',
          ),
        ),
        Positioned(
          top: 430,
          left: 40,
          child: Image.asset('images/stack2.png'),
        ),
        Positioned(
          top: 430,
          left: 60,
          child: Image.asset('images/stack3.png'),
        ),
        Positioned(
          top: 430,
          left: 80,
          child: Image.asset('images/stack4.png'),
        ),
        Positioned(
          top: 430,
          left: 100,
          child: Image.asset('images/stack5.png'),
        ),
        Positioned(
          top: 424,
          left: 160,
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite,
                size: 40,
                color: AppColor.whiteColor,
              )),
        ),
        const Positioned(
          top: 438,
          left: 220,
          child: KText(
            text: '33K',
            color: null,
            fontWeight: null,
            size: 24,
          ),
        ),
        const Positioned(
          top: 438,
          left: 270,
          child: KText(
            text: 'Likes',
            color: null,
            fontWeight: null,
            size: 24,
          ),
        ),
      ],
    );
  }
}
