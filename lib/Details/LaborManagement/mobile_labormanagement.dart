// ignore_for_file: file_names, use_key_in_widget_constructors
import 'package:compliance/Parts/TextParts/textparts0.dart';
import 'package:compliance/Parts/LaborManagement/Mobile/mobile_table1.dart';
import 'package:compliance/Parts/LaborManagement/Mobile/mobile_table2.dart';
import 'package:compliance/Parts/LaborManagement/Mobile/mobile_table3.dart';
import 'package:compliance/Parts/TextParts/textparts2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        title: const Text(
          '労務管理',
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  //TextParts0 : Parts > TextParts > textparts1TextParts0.dart モバイル及びタブレットにて箇条書きに使うインスタンス
                  TextParts0(
                    bulletPoint: '・',
                    textParts: [
                      TextPart(text: '日に', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black)),
                      TextPart(text: '6時間以上', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: const Color.fromRGBO(220, 20, 60, 1), fontWeight: FontWeight.bold)),
                      TextPart(text: 'の時間外勤務をすることはできません。', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black)),
                      TextPart(text: '(フレックス対象者を除く)', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: const Color.fromRGBO(220, 20, 60, 1), fontWeight: FontWeight.bold)),
                    ],
                  ),
                  TextParts0(
                    bulletPoint: '・',
                    textParts: [
                      TextPart(text: '月に', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black)),
                      TextPart(text: '45時間以上(ソフトリミット30時間)', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: const Color.fromRGBO(220, 20, 60, 1), fontWeight: FontWeight.bold)),
                      TextPart(text: 'の時間外勤務をすることはできません。', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black)),
                    ],
                  ),
                  TextParts0(
                    bulletPoint: '・',
                    textParts: [
                      TextPart(text: '年に', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black)),
                      TextPart(text: '360時間以上', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: const Color.fromRGBO(220, 20, 60, 1), fontWeight: FontWeight.bold)),
                      TextPart(text: 'の時間外勤務をすることはできません。', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black)),
                    ],
                  ),
                  TextParts0(
                    bulletPoint: '・',
                    textParts: [
                      TextPart(text: '超過しそうな場合は、超過する前に速やかに', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black)),
                      TextPart(text: '特別延長申請', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: const Color.fromRGBO(220, 20, 60, 1), fontWeight: FontWeight.bold)),
                      TextPart(text: 'の手続きを実施して下さい。', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black)),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  //TextParts2 : Parts > Textparts > textparts2.dart モバイル及びタブレットにて表に補足をつけるときに使うインスタンス
                  TextParts2(
                    bulletPoint2: '※',
                    textParts2: [
                      TextPart2(
                          text: '月間に関しては年間360時間の上限時間を考慮すると、ソフトリミットの30時間が実質的な上限となります。',
                          style: GoogleFonts.mPlusRounded1c(fontSize: 12, color: const Color.fromRGBO(220, 20, 60, 1), fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 20),
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
                    style: GoogleFonts.mPlusRounded1c(fontSize: 1),
                  ),
                  const SizedBox(height: 4),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      //TextParts0 : Parts > TextParts > textparts0.dart モバイル及びタブレットにて箇条書きに使うインスタンス
                      TextParts0(
                        bulletPoint: '・',
                        textParts: [
                          TextPart(text: '休日出勤をする場合は、必ず事前にWAMSから申請して上席の承認を取得して下さい。', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black)),
                        ],
                      ),
                      TextParts0(
                        bulletPoint: '・',
                        textParts: [
                          TextPart(text: '6時間を超えて業務をする場合は、原則その出勤日を含む週に振替休日を取得して下さい。', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black)),
                        ],
                      ),
                      TextParts0(
                        bulletPoint: '・',
                        textParts: [
                          TextPart(text: '振替休日を取得しない場合は、法定時間外労働及び出勤日数の計上に影響が出ます。', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black)),
                        ],
                      ),
                    ],
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      //TextParts0 : Parts > TextParts > textparts1TextParts0.dart モバイル及びタブレットにて箇条書きに使うインスタンス
                      TextParts0(
                        bulletPoint: '・',
                        textParts: [
                          TextPart(text: '月に', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black)),
                          TextPart(text: '80時間以上(ソフトリミット60時間)', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: const Color.fromRGBO(220, 20, 60, 1), fontWeight: FontWeight.bold)),
                          TextPart(text: 'の時間外勤務をすることはできません。', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black)),
                        ],
                      ),
                      TextParts0(
                        bulletPoint: '・',
                        textParts: [
                          TextPart(text: 'WAMSマネージャーは、原則として', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black)),
                          TextPart(text: '毎日WAMSの承認', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: const Color.fromRGBO(220, 20, 60, 1), fontWeight: FontWeight.bold)),
                          TextPart(text: 'を実施するようにして下さい。', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black)),
                        ],
                      ),
                      TextParts0(
                        bulletPoint: '・',
                        textParts: [
                          TextPart(text: '部下に対しては、その日の勤務実績を', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black)),
                          TextPart(text: '毎日申請させる', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: const Color.fromRGBO(220, 20, 60, 1), fontWeight: FontWeight.bold)),
                          TextPart(text: 'ように指導して下さい。', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black)),
                        ],
                      ),
                      TextParts0(
                        bulletPoint: '・',
                        textParts: [
                          TextPart(text: '部下の時間外勤務については、', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black)),
                          TextPart(text: '上限時間を超過させない', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: const Color.fromRGBO(220, 20, 60, 1), fontWeight: FontWeight.bold)),
                          TextPart(text: 'ように徹底して下さい。', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black)),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
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
                  //TextParts2 : Parts > Textparts > textparts2.dart モバイル及びタブレットにて表に補足をつけるときに使うインスタンス
                  TextParts2(
                    bulletPoint2: '※',
                    textParts2: [
                      TextPart2(
                          text: '月間80時間を超えた場合は、社内規定に則り医師との面談が義務付けられています。', style: GoogleFonts.mPlusRounded1c(fontSize: 12, color: const Color.fromRGBO(220, 20, 60, 1), fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 20),
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
            ],
          ),
        ),
      ),
    );
  }
}
