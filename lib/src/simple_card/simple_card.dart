import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SimpleCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onClick;

  const SimpleCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: () {
            print("HELLO WORLD");
          },
          child: Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            padding:
                const EdgeInsets.only(left: 25, right: 25, bottom: 25, top: 15),
            child: const ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(
                Icons.add,
                size: 50,
              ),
              title: Text(
                "Cadastrar novo cartão",
                style: TextStyle(fontSize: 25),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text(
                  " **** *** *** ****",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward,
                size: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
