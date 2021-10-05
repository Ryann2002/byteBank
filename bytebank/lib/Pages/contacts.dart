import 'package:bytebank/Pages/formulario.dart';
import 'package:flutter/material.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({Key? key}) : super(key: key);

  @override
  _ContactsScreenState createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contatos'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => ContactForm()))
              .then((contato) => (contato));
        },
        child: Icon(Icons.add),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: Text(
                'Ryan',
                style: TextStyle(fontSize: 24.0),
              ),
              subtitle: Text(
                '1000',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
