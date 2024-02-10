import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:street_kind/gen/assets.gen.dart';
import 'package:street_kind/shared/utils/extensions/extensions_on_context.dart';

@RoutePage()
class ConfirmFeedPage extends StatefulWidget {
  const ConfirmFeedPage({super.key});

  @override
  State<ConfirmFeedPage> createState() => _ConfirmFeedPageState();
}

class _ConfirmFeedPageState extends State<ConfirmFeedPage> {
  XFile? imageFile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Confirm Feed'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const Row(
            children: [
              SizedBox(
                width: 40,
              ),
              Expanded(
                child: Text(
                  'In order to confirm feeding, please take a photo with feeder and qr code being visible',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                width: 40,
              ),
            ],
          ),
          const Spacer(),
          imageFile != null
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.file(
                    File(imageFile!.path),
                    width: context.sizeWidth / 2,
                    height: context.sizeWidth / 2,
                    fit: BoxFit.cover,
                  ),
                )
              : InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () async {
                    imageFile = await ImagePicker().pickImage(source: ImageSource.camera);
                    setState(() {});
                  },
                  child: Ink(
                    width: context.sizeWidth / 2,
                    height: context.sizeWidth / 2,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.add_a_photo,
                        size: context.sizeWidth / 3,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
          if (imageFile != null) ...[
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton.icon(
                  onPressed: () async {
                    imageFile = await ImagePicker().pickImage(source: ImageSource.camera);
                    setState(() {});
                  },
                  icon: const Icon(Icons.add_a_photo),
                  label: const Text('Retake'),
                ),
                const SizedBox(
                  width: 20,
                ),
                FilledButton.icon(
                  onPressed: () async {
                    showDialog(
                      context: context,
                      builder: (context) => Dialog(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        child: Assets.animations.coinAnimation.lottie(),
                      ),
                    );
                    Future.delayed(const Duration(seconds: 2)).then((value) => context.router.popUntilRoot());
                  },
                  icon: const Icon(Icons.check),
                  label: const Text('Submit'),
                ),
              ],
            ),
            const Spacer()
          ] else
            const Spacer(flex: 2),
        ],
      ),
    );
  }
}
