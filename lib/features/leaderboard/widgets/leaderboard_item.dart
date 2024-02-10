import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multiavatar/multiavatar.dart';
import 'package:street_kind/gen/assets.gen.dart';

import '../models/user.dart';

class LeaderboardItem extends StatelessWidget {
  final User user;
  final bool highLightMe;
  const LeaderboardItem({super.key, required this.user, this.highLightMe = true});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Ink(
        decoration: BoxDecoration(
          color: Colors.purple.shade300,
          borderRadius: BorderRadius.circular(16),
        ),
        child: ListTile(
          shape: highLightMe && user.isMe ? const RoundedRectangleBorder(side: BorderSide()) : null,
          leading: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                maxRadius: 16,
                child: Text(
                  user.position.toString(),
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              CircleAvatar(
                child: SvgPicture.string(
                  multiavatar(
                    user.imageString,
                  ),
                ),
              ),
            ],
          ),
          title: Text(
            user.name,
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                user.points.toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Colors.amber,
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
        ),
      ),
    );
  }
}
