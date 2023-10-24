// ignore_for_file: public_member_api_docs, sort_constructors_first, sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:country_flags/country_flags.dart';

void main() {
  runApp(
    const MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Locale locale;

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            locale.title,
            style: const TextStyle(
              fontSize: 25.0,
              color: Colors.red,
            ),
          ),
        ),
        body: Container(
          color: Colors.black,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: CountryFlag.fromCountryCode(
                        'US',
                        height: 48,
                        width: 62,
                        borderRadius: 8,
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: CountryFlag.fromCountryCode(
                        'BR',
                        height: 48,
                        width: 62,
                        borderRadius: 8,
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100.0,
                ),
                Text(
                  locale.helloWorld,
                  style: const TextStyle(
                    fontSize: 25.0,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
