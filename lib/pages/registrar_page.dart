import 'package:chat/widgets/boton_azul.dart';
import 'package:chat/widgets/custom_input.dart';
import 'package:chat/widgets/labels.dart';
import 'package:chat/widgets/logo.dart';
import 'package:flutter/material.dart';

class RegistrarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF2F2F2),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
                height: MediaQuery.of(context).size.height * 0.9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Logo(
                      titulo: 'Registro',
                    ),
                    _Form(),
                    Labels(
                      ruta: 'login',
                      titulo: '¿Ya creaste tu cuenta?',
                      subtitulo: 'Ingresa ahora',
                    ),
                    Text('Términos y condiciones de uso',
                      style: TextStyle(
                          fontWeight: FontWeight.w200
                      ),
                    ),
                  ],
                )
            ),
          ),
        )
    );
  }
}



class _Form extends StatefulWidget {
  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {
  final nombreCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          CustomInput(
            icon: Icons.person_add_alt_outlined,
            placeholder: 'El nombre',
            isPassword: false,
            type: TextInputType.text,
            textController: nombreCtrl,
          ),
          CustomInput(
            icon: Icons.mail_outline,
            placeholder: 'El correo',
            type: TextInputType.emailAddress,
            textController: emailCtrl,
          ),
          CustomInput(
            icon: Icons.password_outlined,
            placeholder: 'La pass',
            isPassword: true,
            type: TextInputType.text,
            textController: passwordCtrl,
          ),
          Boton(text: 'Registrar', onPressed: () {}),
        ],
      ),
    );
  }
}