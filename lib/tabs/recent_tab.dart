import 'package:flutter/material.dart';
import 'package:nft_ui_app/components/nft_card.dart';

class RecentTab
 extends StatelessWidget {
  const RecentTab
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return  NftCard(picpath: 'lib/images/apiens_1.png',)
    ;
  }
}