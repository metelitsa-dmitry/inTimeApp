
part of '../setting_screen.dart';

class _ThemeSwitcher extends StatelessWidget {
  const _ThemeSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeBloc = context.read<ThemeChangerBloc>();
    final currentTheme = context.watch<ThemeChangerBloc>().currentTheme;
    final currentDesign = context.watch<ThemeChangerBloc>().currentDesign;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text(AppLocalizations.of(context).lightTheme),
          Switch(
              value: currentTheme == 'darkTheme' ? true : false ,
              onChanged: (bool value) {
                themeBloc.add(ThemeChangerEvent.changeLightDarkTheme(isDark: value));
              }),
          Text(AppLocalizations.of(context).darkTheme),
        ],),
        const Divider(thickness: 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Material'),
            Switch(
                value: currentDesign == 'material3' ? true : false,
                onChanged: (bool value) {
                  themeBloc.add(ThemeChangerEvent.changeDesignTheme(isM3: value));
                }),
            const Text('Material 3'),
          ],),
      ],
    );
  }
}
