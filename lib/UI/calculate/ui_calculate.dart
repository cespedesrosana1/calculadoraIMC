import 'package:flutter/material.dart';
import 'package:imc_flutter/widgets/my_text.dart';
import 'package:imc_flutter/widgets/widgets_calculater.dart';

import '../../widgets/my_button.dart';

class CalculatorUi extends StatefulWidget {
  const CalculatorUi({Key? key}) : super(key: key);

  @override
  State<CalculatorUi> createState() => _CalculatorUiState();
}

class _CalculatorUiState extends State<CalculatorUi> {
  TextEditingController _pesoController = TextEditingController();
  TextEditingController _alturaController = TextEditingController();
  String result = 'Resultado';
  double imc = 0.0;
  void calcular() {
    setState(() {
      double peso = double.parse(_pesoController.text);
      double altura = double.parse(_alturaController.text) / 100;
      imc = peso / (altura * altura);
      result = imc.toStringAsFixed(1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 900,
          margin: const EdgeInsets.only(
            top: 20,
          ),
          decoration: BoxDecoration(
            color: const Color.fromARGB(31, 228, 226, 226).withOpacity(0.5),
            borderRadius: const BorderRadius.all(
              Radius.circular(40),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                children: [
                   MyContainer(),
                ],
              ),
              MyTextInput(
                inputController: _pesoController,
                label: 'Peso en Kilogramo',
              ),
              MyTextInput(
                inputController: _alturaController,
                label: 'Altura',
              ),
              const SizedBox(
                height: 32,
              ),
              MyText(
                text: result.toString(),
              ),
              MyButton(
                press: () => calcular(),
                backgroundColor: Color.fromRGBO(10, 80, 97, 1).withOpacity(0.5),
                textButton: 'Calcular',
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        margin: const EdgeInsets.only(
          top: 20,
        ),
        decoration: BoxDecoration(
          color: Color.fromRGBO(10, 80, 97, 1).withOpacity(0.5),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(80),
          ),
        ));
  }
}
