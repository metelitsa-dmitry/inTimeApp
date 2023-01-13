// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `English`
  String get language {
    return Intl.message(
      'English',
      name: 'language',
      desc: 'current language',
      args: [],
    );
  }

  /// `Loading...`
  String get loading {
    return Intl.message(
      'Loading...',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `Clean the list`
  String get showDialogCleanListItemsTitle {
    return Intl.message(
      'Clean the list',
      name: 'showDialogCleanListItemsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Clear the entire list?`
  String get showDialogCleanListItemsText {
    return Intl.message(
      'Clear the entire list?',
      name: 'showDialogCleanListItemsText',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get add {
    return Intl.message(
      'Add',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Add Single Item`
  String get fabAddSingleItem {
    return Intl.message(
      'Add Single Item',
      name: 'fabAddSingleItem',
      desc: '',
      args: [],
    );
  }

  /// `Add multiple items`
  String get fabAddMultipleItems {
    return Intl.message(
      'Add multiple items',
      name: 'fabAddMultipleItems',
      desc: '',
      args: [],
    );
  }

  /// `Add multiple items`
  String get dlgAddMultipleItemsTitle {
    return Intl.message(
      'Add multiple items',
      name: 'dlgAddMultipleItemsTitle',
      desc: '',
      args: [],
    );
  }

  /// `How many to add?`
  String get dlgAddMultipleItemsHowMany {
    return Intl.message(
      'How many to add?',
      name: 'dlgAddMultipleItemsHowMany',
      desc: '',
      args: [],
    );
  }

  /// `Start number`
  String get dlgAddMultipleItemsStartNumber {
    return Intl.message(
      'Start number',
      name: 'dlgAddMultipleItemsStartNumber',
      desc: '',
      args: [],
    );
  }

  /// `Save As...`
  String get dlgSaveItemAs {
    return Intl.message(
      'Save As...',
      name: 'dlgSaveItemAs',
      desc: '',
      args: [],
    );
  }

  /// `Add...`
  String get dlgTextChips {
    return Intl.message(
      'Add...',
      name: 'dlgTextChips',
      desc: '',
      args: [],
    );
  }

  /// `Editing item`
  String get editing_item {
    return Intl.message(
      'Editing item',
      name: 'editing_item',
      desc: '',
      args: [],
    );
  }

  /// `Quote: `
  String get quote {
    return Intl.message(
      'Quote: ',
      name: 'quote',
      desc: '',
      args: [],
    );
  }

  /// `Illustration: `
  String get illustration {
    return Intl.message(
      'Illustration: ',
      name: 'illustration',
      desc: '',
      args: [],
    );
  }

  /// `Table: `
  String get table {
    return Intl.message(
      'Table: ',
      name: 'table',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message(
      'Ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Description:`
  String get description {
    return Intl.message(
      'Description:',
      name: 'description',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'be'),
      Locale.fromSubtags(languageCode: 'de'),
      Locale.fromSubtags(languageCode: 'es'),
      Locale.fromSubtags(languageCode: 'ja'),
      Locale.fromSubtags(languageCode: 'pl'),
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'uk'),
      Locale.fromSubtags(languageCode: 'zh'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
