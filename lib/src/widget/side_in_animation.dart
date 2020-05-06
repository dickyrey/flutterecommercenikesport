import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

enum _AniProps { opacity, translateX }

class SideInAnimation extends StatelessWidget {
  final int delay;
  final Widget child;

  SideInAnimation({this.delay, this.child});

  @override
  Widget build(BuildContext context) {
    final tween = MultiTween<_AniProps>()
      ..add(_AniProps.opacity, Tween(begin: 0.0, end: 1.0))
      ..add(
        _AniProps.translateX,
        Tween(begin: 30.0, end: 0.0),
        Duration(milliseconds: 500),
        // Curves.fastOutSlowIn,
        Curves.easeIn,
      );

    return PlayAnimation<MultiTweenValues<_AniProps>>(
      delay: Duration(milliseconds: 300 * delay),
      duration: Duration(milliseconds: 500),
      tween: tween,
      child: child,
      // curve: ,
      builder: (context, child, value) => Opacity(
        opacity: value.get(_AniProps.opacity),
        child: Transform.translate(
          offset: Offset(value.get(_AniProps.translateX), 0),
          child: child,
        ),
      ),
    );
  }
}
