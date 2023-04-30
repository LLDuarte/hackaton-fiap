import 'package:flutter/material.dart';
import 'package:hackaton_fiap_etapa2/design_system.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                          fontSize: 42.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Outfit'
                      ),
                      textAlign: TextAlign.center,
                      "Bem-vindo de volta, José!"
                  ),
                  Text(
                      style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'Outfit'
                      ),
                      textAlign: TextAlign.center,
                      "Fique tranquilo, somos responsáveis pela sua total satisfação! "
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          print("teste");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: const BorderRadius.all(Radius.circular(8)),
                            border: Border.all(color: DesignSystem.blue)
                          ),
                          width: 110.0,
                          height: 75.0,
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                  style: TextStyle(
                                    fontSize: 32.0,
                                    fontFamily: 'Outfit',
                                    fontWeight: FontWeight.bold,
                                    color: DesignSystem.blue
                                  ),
                                  "4"
                              ),
                              Text(
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontFamily: 'Outfit',
                                    fontWeight: FontWeight.bold,
                                    color: DesignSystem.blue
                                  ),
                                  "Abertas"
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print("teste");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: const BorderRadius.all(Radius.circular(8)),
                              border: Border.all(color: DesignSystem.green)
                          ),
                          width: 110.0,
                          height: 75.0,
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                  style: TextStyle(
                                      fontSize: 32.0,
                                      fontFamily: 'Outfit',
                                      fontWeight: FontWeight.bold,
                                      color: DesignSystem.green
                                  ),
                                  "2"
                              ),
                              Text(
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontFamily: 'Outfit',
                                      fontWeight: FontWeight.bold,
                                      color: DesignSystem.green
                                  ),
                                  "Resolvidas"
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print("teste");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: const BorderRadius.all(Radius.circular(8)),
                              border: Border.all(color: DesignSystem.red)
                          ),
                          width: 110.0,
                          height: 75.0,
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                  style: TextStyle(
                                      fontSize: 32.0,
                                      fontFamily: 'Outfit',
                                      fontWeight: FontWeight.bold,
                                      color: DesignSystem.red
                                  ),
                                  "1"
                              ),
                              Text(
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontFamily: 'Outfit',
                                      fontWeight: FontWeight.bold,
                                      color: DesignSystem.red
                                  ),
                                  "Recusadas"
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
