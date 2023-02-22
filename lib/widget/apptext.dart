import 'package:flutter/material.dart';

Text text({text, color, bold, size}) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: size,
      fontWeight: bold,
    ),
  );
}