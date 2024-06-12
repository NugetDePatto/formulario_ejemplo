import 'package:flutter/material.dart';
import 'package:formulario_ejemplo/widgets/custom_datetextbox.dart';
import 'package:formulario_ejemplo/widgets/custom_text.dart';
import 'package:formulario_ejemplo/widgets/custom_textfield.dart';

class CrearFormularioView extends StatefulWidget {
  const CrearFormularioView({super.key});

  @override
  State<CrearFormularioView> createState() => _CrearFormularioViewState();
}

class _CrearFormularioViewState extends State<CrearFormularioView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            // const Column(
            //   mainAxisSize: MainAxisSize.min,
            // ),
            const CustomText(texto: 'Conmorbilidades'),
            Row(
              children: [
                Expanded(
                  child: CustomDateTextBox(
                    nombre: 'Hipertension',
                    alCambiar: (DateTime dato) {},
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: CustomDateTextBox(
                    nombre: 'Diabetes',
                    alCambiar: (DateTime dato) {},
                  ),
                ),
              ],
            ),
            //aqui
            const SizedBox(height: 20),

            const CustomText(texto: 'Presión Arterial'),
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    nombre: 'Sistolica',
                    alCambiar: (String dato) {},
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: CustomTextField(
                    nombre: 'Diastolica',
                    alCambiar: (String dato) {},
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            //frecuencia cardiaca
            CustomTextField(
                nombre: 'Frecuencia cardiaca', alCambiar: (String valor) {}),
            //temperatura corporal
            const SizedBox(height: 20),

            CustomTextField(
                nombre: 'Temperatura Corporal', alCambiar: (String valor) {}),
            const SizedBox(height: 20),
            const CustomText(texto: 'IMC'),
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    nombre: 'Peso',
                    alCambiar: (String valor) {},
                  ),
                ),
                const SizedBox(width: 10),
                //TERMINA EL COMPINENETE
                Expanded(
                  child: CustomTextField(
                    nombre: 'Talla',
                    alCambiar: (String valor) {},
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            CustomTextField(
              nombre: 'Perimetro abdominal:',
              alCambiar: (String valor) {},
            ),

            const SizedBox(height: 20),

            const CustomText(texto: 'Glicemia Capilar'),

            CustomTextField(
              nombre: 'Azucar en la sangre',
              alCambiar: (String valor) {
                // niveldeazucar=double.parse(valor);
              },
            ),

            ///Hora de ultimos alimentos
            CustomDateTextBox(
              nombre: 'Hora de ultimos alimentos',
              alCambiar: (date) {},
            ),

            const SizedBox(height: 20),
            ////Frecuencia Valvular
            CustomDateTextBox(nombre: 'Frec. Valvular', alCambiar: (date) {}),
            const SizedBox(height: 20),

            ///Comentarios
            CustomDateTextBox(
              nombre: 'Comentarios',
              alCambiar: (date) {},
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
