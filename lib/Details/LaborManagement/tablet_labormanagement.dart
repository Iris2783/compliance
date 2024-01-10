// ignore_for_file: file_names, use_key_in_widget_constructors
import 'package:compliance/Parts/LaborManagement/Mobile/mobile_table1.dart';
import 'package:compliance/Parts/LaborManagement/Mobile/mobile_table2.dart';
import 'package:compliance/Parts/LaborManagement/Mobile/mobile_table3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabletLaborManagement extends StatelessWidget {
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
        title: const Text(
          '労務管理_Tablet',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: const Color.fromRGBO(133, 177, 77, 1),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 213.0, // 任意の長さに調整
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
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 12.0),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: const Color.fromRGBO(220, 20, 60, 1),
                ),
                padding: const EdgeInsets.all(6.0),
                child: const Text(
                  'ポイント',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              const SizedBox(height: 4.0),
              RichText(
                text: TextSpan(
                  text: '・日に',
                  style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: '6時間以上',
                      style: GoogleFonts.mPlusRounded1c(
                        fontSize: 15,
                        color: const Color.fromRGBO(220, 20, 60, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'の時間外勤務をすることはできま\n',
                      style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black),
                    ),
                    TextSpan(
                      text: '　せん。',
                      style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black),
                    ),
                    TextSpan(
                      text: '(フレックス対象者を除く)\n',
                      style: GoogleFonts.mPlusRounded1c(
                        fontSize: 15,
                        color: const Color.fromRGBO(220, 20, 60, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: '・月に',
                      style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black),
                    ),
                    TextSpan(
                      text: '45時間以上(ソフトリミット30時間)',
                      style: GoogleFonts.mPlusRounded1c(
                        fontSize: 15,
                        color: const Color.fromRGBO(220, 20, 60, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'の時間外\n',
                      style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black),
                    ),
                    TextSpan(
                      text: '　勤務をすることはできません。\n',
                      style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black),
                    ),
                    TextSpan(
                      text: '・年に',
                      style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black),
                    ),
                    TextSpan(
                      text: '360時間以上',
                      style: GoogleFonts.mPlusRounded1c(
                        fontSize: 15,
                        color: const Color.fromRGBO(220, 20, 60, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'の時間外勤務をすることはできま\n',
                      style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black),
                    ),
                    TextSpan(
                      text: '　せん。\n',
                      style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black),
                    ),
                    TextSpan(
                      text: '・超過しそうな場合は、超過する前に速やかに',
                      style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black),
                    ),
                    TextSpan(
                      text: '特別延\n',
                      style: GoogleFonts.mPlusRounded1c(
                        fontSize: 15,
                        color: const Color.fromRGBO(220, 20, 60, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: '　長申請',
                      style: GoogleFonts.mPlusRounded1c(
                        fontSize: 15,
                        color: const Color.fromRGBO(220, 20, 60, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'の手続きを実施して下さい。\n',
                      style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: const Color.fromRGBO(133, 177, 77, 0.3),
                ),
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  '【上限時間】法定時間外労働',
                  style: GoogleFonts.mPlusRounded1c(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                '以下の表は法定時間外労働の上限時間一覧です。\n'
                'それぞれの上限時間をしっかりと認識し、適切な労働時間の確保を徹底して下さい。',
                style: GoogleFonts.mPlusRounded1c(fontSize: 15),
              ),
              const SizedBox(height: 8),
              MobileTable1(), //非管理症向け法定時間外労働の表 Parts > LaborManagement > Mobile > mobile_table1.dart
              RichText(
                text: TextSpan(
                  text: '※月間に関しては年間360時間の上限時間を考慮すると、ソフトリ\n',
                  style: GoogleFonts.mPlusRounded1c(fontSize: 12, color: const Color.fromRGBO(220, 20, 60, 1), fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                      text: '　ミットの30時間が実質的な上限時間となります。\n',
                      style: GoogleFonts.mPlusRounded1c(fontSize: 12, color: const Color.fromRGBO(220, 20, 60, 1), fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: const Color.fromRGBO(133, 177, 77, 0.3),
                ),
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  '休日出勤',
                  style: GoogleFonts.mPlusRounded1c(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '休日出勤(土日、祝日)をする場合は、以下の点に留意して徹底して下さい。',
                style: GoogleFonts.mPlusRounded1c(fontSize: 15),
              ),
              const SizedBox(height: 4),
              Text(
                '・休日出勤をする場合は、必ず事前にWAMSから申請\n'
                '　して上席の承認を取得して下さい。\n'
                '・6時間を超えて業務をする場合は、原則その出勤日\n'
                '　を含む週に振替休日を取得して下さい。\n'
                '・振替休日を取得しない場合は、法定時間外労働及び\n'
                '　出勤日数の計上に影響が出ます。',
                style: GoogleFonts.mPlusRounded1c(fontSize: 15),
              ),
              const SizedBox(height: 20),
              //管理職パート
              Container(
                width: 183.0, // 任意の長さに調整
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color.fromRGBO(133, 177, 77, 1),
                      width: 5.0, // 下線の太さを指定
                    ),
                  ),
                ),
                child: const Text(
                  '管理職向け(VP以上)',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 12.0),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: const Color.fromRGBO(220, 20, 60, 1),
                ),
                padding: const EdgeInsets.all(6.0),
                child: const Text(
                  'ポイント',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              const SizedBox(height: 4.0),
              RichText(
                text: TextSpan(
                  text: '・月に',
                  style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: '80時間以上(ソフトリミット60時間)',
                      style: GoogleFonts.mPlusRounded1c(
                        fontSize: 15,
                        color: const Color.fromRGBO(220, 20, 60, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'の時間外\n',
                      style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black),
                    ),
                    TextSpan(
                      text: '　勤務をすることはできません。\n',
                      style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black),
                    ),
                    TextSpan(
                      text: '・WAMSマネージャーは、原則として',
                      style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black),
                    ),
                    TextSpan(
                      text: '毎日WAMSの承\n',
                      style: GoogleFonts.mPlusRounded1c(
                        fontSize: 15,
                        color: const Color.fromRGBO(220, 20, 60, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: '　認',
                      style: GoogleFonts.mPlusRounded1c(
                        fontSize: 15,
                        color: const Color.fromRGBO(220, 20, 60, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'を実施するようにしてください。\n',
                      style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black),
                    ),
                    TextSpan(
                      text: '・部下に対しては、その日の勤務実績を',
                      style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black),
                    ),
                    TextSpan(
                      text: '毎日申請させ\n',
                      style: GoogleFonts.mPlusRounded1c(
                        fontSize: 15,
                        color: const Color.fromRGBO(220, 20, 60, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: '　る',
                      style: GoogleFonts.mPlusRounded1c(
                        fontSize: 15,
                        color: const Color.fromRGBO(220, 20, 60, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'ように指導してください。\n',
                      style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black),
                    ),
                    TextSpan(
                      text: '・部下の時間外勤務については、',
                      style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black),
                    ),
                    TextSpan(
                      text: '上限時間を超過させ\n',
                      style: GoogleFonts.mPlusRounded1c(
                        fontSize: 15,
                        color: const Color.fromRGBO(220, 20, 60, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: '　ない',
                      style: GoogleFonts.mPlusRounded1c(
                        fontSize: 15,
                        color: const Color.fromRGBO(220, 20, 60, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'ように徹底してください。\n',
                      style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: const Color.fromRGBO(133, 177, 77, 0.3),
                ),
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '【上限時間】法定時間外労働',
                  style: GoogleFonts.mPlusRounded1c(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                '以下の表は法定時間外労働の上限時間一覧です。\n'
                'VP以上には月次のみ上限時間が設定され、特別延長申請は不可となります。',
                style: GoogleFonts.mPlusRounded1c(fontSize: 15),
              ),
              const SizedBox(height: 8),
              MobileTable2(), //管理職向け法定時間外労働の表 Parts > LaborManagement > Mobile > mobile_table2.dart
              RichText(
                text: TextSpan(
                  text: '※月間80時間を超えた場合は、社内規定に則り医師との面談が義\n',
                  style: GoogleFonts.mPlusRounded1c(fontSize: 12, color: const Color.fromRGBO(220, 20, 60, 1), fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                      text: '　務付けられています。\n',
                      style: GoogleFonts.mPlusRounded1c(fontSize: 12, color: const Color.fromRGBO(220, 20, 60, 1), fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: const Color.fromRGBO(133, 177, 77, 0.3),
                ),
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '基準値を考慮した総労働時間',
                  style: GoogleFonts.mPlusRounded1c(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '以下の表はそれぞれの月間基準労働時間に法定時間外労働の上限値を合算したものです。\n'
                'それぞれの上限時間を意識することで、月間の法定時間外労働の違反を防ぐことができます。',
                style: GoogleFonts.mPlusRounded1c(fontSize: 15),
              ),
              const SizedBox(height: 8),
              MobileTable3(), //管理職向け総労働時間表 Parts > LaborManagement > Mobile > mobile_table3.dart
            ],
          ),
        ),
      ),
    );
  }
}
