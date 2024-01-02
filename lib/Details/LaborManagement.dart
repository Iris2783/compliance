// LaborManagement.dart

import 'package:flutter/material.dart';

class LaborManagement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('労務管理'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '労働基準法について',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                '労働基準法は、労働基準監督署による監督指導や罰則によって、その履行が確保されます。',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                '労働契約法について',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                '労働契約法に定められた事項を含む民事上の紛争については、簡易・迅速に解決するための仕組として、「個別労働紛争解決システム」が用意されています。これは、労働問題への高い専門性を有する都道府県労働局において、無料で個別労働紛争の解決援助サービスを提供するもので、',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),
              Text(
                '・総合労働相談コーナーにおける情報提供・相談\n'
                '・都道府県労働局長による助言・指導\n'
                '・紛争調整委員会によるあっせん\n'
                'があります。',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                '男女雇用機会均等法、育児・介護休業法、パートタイム・有期雇用労働法、労働施策総合推進法について',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'これらの法律については、各都道府県労働局雇用環境・均等部（室）による助言・指導・勧告によって、その履行が確保されます。',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
