// ignore_for_file: file_names, use_key_in_widget_constructors
import 'package:compliance/Parts/LaborManagement/Desktop/desktop_table_left1.dart';
import 'package:compliance/Parts/LaborManagement/Desktop/desktop_table_right1.dart';
import 'package:compliance/Parts/LaborManagement/Desktop/desktop_table_right2.dart';
import 'package:compliance/Parts/TextParts/textparts1.dart';
import 'package:compliance/Parts/TextParts/textparts3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
        backgroundColor: const Color.fromRGBO(133, 177, 77, 1),
      ),
      body: SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start, //左右のContainerの開始位置を揃える。
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 25.0, left: 70.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 270.0, // 任意の長さに調整
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
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
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
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 4.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        //TextParts1 : Parts > TextParts > textparts1.dart デスクトップにて箇条書きに使うインスタンス
                        TextParts1(
                          bulletPoint1: '・',
                          textParts1: [
                            TextPart1(
                                text: '日に',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                            TextPart1(
                                text: '6時間以上',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20,
                                    color: const Color.fromRGBO(220, 20, 60, 1),
                                    fontWeight: FontWeight.bold)),
                            TextPart1(
                                text: 'の時間外勤務をすることはできません。',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                            TextPart1(
                                text: '(フレックス対象者を除く)',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20,
                                    color: const Color.fromRGBO(220, 20, 60, 1),
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        TextParts1(
                          bulletPoint1: '・',
                          textParts1: [
                            TextPart1(
                                text: '月に',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                            TextPart1(
                                text: '45時間以上(ソフトリミット30時間)',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20,
                                    color: const Color.fromRGBO(220, 20, 60, 1),
                                    fontWeight: FontWeight.bold)),
                            TextPart1(
                                text: 'の時間外勤務をすることはできません。',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                          ],
                        ),
                        TextParts1(
                          bulletPoint1: '・',
                          textParts1: [
                            TextPart1(
                                text: '年に',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                            TextPart1(
                                text: '360時間以上',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20,
                                    color: const Color.fromRGBO(220, 20, 60, 1),
                                    fontWeight: FontWeight.bold)),
                            TextPart1(
                                text: 'の時間外勤務をすることはできません。',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                          ],
                        ),
                        TextParts1(
                          bulletPoint1: '・',
                          textParts1: [
                            TextPart1(
                                text: '超過しそうな場合は、超過する前に速やかに',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                            TextPart1(
                                text: '特別延長申請',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20,
                                    color: const Color.fromRGBO(220, 20, 60, 1),
                                    fontWeight: FontWeight.bold)),
                            TextPart1(
                                text: 'の手続きを実施して下さい。',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: const Color.fromRGBO(133, 177, 77, 0.3),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '【上限時間】法定時間外労働',
                        style: GoogleFonts.mPlusRounded1c(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '以下の表は法定時間外労働の上限時間一覧です。\n'
                      'それぞれの上限時間をしっかりと認識し、適切な労働時間の確保を徹底して下さい。',
                      style: GoogleFonts.mPlusRounded1c(fontSize: 20),
                    ),
                    const SizedBox(height: 8),
                    DesktopTableLeft1LM(), //非管理症向け法定時間外労働の表 Parts > LaborManagement > Desktop > desktop_table_left1.dart
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        //TextParts3 : Parts > Textparts > textparts3.dart デスクトップにて表に補足をつけるときに使うインスタンス
                        TextParts3(
                          bulletPoint3: '※',
                          textParts3: [
                            TextPart3(
                                text:
                                    '月間に関しては年間360時間の上限時間を考慮すると、ソフトリミットの30時間が実質的な上限となります。',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 16,
                                    color: const Color.fromRGBO(220, 20, 60, 1),
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: const Color.fromRGBO(133, 177, 77, 0.3),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '休日出勤',
                        style: GoogleFonts.mPlusRounded1c(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '休日出勤(土日、祝日)をする場合は、以下の点に留意して徹底して下さい。',
                      style: GoogleFonts.mPlusRounded1c(fontSize: 20),
                    ),
                    const SizedBox(height: 4),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        //TextParts0 : Parts > TextParts > textparts0.dart デスクトップにて箇条書きに使うインスタンス
                        TextParts1(
                          bulletPoint1: '・',
                          textParts1: [
                            TextPart1(
                                text:
                                    '休日出勤をする場合は、必ず事前にWAMSから申請して上席の承認を取得して下さい。',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                          ],
                        ),
                        TextParts1(
                          bulletPoint1: '・',
                          textParts1: [
                            TextPart1(
                                text:
                                    '6時間を超えて業務をする場合は、原則その出勤日を含む週に振替休日を取得して下さい。',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                          ],
                        ),
                        TextParts1(
                          bulletPoint1: '・',
                          textParts1: [
                            TextPart1(
                                text: '振替休日を取得しない場合は、法定時間外労働及び出勤日数の計上に影響が出ます。',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            //管理職スタート
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 230.0, // 任意の長さに調整
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
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
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
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 4.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        //TextParts1 : Parts > TextParts > textparts1.dart デスクトップにて箇条書きに使うインスタンス
                        TextParts1(
                          bulletPoint1: '・',
                          textParts1: [
                            TextPart1(
                                text: '月に',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                            TextPart1(
                                text: '80時間以上(ソフトリミット60時間)',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20,
                                    color: const Color.fromRGBO(220, 20, 60, 1),
                                    fontWeight: FontWeight.bold)),
                            TextPart1(
                                text: 'の時間外勤務をすることはできません。',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                          ],
                        ),
                        TextParts1(
                          bulletPoint1: '・',
                          textParts1: [
                            TextPart1(
                                text: 'WAMSマネージャーは、原則として',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                            TextPart1(
                                text: '毎日WAMSの承認',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20,
                                    color: const Color.fromRGBO(220, 20, 60, 1),
                                    fontWeight: FontWeight.bold)),
                            TextPart1(
                                text: 'を実施するようにして下さい。',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                          ],
                        ),
                        TextParts1(
                          bulletPoint1: '・',
                          textParts1: [
                            TextPart1(
                                text: '部下に対しては、その日の勤務実績を',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                            TextPart1(
                                text: '毎日申請させる',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20,
                                    color: const Color.fromRGBO(220, 20, 60, 1),
                                    fontWeight: FontWeight.bold)),
                            TextPart1(
                                text: 'ように指導して下さい。',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                          ],
                        ),
                        TextParts1(
                          bulletPoint1: '・',
                          textParts1: [
                            TextPart1(
                                text: '部下の時間外勤務については、',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                            TextPart1(
                                text: '上限時間を超過させない',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20,
                                    color: const Color.fromRGBO(220, 20, 60, 1),
                                    fontWeight: FontWeight.bold)),
                            TextPart1(
                                text: 'ように徹底して下さい。',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: const Color.fromRGBO(133, 177, 77, 0.3),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '【上限時間】法定時間外労働',
                        style: GoogleFonts.mPlusRounded1c(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '以下の表は法定時間外労働の上限時間一覧です。\n'
                      'VP以上には月次のみ上限時間が設定され、特別延長申請は不可となります。',
                      style: GoogleFonts.mPlusRounded1c(fontSize: 20),
                    ),
                    const SizedBox(height: 8),
                    DesktopTableRight1LM(), //管理職向け法定時間外労働の表 Parts > LaborManagement > Desktop > desktop_table_right1.dart
                    //TextParts3 : Parts > Textparts > textparts3.dart デスクトップにて表に補足をつけるときに使うインスタンス
                    TextParts3(
                      bulletPoint3: '※',
                      textParts3: [
                        TextPart3(
                            text: '月間80時間を超えた場合は、社内規定に則り医師との面談が義務付けられています。',
                            style: GoogleFonts.mPlusRounded1c(
                                fontSize: 16,
                                color: const Color.fromRGBO(220, 20, 60, 1),
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: const Color.fromRGBO(133, 177, 77, 0.3),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '基準値を考慮した総労働時間',
                        style: GoogleFonts.mPlusRounded1c(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '以下の表はそれぞれの月間基準労働時間に法定時間外労働の上限値を合算したものです。\n'
                      'それぞれの上限時間を意識することで、月間の法定時間外労働の違反を防ぐことができます。',
                      style: GoogleFonts.mPlusRounded1c(fontSize: 20),
                    ),
                    const SizedBox(height: 8),
                    DesktopTableRight2LM(), //管理職向け総労働時間表 Parts > LaborManagement > Desktop > desktop_table_right2.dart
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
