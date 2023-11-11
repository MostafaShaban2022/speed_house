import 'package:flutter/material.dart';
import 'package:speed_house_app/pages/detail_page.dart';
import 'package:speed_house_app/models/space.dart';

class SpaceCard extends StatelessWidget {
  final Space space;
  const SpaceCard(
    this.space, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(space),
          ),
        );
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: SizedBox(
              width: 130,
              height: 110,
              child: Stack(
                children: [
                  Image.network(
                    space.imageUrl,
                    width: 130,
                    height: 110,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 69,
                      height: 30,
                      decoration: const BoxDecoration(
                          color: Color(0xff5843Be),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(36))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icon_star.png',
                            width: 22,
                            height: 22,
                          ),
                          Text(
                            '${space.rating}/5',
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color(0xffFFFFFF),
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${space.name}',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text.rich(
                TextSpan(
                  text: '\$${space.price}',
                  style: const TextStyle(
                    color: Color(0xff5843Be),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  children: const [
                    TextSpan(
                      text: '/ Month',
                      style: TextStyle(
                        color: Color(0xff82868E),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                  '${space.city},'
                  ' ${space.country}',
                  style: const TextStyle(
                    color: Color(0xff82868E),
                    fontWeight: FontWeight.bold,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
