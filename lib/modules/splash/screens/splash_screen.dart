import 'package:cars_app/core/routing/app_routers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:video_player/video_player.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset('assets/videos/splash.mp4')
      ..initialize().then((_) async {
        setState(() {});

        WidgetsBinding.instance.addPostFrameCallback((_) {
          _controller.play();
          _controller.setPlaybackSpeed(1.7);
        });
      });

    _controller.addListener(() {
      if (_controller.value.isInitialized &&
          _controller.value.position >= _controller.value.duration) {
        if (mounted) {
          GoRouter.of(context).pushReplacement(AppRouters.onboarding);
        }
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child:
            _controller.value.isInitialized
                ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
                : Lottie.asset('assets/animation/loading.json', width: 150),
      ),
    );
  }
}
