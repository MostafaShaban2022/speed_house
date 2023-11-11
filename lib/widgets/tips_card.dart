import 'package:flutter/material.dart';
import 'package:speed_house_app/models/tips.dart';

class TipsCard extends StatelessWidget {
  final Tips tips;
  const TipsCard(this.tips, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          tips.imageUrl,
          width: 80,
        ),
        const SizedBox(
          height: 16,
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                height: 19,
                child: Text(
                  tips.title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Updated ${tips.updatedAt}',
                style: const TextStyle(
                  color: Color(0xff82868E),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.chevron_right,
            size: 27,
            color: Color(0xff82868E),
          ),
        ),
      ],
    );
  }
}
