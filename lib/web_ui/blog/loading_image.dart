import 'package:flutter/material.dart';
const _shimmerGradient = LinearGradient(
  colors: [
    Colors.blue,
    Colors.deepOrange,
  ],
  stops: [
    0.1,
    0.3,
    0.4,
  ],
  begin: Alignment(-1.0, -0.3),
  end: Alignment(1.0, 0.3),
  tileMode: TileMode.clamp,
);

Widget lodingImage(){
  return  SizedBox(
    height: 200,
    width: 200,
    child: ShaderMask(
      blendMode: BlendMode.srcATop,
      shaderCallback: (bounds) {
        return _shimmerGradient.createShader(bounds);
      },
    ),
  );
}