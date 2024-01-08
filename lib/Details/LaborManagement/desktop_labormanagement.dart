// ignore_for_file: file_names, use_key_in_widget_constructors
import 'package:compliance/Parts/LaborManagement/desktop_table_left1.dart';
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
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: const Color.fromRGBO(133, 177, 77, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 250.0, // 任意の長さに調整
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
                      text: TextSpan(
                        text: '・日に',
                        style: GoogleFonts.mPlusRounded1c(fontSize: 18, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: '6時間以上',
                            style: GoogleFonts.mPlusRounded1c(
                              fontSize: 18,
                              color: const Color.fromRGBO(220, 20, 60, 1),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'の時間外勤務をすることはできません。',
                            style: GoogleFonts.mPlusRounded1c(fontSize: 18, color: Colors.black),
                          ),
                          TextSpan(
                            text: '(フレックス対象者を除く)\n',
                            style: GoogleFonts.mPlusRounded1c(
                              fontSize: 18,
                              color: const Color.fromRGBO(220, 20, 60, 1),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: '・月に',
                            style: GoogleFonts.mPlusRounded1c(fontSize: 18, color: Colors.black),
                          ),
                          TextSpan(
                            text: '45時間以上(ソフトリミット30時間)',
                            style: GoogleFonts.mPlusRounded1c(
                              fontSize: 18,
                              color: const Color.fromRGBO(220, 20, 60, 1),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'の時間外勤務をすることはできません。\n',
                            style: GoogleFonts.mPlusRounded1c(fontSize: 18, color: Colors.black),
                          ),
                          TextSpan(
                            text: '・年に',
                            style: GoogleFonts.mPlusRounded1c(fontSize: 18, color: Colors.black),
                          ),
                          TextSpan(
                            text: '360時間以上',
                            style: GoogleFonts.mPlusRounded1c(
                              fontSize: 18,
                              color: const Color.fromRGBO(220, 20, 60, 1),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'の時間外勤務をすることはできません。\n',
                            style: GoogleFonts.mPlusRounded1c(fontSize: 18, color: Colors.black),
                          ),
                          TextSpan(
                            text: '・超過しそうな場合は、超過する前に速やかに',
                            style: GoogleFonts.mPlusRounded1c(fontSize: 18, color: Colors.black),
                          ),
                          TextSpan(
                            text: '特別延長申請',
                            style: GoogleFonts.mPlusRounded1c(
                              fontSize: 18,
                              color: const Color.fromRGBO(220, 20, 60, 1),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'の手続きを実施して下さい。\n',
                            style: GoogleFonts.mPlusRounded1c(fontSize: 18, color: Colors.black),
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
                        style: GoogleFonts.mPlusRounded1c(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '以下の表は法定労働時間の上限時間一覧です。\n'
                      'それぞれの上限時間をしっかりと認識し、適切な労働時間の徹底して下さい。',
                      style: GoogleFonts.mPlusRounded1c(fontSize: 18),
                    ),
                    const SizedBox(height: 8),
                    DesktopTableLeft1(),
                    Text(
                      '※月間に関しては年間360時間の上限時間を考慮すると、ソフトリミットの30時間が実質的な上限時間となります。\n',
                      style: GoogleFonts.mPlusRounded1c(fontSize: 14, color: const Color.fromRGBO(220, 20, 60, 1), fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: const Color.fromRGBO(133, 177, 77, 0.3),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '休日出勤',
                        style: GoogleFonts.mPlusRounded1c(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '休日出勤(土日、祝日)をする場合は、以下の点に留意して徹底して下さい。',
                      style: GoogleFonts.mPlusRounded1c(fontSize: 18),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '・休日出勤をする場合は、必ず事前にWAMSから申請して上席の承認を取得して下さい。\n'
                      '・6時間を超えて業務をする場合は、原則その出勤日を含む週に振替休日を取得して下さい。\n'
                      '・振替休日を取得しない場合は、法定時間外労働の計上及び出勤日数に影響が出ます。',
                      style: GoogleFonts.mPlusRounded1c(fontSize: 18),
                    ),
                    const SizedBox(height: 18),
                  ],
                ),
              ),
              const SizedBox(width: 18),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 250.0, // 任意の長さに調整
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
                      text: TextSpan(
                        text: '・日に',
                        style: GoogleFonts.mPlusRounded1c(fontSize: 18, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: '6時間以上',
                            style: GoogleFonts.mPlusRounded1c(
                              fontSize: 18,
                              color: const Color.fromRGBO(220, 20, 60, 1),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'の時間外勤務をすることはできません。',
                            style: GoogleFonts.mPlusRounded1c(fontSize: 18, color: Colors.black),
                          ),
                          TextSpan(
                            text: '(フレックス対象者を除く)\n',
                            style: GoogleFonts.mPlusRounded1c(
                              fontSize: 18,
                              color: const Color.fromRGBO(220, 20, 60, 1),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: '・月に',
                            style: GoogleFonts.mPlusRounded1c(fontSize: 18, color: Colors.black),
                          ),
                          TextSpan(
                            text: '45時間以上(ソフトリミット30時間)',
                            style: GoogleFonts.mPlusRounded1c(
                              fontSize: 18,
                              color: const Color.fromRGBO(220, 20, 60, 1),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'の時間外勤務をすることはできません。\n',
                            style: GoogleFonts.mPlusRounded1c(fontSize: 18, color: Colors.black),
                          ),
                          TextSpan(
                            text: '・年に',
                            style: GoogleFonts.mPlusRounded1c(fontSize: 18, color: Colors.black),
                          ),
                          TextSpan(
                            text: '360時間以上',
                            style: GoogleFonts.mPlusRounded1c(
                              fontSize: 18,
                              color: const Color.fromRGBO(220, 20, 60, 1),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'の時間外勤務をすることはできません。\n',
                            style: GoogleFonts.mPlusRounded1c(fontSize: 18, color: Colors.black),
                          ),
                          TextSpan(
                            text: '・超過しそうな場合は、超過する前に速やかに',
                            style: GoogleFonts.mPlusRounded1c(fontSize: 18, color: Colors.black),
                          ),
                          TextSpan(
                            text: '特別延長申請',
                            style: GoogleFonts.mPlusRounded1c(
                              fontSize: 18,
                              color: const Color.fromRGBO(220, 20, 60, 1),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'の手続きを実施して下さい。\n',
                            style: GoogleFonts.mPlusRounded1c(fontSize: 18, color: Colors.black),
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
                        style: GoogleFonts.mPlusRounded1c(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '以下の表は法定労働時間の上限時間一覧です。\n'
                      'それぞれの上限時間をしっかりと認識し、適切な労働時間の徹底して下さい。',
                      style: GoogleFonts.mPlusRounded1c(fontSize: 18),
                    ),
                    const SizedBox(height: 8),
                    DesktopTableLeft1(),
                    Text(
                      '※月間に関しては年間360時間の上限時間を考慮すると、ソフトリミットの30時間が実質的な上限時間となります。\n',
                      style: GoogleFonts.mPlusRounded1c(fontSize: 14, color: const Color.fromRGBO(220, 20, 60, 1), fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: const Color.fromRGBO(133, 177, 77, 0.3),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '休日出勤',
                        style: GoogleFonts.mPlusRounded1c(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '休日出勤(土日、祝日)をする場合は、以下の点に留意して徹底して下さい。',
                      style: GoogleFonts.mPlusRounded1c(fontSize: 18),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '・休日出勤をする場合は、必ず事前にWAMSから申請して上席の承認を取得して下さい。\n'
                      '・6時間を超えて業務をする場合は、原則その出勤日を含む週に振替休日を取得して下さい。\n'
                      '・振替休日を取得しない場合は、法定時間外労働の計上及び出勤日数に影響が出ます。',
                      style: GoogleFonts.mPlusRounded1c(fontSize: 18),
                    ),
                    const SizedBox(height: 18),
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
