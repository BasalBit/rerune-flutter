import 'package:flutter/widgets.dart';

/// Allows the same app to run with bundled content and no delivery requests.
class DeliverySettings extends InheritedWidget {
  const DeliverySettings({
    super.key,
    required this.enabled,
    required super.child,
  });

  final bool enabled;

  static bool updatesEnabled(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<DeliverySettings>()?.enabled ??
      true;

  @override
  bool updateShouldNotify(DeliverySettings oldWidget) =>
      enabled != oldWidget.enabled;
}
