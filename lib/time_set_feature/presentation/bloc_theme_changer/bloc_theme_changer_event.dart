part of 'bloc_theme_changer_bloc.dart';

@freezed
class ThemeChangerEvent with _$ThemeChangerEvent {
  const factory ThemeChangerEvent.started() = _Started;
  const factory ThemeChangerEvent.changeLightDarkTheme({required bool isDark}) = _ChangeLightDarkThemeEvent;
  const factory ThemeChangerEvent.changeDesignTheme({required bool isM3}) = _ChangeDesignThemeEvent;
  // const factory ThemeChangerEvent.changeDarkTheme() = _ChangeDarkThemeEvent;
  // const factory ThemeChangerEvent.changeDarkM3Theme() = _ChangeDarkM3ThemeEvent;
}
