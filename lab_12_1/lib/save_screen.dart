import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class SaveScreen extends StatelessWidget {
  final _usernameController = TextEditingController();

  Future<void> saveData(String username) async {
    await FirebaseFirestore.instance.collection('names').add({
      'names': username,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Center(
          child: StreamBuilder(
            stream: FirebaseFirestore.instance.collection('hello').snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const Center(
                  child: Text('Loading'),
                );
              }
              return Center(
                child: Text(snapshot.data!.docs[0]['hello'], style: TextStyle(fontSize: 25),),
              );
            },
          ),
        ),
        Center(
          child: Form(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: <Widget>[
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(8),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'name')
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  saveData(_usernameController.text);
                  Navigator.pushNamed(context, '/get');
                },
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20, color: Colors.white),
                  backgroundColor: Colors.lightBlue,
                ),
                child: Text('Save'),
              ),
            ]),
          )),
        )
      ],
    );
  }
}
