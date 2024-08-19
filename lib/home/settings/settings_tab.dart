import 'package:flutter/material.dart';

class SettingsTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}





// import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:news_app/home/settings/language_bottom_sheet.dart';
// import 'package:news_app/home/settings/theme_bottom_sheet.dart';
// import 'package:news_app/providers/app_config_provider.dart';
// import 'package:provider/provider.dart';
// import 'package:news_app/app_colors.dart';
// import 'package:news_app/providers/app_config_provider.dart';
// // import 'package:news_app/settings/language_bottom_sheet.dart';
// // import 'package:news_app/settings/theme_bottom_sheet.dart';
//
// class SettingsTab extends StatefulWidget {
//   @override
//   State<SettingsTab> createState() => _SettingsTabState();
// }
//
// class _SettingsTabState extends State<SettingsTab> {
//   @override
//   Widget build(BuildContext context) {
//     var provider = Provider.of<AppConfigProvider>(context);
//     return Container(
//       margin: EdgeInsets.all(15),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             AppLocalizations.of(context)!.language,
//             style: Theme.of(context).textTheme.headlineMedium?.copyWith(
//               color: provider.appTheme == ThemeMode.light
//                   ? AppColors.primaryLightColor
//                   : AppColors.whiteColor,
//             ),
//           ),
//           SizedBox(
//             height: 15,
//           ),
//           Center(
//             child: InkWell(
//               onTap: () {
//                 showLanguageBottomSheet();
//               },
//               child: Container(
//                 width: 300,
//                 padding: EdgeInsets.all(10),
//                 decoration: BoxDecoration(
//                     color: provider.appTheme == ThemeMode.light
//                         ? AppColors.whiteColor
//                         : AppColors.primaryLightColor,
//                     borderRadius: BorderRadius.circular(25)),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Icon(
//                       Icons.language_outlined,
//                       size: 30,
//                       color: provider.appTheme == ThemeMode.light
//                           ? AppColors.primaryLightColor
//                           : AppColors.primaryDarkColor,
//                     ),
//                     Text(
//                         provider.appLanguage == "en"
//                             ? AppLocalizations.of(context)!.english
//                             : AppLocalizations.of(context)!.arabic,
//                         style: Theme.of(context).textTheme.labelLarge?.copyWith(
//                           color: provider.appTheme == ThemeMode.light
//                               ? AppColors.primaryLightColor
//                               : AppColors.primaryDarkColor,
//                           fontWeight: FontWeight.bold,
//                         )
//                     ),
//                     SizedBox(
//                       width: 40,
//                     ),
//                     Icon(
//                       Icons.keyboard_arrow_down_rounded,
//                       size: 30,
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 100,
//           ),
//           ///theme
//           Text(
//             AppLocalizations.of(context)!.theme,
//             style: Theme.of(context).textTheme.headlineMedium?.copyWith(
//               color: provider.appTheme == ThemeMode.light
//                   ? AppColors.primaryLightColor
//                   : AppColors.whiteColor,
//             ),
//           ),
//           SizedBox(
//             height: 15,
//           ),
//           Center(
//             child: InkWell(
//               onTap: () {
//                 showThemeBottomSheet();
//               },
//               child: Container(
//                 width: 300,
//                 padding: EdgeInsets.all(10),
//                 decoration: BoxDecoration(
//                     color: provider.appTheme == ThemeMode.light
//                         ? AppColors.whiteColor
//                         : AppColors.primaryLightColor,
//                     borderRadius: BorderRadius.circular(25)),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Icon(
//                       Icons.language_outlined,
//                       size: 30,
//                       color: provider.appTheme == ThemeMode.light
//                           ? AppColors.primaryLightColor
//                           : AppColors.primaryDarkColor,
//                     ),
//                     Text(provider.appTheme == ThemeMode.light
//                         ? AppLocalizations.of(context)!.light
//                         : AppLocalizations.of(context)!.dark,
//                         style: Theme.of(context).textTheme.labelLarge?.copyWith(
//                           color: provider.appTheme == ThemeMode.light
//                               ? AppColors.primaryLightColor
//                               : AppColors.primaryDarkColor,
//                           fontWeight: FontWeight.bold,
//                         )
//                     ),
//                     SizedBox(
//                       width: 40,
//                     ),
//                     Icon(
//                       Icons.keyboard_arrow_down_rounded,
//                       size: 30,
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: MediaQuery.of(context).size.height * 0.15,
//           ),
//           ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 ///width  ///height
//                 fixedSize: Size(MediaQuery.of(context).size.width * 0.500,
//                     MediaQuery.of(context).size.height * 0.06),
//                 backgroundColor: provider.appTheme == ThemeMode.light
//                     ? AppColors.primaryLightColor
//                     : AppColors.primaryLightColor,
//               ),
//               onPressed: () {
//                 provider.saveDataLocalization();
//                 setState(() {});
//               },
//               child: FittedBox(
//                 fit: BoxFit.contain,
//                 child: Text(
//                   AppLocalizations.of(context)!.save_changes,
//                   style: Theme.of(context).textTheme.titleMedium?.copyWith(
//                       color: provider.appTheme == ThemeMode.light
//                           ? AppColors.whiteColor
//                           : AppColors.primaryDarkColor,
//                       fontSize: 20
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//               )
//           )
//         ],
//       ),
//     );
//   }
//
//   void showLanguageBottomSheet() {
//     showModalBottomSheet(
//         context: context,
//         builder: (context) => LanguageBottomSheet());
//   }
//
//   void showThemeBottomSheet() {
//     showModalBottomSheet(
//         context: context,
//         builder: (context) => ThemeBottomSheet());
//   }
// }
