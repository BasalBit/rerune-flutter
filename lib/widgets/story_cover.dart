import 'dart:math' as math;
import 'package:flutter/material.dart';
import '../models/storybook.dart';

/// Original, resolution independent cover illustrations. No network assets.
class StoryCover extends StatelessWidget {
  const StoryCover({super.key, required this.id, this.child});
  final StoryId id;
  final Widget? child;
  @override
  Widget build(BuildContext context) => ClipRRect(
    borderRadius: BorderRadius.circular(22),
    child: CustomPaint(
      painter: _CoverPainter(id),
      child: child ?? const SizedBox.expand(),
    ),
  );
}

class _CoverPainter extends CustomPainter {
  const _CoverPainter(this.id);
  final StoryId id;
  @override
  void paint(Canvas canvas, Size size) {
    canvas.save();
    canvas.scale(size.width / 600, size.height / 400);
    final aspect = size.aspectRatio / 1.5;
    switch (id) {
      case StoryId.atlas:
        _atlas(canvas, aspect);
      case StoryId.lantern:
        _lantern(canvas, aspect);
      case StoryId.garden:
        _garden(canvas, aspect);
    }
    canvas.restore();
  }

  void _fill(Canvas c, int color) => c.drawRect(
    const Rect.fromLTWH(0, 0, 600, 400),
    Paint()..color = Color(color),
  );
  void _circle(
    Canvas c,
    Offset center,
    double radius,
    int color,
    double aspect,
  ) => c.drawOval(
    Rect.fromCenter(
      center: center,
      width: radius * 2 / aspect,
      height: radius * 2,
    ),
    Paint()..color = Color(color),
  );
  void _atlas(Canvas c, double aspect) {
    _fill(c, 0xFFD5DCC6);
    final line = Paint()
      ..color = const Color(0xFF708B79).withValues(alpha: .23)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.3;
    for (var i = 0; i < 15; i++) {
      c.drawOval(
        Rect.fromCenter(
          center: const Offset(484, 345),
          width: (94 + i * 13) * 2 / aspect,
          height: (94 + i * 13) * 2,
        ),
        line,
      );
    }
    _circle(c, const Offset(457, 157), 39, 0xFFD58C4E, aspect);
    c.drawPath(
      Path()
        ..moveTo(0, 290)
        ..cubicTo(140, 340, 207, 345, 348, 278)
        ..cubicTo(440, 231, 500, 254, 600, 267)
        ..lineTo(600, 400)
        ..lineTo(0, 400)
        ..close(),
      Paint()..color = const Color(0xFF547D79),
    );
    c.drawPath(
      Path()
        ..moveTo(0, 341)
        ..cubicTo(166, 379, 304, 265, 600, 319)
        ..lineTo(600, 400)
        ..lineTo(0, 400)
        ..close(),
      Paint()..color = const Color(0xFF244E52),
    );
    c.drawPath(
      Path()
        ..moveTo(0, 386)
        ..cubicTo(163, 315, 321, 397, 600, 354)
        ..lineTo(600, 400)
        ..lineTo(0, 400)
        ..close(),
      Paint()..color = const Color(0xFF163A41),
    );
  }

  void _lantern(Canvas c, double aspect) {
    _fill(c, 0xFF243E59);
    for (var i = 0; i < 28; i++) {
      _circle(
        c,
        Offset((i * 97.0 + 37) % 600, (i * 43.0 + 27) % 260),
        i % 3 == 0 ? 2 : 1,
        0xFFB4CBC9,
        aspect,
      );
    }
    _circle(c, const Offset(463, 113), 41, 0xFFF0D6A0, aspect);
    _circle(c, const Offset(449, 102), 37, 0xFF243E59, aspect);
    c.drawPath(
      Path()
        ..moveTo(0, 319)
        ..lineTo(141, 147)
        ..lineTo(311, 339)
        ..lineTo(463, 206)
        ..lineTo(600, 328)
        ..lineTo(600, 400)
        ..lineTo(0, 400)
        ..close(),
      Paint()..color = const Color(0xFF3B5A69),
    );
    c.drawPath(
      Path()
        ..moveTo(0, 368)
        ..lineTo(207, 222)
        ..lineTo(361, 373)
        ..lineTo(505, 285)
        ..lineTo(600, 355)
        ..lineTo(600, 400)
        ..lineTo(0, 400)
        ..close(),
      Paint()..color = const Color(0xFF182C42),
    );
    final glow = Paint()
      ..shader = const RadialGradient(
        colors: [Color(0x99F4B35A), Color(0x00F4B35A)],
      ).createShader(const Rect.fromLTWH(266, 266, 100, 100));
    c.drawCircle(const Offset(316, 316), 50, glow);
    c.drawRRect(
      RRect.fromRectAndRadius(
        const Rect.fromLTWH(307, 299, 18, 30),
        const Radius.circular(4),
      ),
      Paint()..color = const Color(0xFFF4BE69),
    );
    c.drawArc(
      const Rect.fromLTWH(308, 291, 16, 16),
      math.pi,
      math.pi,
      false,
      Paint()
        ..color = const Color(0xFFF4BE69)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2,
    );
  }

  void _garden(Canvas c, double aspect) {
    _fill(c, 0xFFE8CBAC);
    _circle(c, const Offset(468, 128), 69, 0xFFD99D7E, aspect);
    c.drawPath(
      Path()
        ..moveTo(0, 325)
        ..quadraticBezierTo(277, 244, 600, 318)
        ..lineTo(600, 400)
        ..lineTo(0, 400)
        ..close(),
      Paint()..color = const Color(0xFF698475),
    );
    for (var i = 0; i < 6; i++) {
      final x = 70.0 + i * 99;
      final y = 240.0 + (i % 3) * 37;
      c.drawPath(
        Path()
          ..moveTo(x, 410)
          ..quadraticBezierTo(x - 18, y + 50, x, y),
        Paint()
          ..color = const Color(0xFF34584E)
          ..style = PaintingStyle.stroke
          ..strokeWidth = 3,
      );
      for (var j = 0; j < 3; j++) {
        final leafY = y + 35 + j * 33;
        c.drawOval(
          Rect.fromCenter(center: Offset(x - 17, leafY), width: 35, height: 14),
          Paint()..color = const Color(0xFF34584E),
        );
        c.drawOval(
          Rect.fromCenter(
            center: Offset(x + 12, leafY + 15),
            width: 30,
            height: 13,
          ),
          Paint()..color = const Color(0xFF43695A),
        );
      }
      _circle(c, Offset(x, y), 11, 0xFFF2DFB6, aspect);
      _circle(c, Offset(x, y), 4, 0xFFBB7456, aspect);
    }
  }

  @override
  bool shouldRepaint(_CoverPainter oldDelegate) => oldDelegate.id != id;
}
