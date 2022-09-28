import 'package:flutter/material.dart';
import 'package:nft_ui_app/components/nft_card.dart';

class TopTab extends StatelessWidget {
  const TopTab({super.key});

  @override
  Widget build(BuildContext context) {
    return NftCard(
      picpath: 'lib/images/apiens_2.png',
    );
  }
}
