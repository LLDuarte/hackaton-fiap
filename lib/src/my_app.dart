import 'package:flutter/material.dart';
import 'package:hackaton_fiap_etapa2/src/pages/login_page.dart';
import 'package:hackaton_fiap_etapa2/src/pages/new_ticket_page.dart';
import 'package:hackaton_fiap_etapa2/src/pages/structures/basic_structure_default_bar.dart';
import 'package:hackaton_fiap_etapa2/src/pages/ticket_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fiapzon Mobile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: LoginPage.id,
      routes: {
        LoginPage.id: (context) => const LoginPage(),
        BasicStructureDefaultBar.id: (context) => BasicStructureDefaultBar(
            arguments: ModalRoute.of(context)?.settings.arguments as BasicStructureDefaultBarArguments
        ),        NewTicketPage.id: (context)  => const NewTicketPage(),
        TicketPage.id: (context)  => const TicketPage(),
        // MoviesScreen.id: (context) => const MoviesScreen(),
      },
    );
  }
}
