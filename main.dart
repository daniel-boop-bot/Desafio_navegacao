import 'package:flutter/material.dart';
import 'package:login/home.dart';
import 'package:login/principal.dart';
void main() {
  runApp(
    MaterialApp(
      home: Login(),
    ),
  );
}

// Tela de Login
class Login extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      // Título da tela
      appBar: AppBar(
        title: Text('Login'),
      ),

      // Conteúdo da tela
      body: Padding(
        padding: EdgeInsets.all(20),

        child: Column(
          children: [

            // Título
            Text(
              'Acesso ao Sistema',
              style: TextStyle(fontSize: 25),
            ),

            SizedBox(height: 20),

            // Campo de e-mail
            TextField(
              decoration: InputDecoration(
                labelText: 'E-mail',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 10),

            // Campo de senha
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Senha',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),

            // Botão
            ElevatedButton(
              onPressed: () {
                print('Botão Entrar pressionado');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF1E8449),
                foregroundColor: Colors.white,
              ),
              child: Text('ENTRAR'),
            ),
          ],
        ),
      ),
    );
  }
}
