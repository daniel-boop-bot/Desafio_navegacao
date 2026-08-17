import 'package:flutter/material.dart';
import 'package:login/principal.dart';

void main() {
  runApp(
    MaterialApp(
      home: Home(),
    ),
  );

}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // Conteúdo da tela
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // Título
            Text(
              'Bem-vindo ao Sistema',
              style: TextStyle(fontSize: 32),
            ),

            SizedBox(height: 20),

            // Botão
            ElevatedButton(
              onPressed: () {
                print('Botão Entrar pressionado');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Principal()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF1E8449),
                foregroundColor: Colors.white,
              ),
              child: Text('Principal'),
            )
          ],
        )
      ),
    );
  }
}
