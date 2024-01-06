// ignore_for_file: file_names, use_key_in_widget_constructors
import 'package:compliance/Parts/LaborManagement/desktop_table_left1.dart';
import 'package:flutter/material.dart';

class DesktopLaborManagement extends StatelessWidget {
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
        backgroundColor: const Color.fromRGBO(133, 177, 77, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 245.0, // 任意の長さに調整
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color.fromRGBO(133, 177, 77, 1),
                            width: 5.0, // 下線の太さを指定
                          ),
                        ),
                      ),
                      child: const Text(
                        '非管理職向け(SAS以下)',
                        style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 18.0),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: const Color.fromRGBO(220, 20, 60, 1),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: const Text(
                        'ポイント',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 4.0),
                    RichText(
                      text: const TextSpan(
                        text: '・日に',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: '6時間以上',
                            style: TextStyle(fontSize: 18, color: Color.fromRGBO(220, 20, 60, 1), fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: 'の時間外勤務をすることはできない',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          TextSpan(
                            text: '(フレックス対象者を除く)\n',
                            style: TextStyle(fontSize: 18, color: Color.fromRGBO(220, 20, 60, 1), fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: '・月に',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          TextSpan(
                            text: '45時間以上(ソフトリミット30時間)',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromRGBO(220, 20, 60, 1), // 45時間以上の色
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'の時間外勤務をすることはできない\n',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          TextSpan(
                            text: '・年に',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          TextSpan(
                            text: '360時間以上',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromRGBO(220, 20, 60, 1), // 360時間以上の色
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'の時間外勤務をすることはできない\n',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          TextSpan(
                            text: '・超過しそうな場合は、超過する前に速やかに',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          TextSpan(
                            text: '特別延長申請',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromRGBO(220, 20, 60, 1), // 360時間以上の色
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'の手続きを実施して下さい\n',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    // const SizedBox(height: 8.0),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: const Color.fromRGBO(133, 177, 77, 0.3),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: const Text(
                        '【上限時間】法定時間外労働',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      '以下の表は法定労働時間の上限時間一覧です\n'
                      'それぞれの上限時間をしっかりと認識し、適切な労働時間の徹底して下さい',
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: 8),
                    DesktopTableLeft1(), //法定時間外の表を作成 別フォルダにソースコードあり Parts > LaborManagement > desktop_table_left1.dart
                    const Text(
                      '※月間に関しては年間360時間の上限時間を考慮すると、ソフトリミットの30時間が実質的な上限時間となります\n',
                      style: TextStyle(fontSize: 14, color: Color.fromRGBO(220, 20, 60, 1), fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8.0),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: const Color.fromRGBO(133, 177, 77, 0.3),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: const Text(
                        '休日出勤',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      '休日出勤(土日、祝日)をする場合は、以下の点を留意して徹底して下さい',
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      '・休日出勤をする場合は、必ず事前にWAMSから申請して上席の承認を取得して下さい\n'
                      '・6時間を超えて業務をする場合は、原則その出勤日を含む週に振替休日を取得して下さい\n'
                      '・振替休日を取得しない場合は、法定時間外労働の計上及び出勤日数に影響が出ます',
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: 18),
                    // Container(
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(8.0),
                    //     color: const Color.fromRGBO(133, 177, 77, 0.3),
                    //   ),
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: const Text(
                    //     '',
                    //     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    //   ),
                    // ),
                    // const SizedBox(height: 8),
                    // const Text(
                    //   'これらの法律については、各都道府県労働局雇用環境・均等部（室）による助言・指導・勧告によって、その履行が確保されます。',
                    //   style: TextStyle(fontSize: 18),
                    // ),
                  ],
                ),
              ),
              const SizedBox(width: 18), // 左右のContainerの間に隙間を追加
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18.0), // 上下左右の余白を調整
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.blue, // 下線の色を指定
                              width: 2.0, // 下線の太さを指定
                            ),
                          ),
                        ),
                        child: const Text(
                          '非管理職向け(SAS以下)',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      '労働基準法は、労働基準監督署による監督指導や罰則によって、その履行が確保されます。',
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: 18),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: const Color.fromRGBO(133, 177, 77, 0.3),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: const Text(
                        '労働契約法について',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      '労働契約法に定められた事項を含む民事上の紛争については、簡易・迅速に解決するための仕組として、「個別労働紛争解決システム」が用意されています。これは、労働問題への高い専門性を有する都道府県労働局において、無料で個別労働紛争の解決援助サービスを提供するもので、',
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      '・総合労働相談コーナーにおける情報提供・相談\n'
                      '・都道府県労働局長による助言・指導\n'
                      '・紛争調整委員会によるあっせん\n'
                      'があります。',
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: 18),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: const Color.fromRGBO(133, 177, 77, 0.3),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: const Text(
                        '男女雇用機会均等法、育児・介護休業法、パートタイム・有期雇用労働法、労働施策総合推進法について',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'これらの法律については、各都道府県労働局雇用環境・均等部（室）による助言・指導・勧告によって、その履行が確保されます。',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
