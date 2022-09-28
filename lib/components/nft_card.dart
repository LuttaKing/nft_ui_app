import 'package:flutter/material.dart';

class NftCard extends StatelessWidget {
  final String picpath;
  const NftCard({super.key, required this.picpath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.asset(
            picpath,
            fit: BoxFit.cover,
          )),
    );
  }
}
