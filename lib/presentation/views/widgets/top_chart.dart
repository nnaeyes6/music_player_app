import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/ktext.dart';

class TopCharts extends StatelessWidget {
  const TopCharts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(right: 10, left: 20),
        height: 233,
        width: 323,
        decoration: BoxDecoration(
          color: AppColor.topChartContainerColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('images/volumn.png'),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: AppColor.topChartContainerColor,
                    borderRadius: BorderRadius.circular(360),
                    border: Border.all(
                        width: 1, color: AppColor.whiteColor.withOpacity(0.2))),
                child: Image.asset(
                  'images/Stroke-1.png',
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: KText(
                  text: 'Golden age of 80s',
                  color: Colors.white70,
                  fontWeight: FontWeight.w600,
                  size: 17,
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: KText(
                  text: 'Sean swadder',
                  color: Colors.white54,
                  fontWeight: FontWeight.w600,
                  size: 14,
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: KText(
                  text: '2:34:45',
                  color: Colors.white70,
                  fontWeight: null,
                  size: 16,
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
