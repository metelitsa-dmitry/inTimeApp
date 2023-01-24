import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_time/time_set_feature/domain/usecases/theme_data_use_case/save_theme_data_use_case.dart';

import '../../../core/theme.dart';
import '../../domain/usecases/theme_data_use_case/get_design_type_use_case.dart';
import '../../domain/usecases/theme_data_use_case/get_theme_data_use_case.dart';
import '../../domain/usecases/theme_data_use_case/save_design_type_use_case.dart';

part 'bloc_theme_changer_event.dart';
part 'bloc_theme_changer_state.dart';
part 'bloc_theme_changer_bloc.freezed.dart';

class ThemeChangerBloc extends Bloc<ThemeChangerEvent, ThemeChangerState> {
  final GetThemeDataUseCase _getThemeData;
  final SaveThemeDataUseCase _saveThemeData;
  final GetDesignTypeUseCase _getDesignType;
  final SaveDesignTypeUseCase _saveDesignType;
  var currentTheme = 'lightTheme';
  var currentDesign = 'material';

  ThemeChangerBloc(this._getThemeData, this._saveThemeData, this._getDesignType,
      this._saveDesignType)
      : super(const ThemeChangerState.initial()){

    final lightTheme = CustomTheme.lightTheme;
    final lightThemeMaterial3 = CustomTheme.lightThemeMaterial3;
    final darkTheme = CustomTheme.darkTheme;
    final darkThemeMaterial3 = CustomTheme.darkThemeMaterial3;

    on<_Started>((event, emit) async {
      currentTheme = await _getThemeData() ?? 'lightTheme' ;
      currentDesign = await _getDesignType() ?? 'material';

      switch (currentTheme) {
        case 'lightTheme':
          {
            if (currentDesign == 'material') {
              emit(ThemeChangerState.changed(newThemeData: lightTheme));
            } else {
              emit(
                  ThemeChangerState.changed(newThemeData: lightThemeMaterial3));
            }
          }
          break;
        case 'darkTheme':
          {
            if (currentDesign == 'material') {
              emit(ThemeChangerState.changed(newThemeData: darkTheme));
            } else {
              emit(ThemeChangerState.changed(newThemeData: darkThemeMaterial3));
            }
          }
          break;
      }
    });

    on<_ChangeLightDarkThemeEvent>((event, emit) async {
      currentTheme = await _getThemeData() ?? 'lightTheme' ;
      currentDesign = await _getDesignType() ?? 'material';
        if (event.isDark) {
          currentTheme = 'darkTheme';
          await _saveThemeData('darkTheme');
          if (currentDesign == 'material3') {
            emit(ThemeChangerState.changed(newThemeData: darkThemeMaterial3));
          } else {
            emit(ThemeChangerState.changed(newThemeData: darkTheme));
          }
        } else {
          currentTheme = 'lightTheme';
          await _saveThemeData('lightTheme');
          if (currentDesign == 'material') {
            emit(ThemeChangerState.changed(newThemeData: lightTheme));
          } else {
            emit(ThemeChangerState.changed(newThemeData: lightThemeMaterial3));
          }
        }
    });

    on<_ChangeDesignThemeEvent>((event, emit) async {
      currentTheme = await _getThemeData() ?? 'lightTheme' ;
       currentDesign = await _getDesignType() ?? 'material';

        if (event.isM3) {
          currentDesign = 'material3';
          await _saveDesignType('material3');
          if (currentTheme == 'lightTheme') {
            emit(ThemeChangerState.changed(newThemeData: lightThemeMaterial3));
          } else {
            emit(ThemeChangerState.changed(newThemeData: darkThemeMaterial3));
          }
        } else {
          currentDesign = 'material';
          await _saveDesignType('material');
          if (currentTheme == 'lightTheme') {
            emit(ThemeChangerState.changed(newThemeData: lightTheme));
          } else {
            emit(ThemeChangerState.changed(newThemeData: darkTheme));
          }
        }

    });
  }
}
