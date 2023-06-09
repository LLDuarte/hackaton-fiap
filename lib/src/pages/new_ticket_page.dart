import 'package:flutter/material.dart';
import 'package:hackaton_fiap_etapa2/design_system.dart';

class NewTicketPage extends StatefulWidget {
  static const String id = 'new-ticket';

  const NewTicketPage({Key? key}) : super(key: key);

  @override
  State<NewTicketPage> createState() => _NewTicketPageState();
}

class _NewTicketPageState extends State<NewTicketPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: false,
        resizeToAvoidBottomInset: false,
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      style: TextStyle(
                      fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Outfit'
                      ),
                        textAlign: TextAlign.center,
                        "Novo Ticket"
                  ),
                  const SizedBox(height: 22.0),
                  Expanded(
                    flex: 1,
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: DesignSystem.blue),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: DesignSystem.blue),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: DesignSystem.red),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: DesignSystem.white),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              filled: true,
                              fillColor: DesignSystem.white,
                              hintText: 'Categoria do ticket...',
                              hintStyle: TextStyle(
                                fontSize: 14.0,
                                color: DesignSystem.gray,
                                fontFamily: 'Outfit'
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some texto';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 20.0),
                          TextFormField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: DesignSystem.blue),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: DesignSystem.blue),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: DesignSystem.red),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: DesignSystem.white),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              filled: true,
                              fillColor: DesignSystem.white,
                              hintText: 'Número do pedido...',
                              hintStyle: TextStyle(
                                  fontSize: 14.0,
                                  color: DesignSystem.gray,
                                  fontFamily: 'Outfit'
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some texto';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 20.0),
                          TextFormField(
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: DesignSystem.blue),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: DesignSystem.blue),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: DesignSystem.red),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: DesignSystem.white),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              filled: true,
                              fillColor: DesignSystem.white,
                              hintText: 'Descreva brevemente o que aconteceu. Logo um\n de nossos atendentes resolverá seu problema...',
                              hintStyle: TextStyle(
                                  fontSize: 14.0,
                                  color: DesignSystem.gray,
                                  fontFamily: 'Outfit'
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some texto';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 20.0),
                          InkWell(
                            onTap: () {
                              print("Você incluirá fotos");
                            },
                            child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                                ),
                                width: double.infinity,
                                alignment: Alignment.topLeft,
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.cloud_upload_outlined,
                                      size: 48.0,
                                      color: DesignSystem.mediumGray
                                    ),
                                    const SizedBox(width: 25.0),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                fontFamily: 'Outfit',
                                                color: DesignSystem.mediumGray
                                            ),
                                            "Adicionar fotos"
                                        ),
                                        Text(
                                            style: TextStyle(
                                                fontSize: 12.0,
                                                fontFamily: 'Outfit',
                                                color: DesignSystem.mediumGray
                                            ),
                                            textAlign: TextAlign.center,
                                            "Tamanho máximo 10 MB, 5 fotos"
                                        )
                                      ],
                                    ),
                                  ],
                                )
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Processing Data')),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            primary: DesignSystem.blue,
                            elevation: 0.0,
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Outfit'
                            )
                        ),
                        child: const Text('Abrir ticket'),
                      ),
                    ),
                ],
              )
            )
          )
        )
      ),
    );
  }

}
