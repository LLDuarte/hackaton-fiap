import 'package:flutter/material.dart';
import 'package:hackaton_fiap_etapa2/design_system.dart';

class ChatPage extends StatelessWidget {
  static const String id = 'chat';

  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            color: DesignSystem.lightGray,
            child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Padding(
                    padding: const EdgeInsets.all(27.0),
                    child: Image.asset('assets/images/under-construction.png')
                )
            )
        )
    );
  }

}
