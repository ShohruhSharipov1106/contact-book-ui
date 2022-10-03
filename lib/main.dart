import 'package:contact_book_app/imports/imports.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (_) => SearchProvider(),
      ),
    ], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
        title: 'Contact Book App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          listTileTheme: ListTileThemeData(),
          scaffoldBackgroundColor: kWhiteBackground,
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            titleTextStyle: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18.0,
              fontFamily: "NunitoSans",
              color: kTextColor,
            ),
            elevation: 0,
            color: kWhiteBackground,
          ),
          textTheme: const TextTheme(
            headline1: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 12.0,
              fontFamily: "Avenir Next Font",
              color: kWhiteBackground,
            ),
            bodyText1: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16.0,
              fontFamily: "NunitoSans",
              color: kGrayScaleBody,
            ),
            bodyText2: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14.0,
              fontFamily: "NunitoSans",
              color: kBlackBackground,
            ),
            subtitle1: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12.0,
              fontFamily: "NunitoSans",
              color: kGrayScaleLabel,
            ),
          ),
        ),
        home: ContactsListPage());
  }
}
