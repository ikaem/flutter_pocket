import 'package:bloc_arch_kodeco/src/features/articles/data/data_sources/kodeco_api.dart';
import 'package:bloc_arch_kodeco/src/features/articles/data/repositories/articles_repository_kodeco.dart';
import 'package:bloc_arch_kodeco/src/features/articles/presentation/screens/articles_screen.dart';
import 'package:bloc_arch_kodeco/src/features/articles/presentation/stores/bloc/articles/articles_bloc.dart';
import 'package:bloc_arch_kodeco/src/presentation/widgets/bloc_provider/bloc_provider.dart';
import 'package:bloc_arch_kodeco/src/styles/app_colors.dart';
import 'package:bloc_arch_kodeco/src/utils/package/http/http_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final w700BitterFont = GoogleFonts.bitter(
      fontWeight: FontWeight.w700,
    );

    return BlocProvider(
      bloc: ArticlesBloc(
        articlesRepository: ArticlesRepositoryKodeco(
          api: KodecoAPI(
            httpWrapper: HttpWrapper(),
          ),
        ),
      ),
      child: MaterialApp(
        restorationScopeId: 'app',
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', ''), // English, no country code
        ],
        onGenerateTitle: (BuildContext context) =>
            AppLocalizations.of(context)!.appTitle,
        theme: ThemeData(
          primarySwatch: AppColors.black,
          primaryColor: AppColors.black,
          colorScheme: Theme.of(context).colorScheme.copyWith(
                primary: AppColors.green,
                secondary: AppColors.black,
              ),
          // note that both are grey
          scaffoldBackgroundColor: AppColors.grey,
          backgroundColor: AppColors.grey,
          primaryTextTheme: TextTheme(headline6: w700BitterFont),
          textTheme: TextTheme(
            subtitle1: w700BitterFont.apply(color: AppColors.black),
            headline6: w700BitterFont.apply(color: AppColors.black),
            bodyText2: TextStyle(color: AppColors.black),
          ),
        ),
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.dark,
        home: const ArticlesScreen(),
      ),
    );
  }
}
