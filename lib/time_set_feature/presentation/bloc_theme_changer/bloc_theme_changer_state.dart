part of 'bloc_theme_changer_bloc.dart';

@freezed
class ThemeChangerState with _$ThemeChangerState {
  const factory ThemeChangerState.initial() = _Initial;
  const factory ThemeChangerState.changed({required ThemeData newThemeData}) = _ChangedThemeState;
}
