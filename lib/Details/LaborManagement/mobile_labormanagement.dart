// ignore_for_file: file_names, use_key_in_widget_constructors
import 'package:flutter/material.dart';

class MobileLaborManagement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Center(
          child: Text(
            '労務管理',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: const Color.fromRGBO(133, 174, 77, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: const Color.fromRGBO(133, 174, 77, 0.3),
                ),
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  '労働基準法について',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                '労働基準法は、労働基準監督署による監督指導や罰則によって、その履行が確保されます。',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: const Color.fromRGBO(133, 174, 77, 0.3),
                ),
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  '労働契約法について',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                '労働契約法に定められた事項を含む民事上の紛争については、簡易・迅速に解決するための仕組として、「個別労働紛争解決システム」が用意されています。これは、労働問題への高い専門性を有する都道府県労働局において、無料で個別労働紛争の解決援助サービスを提供するもので、',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 8),
              const Text(
                '・総合労働相談コーナーにおける情報提供・相談\n'
                '・都道府県労働局長による助言・指導\n'
                '・紛争調整委員会によるあっせん\n'
                'があります。',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: const Color.fromRGBO(133, 174, 77, 0.3),
                ),
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  '男女雇用機会均等法、育児・介護休業法、パートタイム・有期雇用労働法、労働施策総合推進法について',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
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
