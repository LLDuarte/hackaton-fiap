import 'package:flutter/material.dart';
import 'package:hackaton_fiap_etapa2/design_system.dart';
import 'package:hackaton_fiap_etapa2/src/pages/structures/basic_structure_default_bar.dart';


class LoginPage extends StatefulWidget {
  static const String id = 'login';

  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return DesignSystem.blue;
      }
      return DesignSystem.blue;
    }

    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          extendBody: false,
          backgroundColor: Colors.transparent,
          body: Container(
              color: DesignSystem.lightGray,
              child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            width: 240,
                              'assets/images/logo.png'
                          ),
                          const SizedBox(height: 110.0),
                          Form(
                            key: _formKey,
                            child: Column(
                              children: <Widget>[
                                TextFormField(
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.mail_outline, color: DesignSystem.gray),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: DesignSystem.gray),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: DesignSystem.gray),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: DesignSystem.red),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: DesignSystem.gray),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    filled: true,
                                    fillColor: DesignSystem.white,
                                    hintText: 'Login',
                                    hintStyle: TextStyle(
                                        fontSize: 14.0,
                                        color: DesignSystem.gray,
                                        fontFamily: 'Outfit'
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Não se esqueça de seu login';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 20.0),
                                TextFormField(
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.lock_outline, color: DesignSystem.gray),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: DesignSystem.gray),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: DesignSystem.gray),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: DesignSystem.red),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: DesignSystem.gray),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    filled: true,
                                    fillColor: DesignSystem.white,
                                    hintText: 'Senha',
                                    hintStyle: TextStyle(
                                        fontSize: 14.0,
                                        color: DesignSystem.gray,
                                        fontFamily: 'Outfit'
                                    ),
                                  ),
                                  obscureText: true,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Não se esqueça de sua senha';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 10.0),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Checkbox(
                                          checkColor: Colors.white,
                                          fillColor: MaterialStateProperty.resolveWith(getColor),
                                          value: isChecked,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              isChecked = value!;
                                            });
                                          },
                                        ),
                                        Text(
                                            style: TextStyle(
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'Outfit',
                                                color: DesignSystem.black
                                            ),
                                            "Lembrar "
                                        )
                                      ],
                                    ),
                                    Text(
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Outfit',
                                            color: DesignSystem.blue
                                        ),
                                        "Esqueceu a senha?"
                                    )
                                  ],
                                ),
                                const SizedBox(height: 20.0),
                                SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushReplacementNamed(
                                          context,
                                          BasicStructureDefaultBar.id,
                                          arguments: BasicStructureDefaultBarArguments(
                                              page: 0
                                          ));
                                    },
                                    style: ElevatedButton.styleFrom(
                                        primary: DesignSystem.blue,
                                        elevation: 0.0,
                                        textStyle: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Outfit'
                                        )
                                    ),
                                    child: const Text('Entrar'),
                                  ),
                                ),
                              ],
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
