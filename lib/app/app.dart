import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/lang/app_localizations.dart';
import '../core/lang/manager/lang_cubit.dart';
import '../core/lang/manager/lang_state.dart';



class AuraApp extends StatelessWidget {
  const AuraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LangCubit()..loadLanguage(),
      child: BlocBuilder<LangCubit, LangState>(
        builder: (context, state) {
          final Locale locale = switch (state) {
            LangLoaded(:final locale) => locale,
            _ => AppLocalization.fallbackLocale,
          };

          return MaterialApp(
            debugShowCheckedModeBanner: false,

            locale: locale,

            supportedLocales: AppLocalization.supportedLocales,

            localizationsDelegates: const [
              // AppLocalizations.localizationsDelegates,
            ],

            theme: ThemeData(
              useMaterial3: true,
            ),

            home: const Scaffold(
              body: SizedBox.shrink(),
            ),
          );
        },
      ),
    );
  }
}