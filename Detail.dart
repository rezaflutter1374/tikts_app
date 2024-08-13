// ignore: duplicate_ignore
// ignore: file_names

// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: unnecessary_import

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({super.key});

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(
          'https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4'), // Sample video URL
    )..initialize().then((_) {
        setState(() {});
        _chewieController = ChewieController(
          videoPlayerController: _controller,
          autoPlay: true,
          looping: false,
          allowedScreenSleep: true,
          aspectRatio: _controller.value.aspectRatio,
          allowFullScreen: true,
          allowMuting: true,
          allowPlaybackSpeedChanging: true,
          //  allowPlaybackSpeedMenu: true,
          placeholder: Container(
            color: Colors.black,
          ),
        );
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: IconButton(
            color: Colors.white,
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              CupertinoIcons.arrow_left_circle,
              size: 40.0,
            ),
          ),
        ),
        elevation: 0.0,
        backgroundColor: const Color.fromARGB(255, 14, 12, 12),
        title: const Text(
          'Video Player Detail',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: _controller.value.isInitialized
            ? Chewie(
                controller: _chewieController!,
              )
            : const CircularProgressIndicator(),
      ),
    );
  }
}
