import 'package:flutter/material.dart';

/// 質問動画を撮影する画面
class UploadVideoQuestionPage extends StatefulWidget {
  const UploadVideoQuestionPage({super.key});

  static const String path = '/upload_video_question';

  @override
  State<UploadVideoQuestionPage> createState() =>
      _UploadVideoQuestionPageState();
}

class ButtonItem {
  final String label;
  bool isSelected = false;
  ButtonItem({required this.label, this.isSelected = false});
}

class _UploadVideoQuestionPageState extends State<UploadVideoQuestionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(color: Colors.pink), // TODO: ここにカメラ画像を表示する
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppBar(backgroundColor: Colors.transparent),
              Padding(
                padding: const EdgeInsets.only(bottom: 80.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.transparent,
                        backgroundColor: Colors.transparent,
                        surfaceTintColor: Colors.transparent,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/logo/Effects_Illustration.png',
                            fit: BoxFit.cover,
                          ),
                          const Text(
                            'Effects',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    // TODO: いい感じのアニメーションをつけるビデオボタンを作る
                    ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        shape: const CircleBorder(),
                        backgroundColor: Colors.yellow[800],
                        padding: const EdgeInsets.all(20),
                      ),
                      child: const Icon(
                        Icons.camera_alt,
                        size: 50,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.transparent,
                        backgroundColor: Colors.transparent,
                        surfaceTintColor: Colors.transparent,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/logo/Upload_Illustration.png',
                            fit: BoxFit.cover,
                          ),
                          const Text(
                            'Upload',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
