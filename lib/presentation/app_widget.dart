import 'package:crypto_flutter/application/bloc/coins_bloc.dart';
import 'package:crypto_flutter/injection.dart';
import 'package:crypto_flutter/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarColor: Colors.black,
          systemNavigationBarColor: Colors.black,
          systemNavigationBarIconBrightness: Brightness.dark),
    );
    return BlocProvider(
      create: (context) =>
          getIt<CoinsBloc>()..add(const CoinsEvent.getAllCoins()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          textTheme: GoogleFonts.latoTextTheme(),
          splashFactory: InkRipple.splashFactory,
          // color
          colorScheme: const ColorScheme.light(secondary: Colors.black),
          pageTransitionsTheme: const PageTransitionsTheme(
            builders: <TargetPlatform, PageTransitionsBuilder>{
              TargetPlatform.android: ZoomPageTransitionsBuilder(),
            },
          ),
        ),
        home: HomePage(),
      ),
    );
  }
}
