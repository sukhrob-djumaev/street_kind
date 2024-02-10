import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:multiavatar/multiavatar.dart';

import '../../../gen/assets.gen.dart';
import '../models/user.dart';

class LeaderboardTop extends StatelessWidget {
  final User firstPlace;
  final User secondPlace;
  final User thirdPlace;
  const LeaderboardTop({super.key, required this.firstPlace, required this.secondPlace, required this.thirdPlace});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Column(
          children: [
            CircleAvatar(
              maxRadius: 70,
              child: SvgPicture.string(
                multiavatar(
                  firstPlace.imageString,
                ),
              ),
            ),
            Text(
              firstPlace.name,
              maxLines: 1,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  firstPlace.points.toString(),
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.amber,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Assets.images.raster.pawcoin.image(
                  width: 20,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
        Row(
          children: [
            const SizedBox(
              width: 24,
            ),
            Expanded(
              child: Column(
                children: [
                  CircleAvatar(
                    maxRadius: 50,
                    child: SvgPicture.string(
                      multiavatar(
                        secondPlace.imageString,
                      ),
                    ),
                  ),
                  Text(
                    secondPlace.name,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        secondPlace.points.toString(),
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.amber,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Assets.images.raster.pawcoin.image(
                        width: 20,
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Spacer(flex: 2),
            Expanded(
              child: Column(
                children: [
                  CircleAvatar(
                    maxRadius: 50,
                    child: SvgPicture.string(
                      multiavatar(
                        thirdPlace.imageString,
                      ),
                    ),
                  ),
                  Text(
                    thirdPlace.name,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        thirdPlace.points.toString(),
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.amber,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Assets.images.raster.pawcoin.image(
                        width: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 24,
            ),
          ],
        ),
      ],
    );
  }
}
