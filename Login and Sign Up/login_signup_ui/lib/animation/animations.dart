// ignore_for_file: use_key_in_widget_constructors, must_be_immutable
import 'package:flutter/material.dart';

class TopAnime extends StatelessWidget {
  Widget? child;
  Curve? curve;
  int seconds;
  int padding;

  TopAnime(this.seconds, this.padding, {required this.child, this.curve});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        child: child,
        tween: Tween<double>(begin: 0, end: 1),
        duration: Duration(seconds: seconds),
        curve: curve ?? Curves.ease,
        builder: (BuildContext context, double value, child) {
          return Opacity(
            opacity: value,
            child: Padding(
              padding: EdgeInsets.only(top: value * padding),
              child: this.child,
            ),
          );
        });
  }
}

class BottomAnime extends StatelessWidget {
  Widget? child;
  Curve? curve;
  int seconds;
  int padding;

  BottomAnime(this.seconds, this.padding, {required this.child, this.curve});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        child: child,
        tween: Tween<double>(begin: 0, end: 1),
        curve: curve ?? Curves.ease,
        duration: Duration(seconds: seconds),
        builder: (BuildContext context, double value, child) {
          return Opacity(
            opacity: value,
            child: Padding(
              padding: EdgeInsets.only(bottom: value * padding),
              child: this.child,
            ),
          );
        });
  }
}

class LeftAnime extends StatelessWidget {
  Widget? child;
  Curve? curve;
  int seconds;
  int padding;

  LeftAnime(this.seconds, this.padding, {required this.child, this.curve});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        child: child,
        tween: Tween<double>(begin: 0, end: 1),
        curve: curve ?? Curves.ease,
        duration: Duration(seconds: seconds),
        builder: (BuildContext context, double value, child) {
          return Opacity(
            opacity: value,
            child: Padding(
              padding: EdgeInsets.only(left: value * padding),
              child: this.child,
            ),
          );
        });
  }
}

class RightAnime extends StatelessWidget {
  Widget? child;
  Curve? curve;
  int seconds;
  int padding;

  RightAnime(this.seconds, this.padding, {required this.child, this.curve});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        child: child,
        tween: Tween<double>(begin: 0, end: 1),
        curve: curve ?? Curves.ease,
        duration: Duration(seconds: seconds),
        builder: (BuildContext context, double value, child) {
          return Opacity(
            opacity: value,
            child: Padding(
              padding: EdgeInsets.only(right: value * padding),
              child: this.child,
            ),
          );
        });
  }
}
