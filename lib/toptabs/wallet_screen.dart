import 'package:ezplay/components/wallet_card.dart';
import 'package:ezplay/components/wallet_coins_card.dart';
import 'package:ezplay/components/wallet_transaction_history.dart';
import 'package:ezplay/components/wallet_withdraw_card.dart';
import 'package:flutter/material.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          iconTheme: IconThemeData(color: Colors.white, size: 30),
          title: Text(
            'My Wallet',
            style: TextStyle(color: Colors.white, fontSize: 25),
          )),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: Column(
          children: [
            WalletCard(),
            SizedBox(height: 10,),
            WithdrawCard(),
             SizedBox(height: 10,),
            WalletCoinsCard(),
             SizedBox(height: 20,),
             TransactionHistory()
          ],
        ),
      ),
    );
  }
}
