import 'package:flutter/material.dart';

class CustomIconSearch extends StatelessWidget {
  const CustomIconSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.grey.withOpacity(0.1),
          ),
          child: const Center(
            child: Icon(Icons.search),
          ),
        );
  }
}