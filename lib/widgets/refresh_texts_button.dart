import 'package:flutter/material.dart';
import 'package:rerune/rerune.dart';
import '../l10n/gen/app_localizations.dart';

class RefreshTextsButton extends StatefulWidget {
  const RefreshTextsButton({super.key});
  @override
  State<RefreshTextsButton> createState() => _RefreshTextsButtonState();
}

class _RefreshTextsButtonState extends State<RefreshTextsButton> {
  bool _refreshing = false;

  Future<void> _refresh() async {
    if (_refreshing) return;
    setState(() => _refreshing = true);
    String Function(AppLocalizations) message;
    try {
      final result = await ReRune.checkForUpdates();
      message = result.hasErrors
          ? (t) => t.refresh_error
          : result.hasUpdates
          ? (t) => t.welcome_refresh_state_success
          : (t) => t.refresh_current;
    } on Object {
      message = (t) => t.refresh_error;
    }
    if (!mounted) return;
    setState(() => _refreshing = false);
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(content: Text(message(AppLocalizations.of(context)!))),
      );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return OutlinedButton.icon(
      key: const ValueKey('refresh-texts'),
      onPressed: _refreshing ? null : _refresh,
      icon: _refreshing
          ? const SizedBox.square(
              dimension: 16,
              child: CircularProgressIndicator(strokeWidth: 2),
            )
          : const Icon(Icons.refresh_rounded, size: 18),
      label: Text(
        _refreshing ? t.welcome_refresh_state_checking : t.story_refresh_cta,
      ),
    );
  }
}
