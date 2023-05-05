import 'package:flutter/material.dart';
import 'package:hackaton_fiap_etapa2/design_system.dart';

class TicketPage extends StatefulWidget {
  static const String id = 'ticket';

  const TicketPage({Key? key}) : super(key: key);

  @override
  State<TicketPage> createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  int _index = 0;
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          extendBody: false,
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            titleSpacing: 0,
            leading: BackButton(
                color: DesignSystem.gray
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
          body: Container(
              color: DesignSystem.lightGray,
              child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                      padding: const EdgeInsets.all(27.0),
                      child: Column(
                          children: [
                            Text(
                                style: TextStyle(
                                    fontSize: 40.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Outfit'
                                ),
                                textAlign: TextAlign.center,
                                "Ticket #10"
                            ),
                            Divider(),
                            const SizedBox(height: 22.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
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
                                Container(
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(Radius.circular(1000)),
                                      color: DesignSystem.blue
                                    ),
                                    padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
                                    height: 20.0,
                                    alignment: Alignment.center,
                                    child: Text(
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: DesignSystem.white,
                                          fontFamily: 'Outfit'
                                        ),
                                        "Em progresso")),
                              ],
                            ),
                            const SizedBox(height: 30.0),
                            Text(
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontFamily: 'Outfit'
                                ),
                                textAlign: TextAlign.center,
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ante enim, pretium non sapien quis, sagittis condimentum neque."
                            ),
                            const SizedBox(height: 30.0),
                            SizedBox(
                              height: 130, // card height
                              child: PageView.builder(
                                itemCount: 10,
                                controller: PageController(viewportFraction: 0.5),
                                onPageChanged: (int index) => setState(() => _index = index),
                                itemBuilder: (_, i) {
                                  return Transform.scale(
                                    scale: i == _index ? 1 : 0.9,
                                    child: Card(
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                      child: Center(
                                        child: Text(
                                          "Foto ${i + 1}",
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            const SizedBox(height: 30.0),
                            Container(
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                              ),
                              width: double.infinity,
                              height: 100,
                              alignment: Alignment.topLeft,
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Text(
                                      style: TextStyle(
                                        fontSize: 11.0,
                                        fontFamily: 'Outfit',
                                        color: DesignSystem.gray
                                      ),
                                      textAlign: TextAlign.left,
                                      "Resposta do atendente."
                                  ),
                                  SizedBox(
                                    height: 10.0, // card height
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Text(
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            fontFamily: 'Outfit'
                                        ),
                                        textAlign: TextAlign.center,
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ante enim, pretium non sapien quis, sagittis condimentum neque"
                                    ),
                                  )
                                ],
                              )
                            ),
                            Row(
                              children: [
                                Switch(
                                  // This bool value toggles the switch.
                                  value: light,
                                  activeColor: DesignSystem.blue,
                                  onChanged: (bool value) {
                                    // This is called when the user toggles the switch.
                                    setState(() {
                                      light = value;
                                    });
                                  },
                                ),
                                Text(
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'Outfit',
                                      color: DesignSystem.blue
                                    ),
                                    textAlign: TextAlign.center,
                                    "Este ticket foi resolvido?"
                                ),
                              ],
                            )
                          ]
                      ),
                  )
              )
          )
      ),
    );
  }

}
