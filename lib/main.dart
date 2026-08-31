import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Demo Widgets',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplicacion para Cesar uwu'),
      ),
      body: SingleChildScrollView(
  padding: const EdgeInsets.symmetric(vertical: 24),
  child: Column(
    children: [
            const Icon(
              Icons.star,
              size: 60,
              color: Colors.amber,
            ),
            const SizedBox(height: 16),
            Image.network(
              'https://i.pinimg.com/originals/ad/8f/79/ad8f799a4fe1e7bc3eb333853f4ca1bb.gif',
              width: 150,
              height: 150,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(
                  Icons.broken_image,
                  size: 60,
                  color: Colors.grey,
                );
              },
            ),
            const SizedBox(height: 16),
            const Text(
              'Hola, este es mi primer texto',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 24),
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Escribe tu nombre',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor ingresa tu nombre';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Ya quedo enviado pa, jarvis hazme un huevito con salchicha pero en fa'),
                            ),
                          );
                        }
                      },
                      child: const Text('Enviar'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              height: 150,
              child: ListView(
                children: const [
                  ListTile(
                    leading: Icon(Icons.check_circle, color: Colors.green),
                    title: Text('goku super sayan guan'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check_circle, color: Colors.green),
                    title: Text('goku super sayan tiu'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check_circle, color: Colors.green),
                    title: Text('goku super sayan trui'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check_circle, color: Colors.green),
                    title: Text('goku super sayan for'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}