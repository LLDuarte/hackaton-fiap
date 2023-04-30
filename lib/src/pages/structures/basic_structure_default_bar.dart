import 'package:flutter/material.dart';
import 'package:hackaton_fiap_etapa2/src/pages/chat_page.dart';
import 'package:hackaton_fiap_etapa2/src/pages/home_page.dart';
import 'package:hackaton_fiap_etapa2/src/pages/new_ticket_page.dart';

import '../../../design_system.dart';
import '../tickets_page.dart';

class BasicStructureDefaultBar extends StatefulWidget {
  static String id = "home";

  BasicStructureDefaultBar({Key? key}) : super(key: key);

  @override
  _BasicStructureDefaultBarState createState() => _BasicStructureDefaultBarState();
}

class _BasicStructureDefaultBarState extends State<BasicStructureDefaultBar> {
  int _selectedIndex = 0;

  @override
  initState() {
    super.initState();
    _selectedIndex = 0;
  }

  onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      const HomePage(),
      const TicketsPage(),
      const ChatPage(),
    ];

    return SafeArea(
      child: Scaffold(
          extendBody: false,
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            titleSpacing: 0,
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Icon(Icons.person_outline_rounded, color: DesignSystem.gray),
            ),
            title: Text(
                style: TextStyle(
                  fontSize: 12.0,
                  fontFamily: 'Outfit',
                  color: DesignSystem.gray
                ),
                textAlign: TextAlign.center,
                "José Maria"
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.notifications_none_rounded, color: DesignSystem.gray),
                tooltip: 'Notificações',
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Você não possui notificações pendentes')));
                },
              ),
            ],
            backgroundColor: DesignSystem.white,
            elevation: 0,
          ),
          body: SafeArea(
            child: Center(
              child:  pages.elementAt(_selectedIndex),
            ),
          ),
          floatingActionButton: _selectedIndex != 2 ? FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(
                  context,
                  NewTicketPage.id,
              );
            },
            backgroundColor: DesignSystem.blue,
            child: const Icon(Icons.add, size: 35.0,),
          ) : Container(),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.airplane_ticket_outlined),
                label: 'Tickets',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_outline),
                label: 'Chat',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: DesignSystem.blue,
            onTap: onItemTapped,
          ),
      ),
    );
  }
}

