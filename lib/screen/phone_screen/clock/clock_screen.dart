import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';

class ClockScreen extends StatefulWidget {
  @override
  _ClockScreenState createState() => _ClockScreenState();
}

class _ClockScreenState extends State<ClockScreen> {
  late Timer _timer;
  DateTime _dateTime = DateTime.now();

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _dateTime = DateTime.now();
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: SizedBox(
          height: 300,
          width: 300,
          child: CustomPaint(
            painter: ClockPainter(_dateTime),
          ),
        ),
      ),
    );
  }
}

class ClockPainter extends CustomPainter {
  final DateTime dateTime;

  ClockPainter(this.dateTime);

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;
    final paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;

    // Draw clock circle
    canvas.drawCircle(center, radius, paint);

    // Draw clock hands
    final secondHandPaint = Paint()
      ..color = Colors.red
      ..strokeWidth = 2;

    final minuteHandPaint = Paint()
      ..color = Colors.white
      ..strokeWidth = 4;

    final hourHandPaint = Paint()
      ..color = Colors.white
      ..strokeWidth = 6;

    final secondHandX =
        center.dx + radius * 0.8 * cos((dateTime.second * 6 - 90) * pi / 180);
    final secondHandY =
        center.dy + radius * 0.8 * sin((dateTime.second * 6 - 90) * pi / 180);
    canvas.drawLine(center, Offset(secondHandX, secondHandY), secondHandPaint);

    final minuteHandX =
        center.dx + radius * 0.7 * cos((dateTime.minute * 6 - 90) * pi / 180);
    final minuteHandY =
        center.dy + radius * 0.7 * sin((dateTime.minute * 6 - 90) * pi / 180);
    canvas.drawLine(center, Offset(minuteHandX, minuteHandY), minuteHandPaint);

    final hourHandX = center.dx +
        radius *
            0.5 *
            cos(((dateTime.hour % 12) * 30 + dateTime.minute * 0.5 - 90) *
                pi /
                180);
    final hourHandY = center.dy +
        radius *
            0.5 *
            sin(((dateTime.hour % 12) * 30 + dateTime.minute * 0.5 - 90) *
                pi /
                180);
    canvas.drawLine(center, Offset(hourHandX, hourHandY), hourHandPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
