import 'package:flutter/material.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../presentation/helpers/theme_helper.dart';
import '../../../../presentation/providers/provider_utils.dart';
import '../utils/app_theme.dart';
import 'app_theme_provider.dart';

part 'current_app_theme_provider.g.dart';

@Riverpod(keepAlive: true)
class PlatformBrightness extends _$PlatformBrightness with NotifierUpdate {
  @override
  Brightness build() => WidgetsBinding.instance.window.platformBrightness;
}

@Riverpod(keepAlive: true)
AppTheme currentAppTheme(CurrentAppThemeRef ref) {
  final AppTheme? theme =
      ref.watch(appThemeControllerProvider.select((data) => data.valueOrNull));
  final platformBrightness = ref.watch(platformBrightnessProvider);
  return theme ?? getSystemTheme(platformBrightness);
}
