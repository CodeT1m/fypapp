import 'dart:typed_data';
import 'package:camera/camera.dart';

import 'package:flutter/widgets.dart';

// CameraImage img;
// Uint8List imageToByteListFloat32(
//     img.Image image, int inputSize, double mean, double std) {
//   var convertedBytes = Float32List(1 * inputSize * inputSize * 3);
//   var buffer = Float32List.view(convertedBytes.buffer);
//   int pixelIndex = 0;
//   for (var i = 0; i < inputSize; i++) {
//     for (var j = 0; j < inputSize; j++) {
//       var pixel = image.getPixel(j, i);
//       buffer[pixelIndex++] = (img.getRed(pixel) - mean) / std;
//       buffer[pixelIndex++] = (img.getGreen(pixel) - mean) / std;
//       buffer[pixelIndex++] = (img.getBlue(pixel) - mean) / std;
//     }
//   }
//   return convertedBytes.buffer.asUint8List();
// }

// Uint8List imageToByteListUint8(img.Image image, int inputSize) {
//   var convertedBytes = Uint8List(1 * inputSize * inputSize * 3);
//   var buffer = Uint8List.view(convertedBytes.buffer);
//   int pixelIndex = 0;
//   for (var i = 0; i < inputSize; i++) {
//     for (var j = 0; j < inputSize; j++) {
//       var pixel = image.getPixel(j, i);
//       buffer[pixelIndex++] = img.getRed(pixel);
//       buffer[pixelIndex++] = img.getGreen(pixel);
//       buffer[pixelIndex++] = img.getBlue(pixel);
//     }
//   }
//   return convertedBytes.buffer.asUint8List();
// }
