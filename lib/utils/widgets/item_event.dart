import 'dart:async';
import 'package:fitrat_parent2/utils/number_extension.dart';
import 'package:flutter/material.dart';

class ItemEvents extends StatelessWidget {
  final String? title;
  final String? time;
  final String? backgroundImage;
  final VoidCallback onTab;
  final bool isEvent;

  const ItemEvents({
    super.key,
    required this.title,
    this.backgroundImage,
    required this.time,
    required this.onTab,
    required this.isEvent,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        width: double.infinity,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: backgroundImage != null
              ? DecorationImage(
                  image: NetworkImage(backgroundImage!),
                  fit: BoxFit.cover,
                )
              : null,
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color(0xFF79F1A4).withOpacity(0.01),
                const Color(0xFF0E5CAD).withOpacity(0.01)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (!isEvent) ...[
                Expanded(
                  child: Text(
                    title ?? "No Comment",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'OutfitMedium',
                    ),
                  ),
                ),
              ],
              Spacer(),
              isEvent
                  ? Row(
                      children: [
                        Spacer(),
                        CountdownTimer(
                          dateTime: time ?? "",
                          // ... rest of your countdown timer properties
                        ),
                      ],
                    )
                  : EventDurationWidget(
                      dateTime: time ?? "",
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'OutfitMedium',
                      ),
                      backgroundColor:
                          Colors.white.withAlpha((0.16 * 255).toInt()),
                      borderRadius: BorderRadius.circular(16),
                    )
            ],
          ),
        ),
      ),
    );
  }
}

class CountdownTimer extends StatefulWidget {
  final String dateTime;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final EdgeInsets? padding;
  final BorderRadius? borderRadius;

  const CountdownTimer({
    super.key,
    required this.dateTime,
    this.textStyle,
    this.backgroundColor,
    this.padding,
    this.borderRadius,
  });

  @override
  State<CountdownTimer> createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  Timer? _timer;
  String _timeLeft = '';
  bool _isExpired = false;

  @override
  void initState() {
    super.initState();
    _startCountdown();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startCountdown() {
    _updateTimeLeft();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _updateTimeLeft();
    });
  }

  void _updateTimeLeft() {
    final targetDateTime = _parseTargetDateTime(widget.dateTime);
    if (targetDateTime == null) {
      setState(() {
        _timeLeft = 'Yaroqsiz sana';
        _isExpired = true;
      });
      return;
    }

    final now = DateTime.now();
    final difference = targetDateTime.difference(now);

    if (difference.isNegative) {
      setState(() {
        _timeLeft = "Muddati o‘tgan";
        _isExpired = true;
      });
      _timer?.cancel();
      return;
    }

    final days = difference.inDays;
    final hours = difference.inHours % 24;
    final minutes = difference.inMinutes % 60;
    final seconds = difference.inSeconds % 60;

    setState(() {
      if (days > 0) {
        _timeLeft =
            '${days}k ${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
      } else {
        _timeLeft =
            '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
      }
      _isExpired = false;
    });
  }

  DateTime? _parseTargetDateTime(String dateTimeString) {
    try {
      DateTime originalDateTime;

      if (dateTimeString.length == 10 && dateTimeString.contains('-')) {
        final parts = dateTimeString.split('-');
        final year = int.parse(parts[0]);
        final month = int.parse(parts[1]);
        final day = int.parse(parts[2]);

        originalDateTime = DateTime(year, month, day);
      } else {
        // Parse as full datetime string
        originalDateTime = DateTime.parse(dateTimeString);
      }

      final targetDateTime = DateTime(
        originalDateTime.year,
        originalDateTime.month,
        originalDateTime.day,
        9, // 9:00 AM
        0, // 0 minutes
        0, // 0 seconds
      );
      return targetDateTime;
    } catch (e) {
      print('Error parsing date: $e');
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.padding ?? const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: widget.backgroundColor ??
            Colors.white.withAlpha((0.16 * 255).toInt()),
        borderRadius: widget.borderRadius ?? BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            _isExpired ? Icons.timer_off : Icons.timer,
            size: 16,
            color: _isExpired ? Colors.red : Colors.white,
          ),
          const SizedBox(width: 6),
          Text(
            _timeLeft,
            style: widget.textStyle ??
                TextStyle(
                  color: _isExpired ? Colors.red : Colors.white,
                  fontSize: 14,
                  fontFamily: 'OutfitMedium',
                ),
          ),
        ],
      ),
    );
  }
}

class EventDurationWidget extends StatelessWidget {
  final String dateTime;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final EdgeInsets? padding;
  final BorderRadius? borderRadius;

  const EventDurationWidget({
    Key? key,
    required this.dateTime,
    this.textStyle,
    this.backgroundColor,
    this.padding,
    this.borderRadius,
  }) : super(key: key);

  Map<String, int> _calculateDuration() {
    try {
      final eventDate = DateTime.parse(dateTime);
      final now = DateTime.now();

      // Calculate the difference
      final difference = eventDate.difference(now);

      if (difference.isNegative) {
        return {'months': 0, 'weeks': 0, 'days': 0};
      }

      int totalDays = difference.inDays;

      int months = totalDays ~/ 30;
      totalDays = totalDays % 30;

      int weeks = totalDays ~/ 7;
      int days = totalDays % 7;

      return {
        'months': months,
        'weeks': weeks,
        'days': days,
      };
    } catch (e) {
      return {'months': 0, 'weeks': 0, 'days': 0};
    }
  }

  List<Widget> _buildDurationWidgets() {
    final duration = _calculateDuration();
    List<Widget> widgets = [];

    if (duration['months']! > 0) {
      widgets.add(_buildTimeUnit(
          duration['months']!, duration['months']! == 1 ? 'oy' : 'oy'));
    }

    if (duration['weeks']! > 0) {
      widgets.add(_buildTimeUnit(
          duration['weeks']!, duration['weeks']! == 1 ? 'hafta' : 'hafta'));
    }

    if (duration['days']! > 0) {
      widgets.add(_buildTimeUnit(
          duration['days']!, duration['days']! == 1 ? 'kun' : 'kun'));
    }

    if (widgets.isEmpty) {
      widgets.add(_buildTimeUnit(0, 'kun'));
    }

    return widgets;
  }

  Widget _buildTimeUnit(int value, String unit) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.white.withAlpha((0.16 * 255).toInt()),
        borderRadius: borderRadius ?? BorderRadius.circular(16),
      ),
      child: Text(
        '$value $unit',
        style: textStyle ??
            const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: 'OutfitMedium',
            ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final duration = _calculateDuration();
    final durationWidgets = _buildDurationWidgets();

    bool hasMonthsOrWeeks = duration['months']! > 0 || duration['weeks']! > 0;

    if (!hasMonthsOrWeeks) {
      return const SizedBox();
    }

    return Row(
      children: [
        const Spacer(),
        ...durationWidgets.asMap().entries.expand((entry) {
          final index = entry.key;
          final widget = entry.value;
          return [
            widget,
            if (index < durationWidgets.length - 1) ...[
              4.horizontal,
              const Text(
                ":",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              4.horizontal,
            ],
          ];
        }),
      ],
    );
  }
}
