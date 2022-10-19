import 'package:flutter/material.dart';

import '../../../core/constants/ktext.dart';

class NewRelease extends StatelessWidget {
  const NewRelease({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 10, left: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'images/alpha.png',
                    height: 153,
                    width: 153,
                    fit: BoxFit.cover,
                  ),
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
                  text: 'Life in a Bubble',
                  color: Colors.white70,
                  fontWeight: null,
                  size: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
