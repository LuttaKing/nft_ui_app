import 'package:flutter/material.dart';
import 'package:nft_ui_app/components/nft_card.dart';

class TrendingTab extends StatelessWidget {
  const TrendingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  NftCard(picpath: 'lib/images/apiens_3.png',);
  }
}