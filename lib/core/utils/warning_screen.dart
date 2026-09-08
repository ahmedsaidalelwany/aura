import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WarningScreen extends StatelessWidget {
  const WarningScreen({
    super.key,
    required this.title,
    required this.message,
    this.icon = Icons.warning_amber_rounded,
    this.actionLabel,
    this.onAction,
    this.secondaryActionLabel,
    this.onSecondaryAction,
  }
  );

  final String title;
  final String message;
  final IconData icon;

  final String? actionLabel;
  final VoidCallback? onAction;

  final String? secondaryActionLabel;
  final VoidCallback? onSecondaryAction;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 480),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon, size: 72.sp, color: colorScheme.error),
                  SizedBox(height: 24.h),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Text(
                    message,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                  if (actionLabel != null && onAction != null) ...[
                    SizedBox(height: 32.h),
                    SizedBox(
                      width: double.infinity,
                      child: FilledButton(
                        onPressed: onAction,
                        child: Text(actionLabel!),
                      ),
                    ),
                  ],
                  if (secondaryActionLabel != null &&
                      onSecondaryAction != null) ...[
                    SizedBox(height: 12.h),
                    TextButton(
                      onPressed: onSecondaryAction,
                      child: Text(secondaryActionLabel!),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
