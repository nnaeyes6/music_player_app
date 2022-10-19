import 'package:flutter/material.dart';

import '../../../core/constants/ktext.dart';

class TunesPlayContainer extends StatelessWidget {
  const TunesPlayContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      height: 60,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.grey.shade800,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Image.asset('images/tune.png'),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: KText(
                  text: 'Let me love you ~ Krisx',
                  color: Colors.white70,
                  fontWeight: null,
                  size: 16,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: KText(
                  text: 'Single',
                  color: Colors.white70,
                  fontWeight: null,
                  size: 16,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 70,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/line_dots.png'),
              const SizedBox(
                height: 5,
              ),
              const KText(
                text: '4:17',
                color: Colors.white70,
                fontWeight: null,
                size: 14,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
