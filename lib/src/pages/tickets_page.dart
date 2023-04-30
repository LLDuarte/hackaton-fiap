import 'package:flutter/material.dart';
import 'package:hackaton_fiap_etapa2/design_system.dart';
import 'package:hackaton_fiap_etapa2/src/pages/ticket_page.dart';

class TicketsPage extends StatefulWidget {
  static const String id = 'tickets';

  const TicketsPage({Key? key}) : super(key: key);

  @override
  State<TicketsPage> createState() => _TicketsPageState();
}

class _TicketsPageState extends State<TicketsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          color: DesignSystem.lightGray,
          child: SizedBox(
            width: double.infinity, // set this
            child: Padding(
              padding: const EdgeInsets.all(27.0),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                      style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Outfit'
                      ),
                      textAlign: TextAlign.center,
                      "7 Tickets"
                  ),
                  const SizedBox(height: 22.0),
                  Expanded(
                    flex: 1,
                    child: ListView.separated(
                    separatorBuilder: (BuildContext context, int index) {
                      return const Divider();
                    },
                    itemCount: 3,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () { Navigator.pushNamed(context, TicketPage.id); },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 15.0,
                              height: 15.0,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: DesignSystem.blue,
                                  borderRadius: const BorderRadius.all(Radius.circular(1000)),
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Outfit'
                                    ),
                                    textAlign: TextAlign.left,
                                    "#10 Entrega atrasada"
                                ),
                                Text(
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontFamily: 'Outfit',
                                      color: DesignSystem.gray
                                    ),
                                    textAlign: TextAlign.left,
                                    "Atendente#1295"
                                ),
                              ],
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_horiz)
                            )
                          ],
                        ),
                      );
                    }),
                  )
                ]
              )
            )
          )
        )
    );
  }

}
