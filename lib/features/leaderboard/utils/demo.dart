import 'dart:math';
import 'package:collection/collection.dart';

import 'package:faker/faker.dart';

import '../models/user.dart';

List<User> generateDemoUsers({
  required int limit,
}) {
  final faker = Faker();

  final randomPoints = List<int>.generate(
    limit,
    (index) => Random().nextInt(1000),
  )..sort((a, b) => b.compareTo(a));

  return randomPoints
      .mapIndexed(
        (index, element) => User(
          position: index + 1,
          points: element,
          isMe: index == 10,
          imageString: index.toString(),
          name: faker.internet.userName(),
        ),
      )
      .toList();
}
