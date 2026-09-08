import 'package:flutter/material.dart';

sealed class LangState {
  const LangState();
}

final class LangInitial extends LangState {
  const LangInitial();
}

final class LangLoading extends LangState {
  const LangLoading();
}

final class LangLoaded extends LangState {
  final Locale locale;

  const LangLoaded(this.locale);
}

final class LangError extends LangState {
  final String message;

  const LangError(this.message);
}