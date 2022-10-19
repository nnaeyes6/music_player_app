import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/ktext.dart';

class CollectionLimit extends StatelessWidget {
  const CollectionLimit({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 234,
      width: 569,
      decoration: BoxDecoration(
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'images/limits.png',
          ),
        ),
        color: Colors.grey.shade800,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 60,
          ),
          Row(
            children: const [
              KText(
                text: 'Limits',
                color: Colors.white60,
                fontWeight: FontWeight.w700,
                size: 24,
              ),
            ],
          ),
          Row(
            children: const [
              KText(
                text: 'John watts',
                color: Colors.white60,
                fontWeight: FontWeight.w700,
                size: 12,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const KText(
                text: '2.3m likes',
                color: Colors.white60,
                fontWeight: FontWeight.w700,
                size: 14,
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.play_circle_fill_outlined,
                    size: 30,
                    color: AppColor.homeIconColor,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
