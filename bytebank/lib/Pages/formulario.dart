import 'package:bytebank/models/Contact.dart';
import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({Key? key}) : super(key: key);

  @override
  ContactFormState createState() => ContactFormState();
}

final _formKey = GlobalKey<FormState>();

class ContactFormState extends State<ContactForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _contaController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Novo Contato"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Nome Completo'),
                controller: _nameController,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Número da Conta'),
                keyboardType: TextInputType.number,
                controller: _contaController,
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      final String name = _nameController.text;
                      final int? conta = int.tryParse(_contaController.text);

                      final Contact contato = Contact(name, conta);

                      Navigator.pop(context, contato);
                    },
                    child: Text("Adicionar"),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
