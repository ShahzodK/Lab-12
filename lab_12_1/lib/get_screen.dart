import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
              stream:
              FirebaseFirestore.instance.collection('names').snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(
                    child: Text('Loading'),
                  );
                }
                return ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title:
                          Text('Name: ${snapshot.data?.docs[index]["names"]}'),
                    );
                  },
                );
              });
  }
}
