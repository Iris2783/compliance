// ignore_for_file: file_names, use_key_in_widget_constructors
import 'package:compliance/Parts/SelfInvestment/Mobile/mobile_table1.dart';
import 'package:compliance/Parts/SelfInvestment/Mobile/mobile_table2.dart';
import 'package:compliance/Parts/SelfInvestment/Mobile/mobile_table3.dart';
import 'package:compliance/Parts/SelfInvestment/Mobile/mobile_table4.dart';
import 'package:compliance/Parts/TextParts/textparts0.dart';
import 'package:compliance/Parts/TextParts/textparts2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileSelfInvestment extends StatelessWidget {
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
          '社員投資',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: const Color.fromRGBO(133, 177, 77, 1),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 7.0, right: 7.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12.0),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: const Color.fromRGBO(133, 177, 77, 0.3),
                ),
                padding: const EdgeInsets.all(6.0),
                child: const Text(
                  '口座開設(野村證券口座)',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
              const SizedBox(height: 5.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  //TextParts0 : Parts > TextParts > textparts1TextParts0.dart モバイル及びタブレットにて箇条書きに使うインスタンス
                  TextParts0(
                    bulletPoint: '・',
                    textParts: [
                      TextPart(text: '入社後に証券口座を開設する場合は、', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black)),
                      TextPart(text: '野村證券かつ本店営業一部部店のみ', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: const Color.fromRGBO(220, 20, 60, 1), fontWeight: FontWeight.bold)),
                      TextPart(text: 'で開設が可能です。', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black)),
                    ],
                  ),
                  const SizedBox(height: 2),
                  TextParts0(
                    bulletPoint: '・',
                    textParts: [
                      TextPart(text: '野村證券の', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black)),
                      TextPart(text: 'ネット口座(N&C口座)も開設禁止', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: const Color.fromRGBO(220, 20, 60, 1), fontWeight: FontWeight.bold)),
                      TextPart(text: 'ですので注意して下さい。', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black)),
                    ],
                  ),
                  const SizedBox(height: 2),
                  TextParts0(
                    bulletPoint: '・',
                    textParts: [
                      TextPart(text: '開設の手続きを進めるには、', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black)),
                      TextPart(text: '事前に部長承認を取得', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: const Color.fromRGBO(220, 20, 60, 1), fontWeight: FontWeight.bold)),
                      TextPart(text: 'しなければいけません。', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black)),
                    ],
                  ),
                  const SizedBox(height: 2),
                  TextParts0(
                    bulletPoint: '・',
                    textParts: [
                      TextPart(text: '開設後は', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black)),
                      TextPart(text: '速やかに社員投資承認システムに登録', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: const Color.fromRGBO(220, 20, 60, 1), fontWeight: FontWeight.bold)),
                      TextPart(text: 'をして下さい。', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black)),
                    ],
                  ),
                  const SizedBox(height: 2),
                  TextParts0(
                    bulletPoint: '・',
                    textParts: [
                      TextPart(text: '入社前より他支店で野村證券口座を保有している場合は、', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black)),
                      TextPart(text: '速やかに本店営業一部部店に移管', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: const Color.fromRGBO(220, 20, 60, 1), fontWeight: FontWeight.bold)),
                      TextPart(text: 'して下さい。', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black)),
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
                  '他証券口座',
                  style: GoogleFonts.mPlusRounded1c(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  //TextParts0 : Parts > TextParts > textparts1TextParts0.dart モバイル及びタブレットにて箇条書きに使うインスタンス
                  TextParts0(
                    bulletPoint: '・',
                    textParts: [
                      TextPart(text: '入社後は、', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black)),
                      TextPart(text: '国内外を問わず他証券にて口座を開設することは禁止', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: const Color.fromRGBO(220, 20, 60, 1), fontWeight: FontWeight.bold)),
                      TextPart(text: 'されています。', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black)),
                    ],
                  ),
                  const SizedBox(height: 2),
                  TextParts0(
                    bulletPoint: '・',
                    textParts: [
                      TextPart(text: '入社前より保持している他証券口座については、', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black)),
                      TextPart(text: '国内外を問わず速やかに野村證券へ保有商品の移管手続きを実施', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: const Color.fromRGBO(220, 20, 60, 1), fontWeight: FontWeight.bold)),
                      TextPart(text: 'し、完了後には', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black)),
                      TextPart(text: '口座の閉鎖手続きを行なって下さい。', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: const Color.fromRGBO(220, 20, 60, 1), fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 2),
                  TextParts0(
                    bulletPoint: '・',
                    textParts: [
                      TextPart(text: '例外的に', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black)),
                      TextPart(text: 'やむを得ない事情', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: const Color.fromRGBO(220, 20, 60, 1), fontWeight: FontWeight.bold)),
                      TextPart(text: 'の場合は、', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black)),
                      TextPart(text: '部長承認のもと', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: const Color.fromRGBO(220, 20, 60, 1), fontWeight: FontWeight.bold)),
                      TextPart(text: '継続して他証券口座を保持することができます。', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black)),
                    ],
                  ),
                  const SizedBox(height: 2),
                  TextParts0(
                    bulletPoint: '・',
                    textParts: [
                      TextPart(text: 'やむを得ない事情とは', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black)),
                      TextPart(text: '野村證券に移管できない商品を保有している場合', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: const Color.fromRGBO(220, 20, 60, 1), fontWeight: FontWeight.bold)),
                      TextPart(text: 'や', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black)),
                      TextPart(text: '相続などのご家庭の事情', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: const Color.fromRGBO(220, 20, 60, 1), fontWeight: FontWeight.bold)),
                      TextPart(text: 'のことを指します。', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black)),
                    ],
                  ),
                  const SizedBox(height: 2),
                  TextParts0(
                    bulletPoint: '・',
                    textParts: [
                      TextPart(text: '継続して保持する場合は', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black)),
                      TextPart(text: '速やかに社員投資承認システムに登録(保有資産の残高証明登録も必須)', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: const Color.fromRGBO(220, 20, 60, 1), fontWeight: FontWeight.bold)),
                      TextPart(text: 'をして下さい。', style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: Colors.black)),
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
                  '口座関連早見表',
                  style: GoogleFonts.mPlusRounded1c(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 5),
              MobileTable1SI(), //口座関連早見表 Parts > SelfInvestment > Mobile > mobile_table1.dart
              TextParts2(
                bulletPoint2: '※',
                textParts2: [
                  TextPart2(
                      text: '野村證券(他支店)及び他証券口座は口座閉鎖手続きを進めるにあたって、事前承認のもと保有資産の売却のみ認められています。',
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
                  '家族関与口座',
                  style: GoogleFonts.mPlusRounded1c(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                '以下のいづれかに該当する場合は、ご家族の口座も野村證券にて管理する必要があります。',
                style: GoogleFonts.mPlusRounded1c(fontSize: 15),
              ),
              const SizedBox(height: 5),
              MobileTable2SI(), //家族関与口座に関する表 Parts > SelfInvestment > Mobile > mobile_table2.dart
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: const Color.fromRGBO(133, 177, 77, 0.3),
                ),
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  '口座登録情報の変更',
                  style: GoogleFonts.mPlusRounded1c(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                '口座登録情報に変更があった場合は、速やかに変更手続きを行なって下さい。'
                '以下の表はよく変更手続きが漏れている項目です。',
                style: GoogleFonts.mPlusRounded1c(fontSize: 15),
              ),
              const SizedBox(height: 5),
              MobileTable3SI(), //口座登録情報の変更漏れ例の表 Parts > SelfInvestment > Mobile > mobile_table3.dart
              TextParts2(
                bulletPoint2: '※',
                textParts2: [
                  TextPart2(
                      text: '変更手続きは本店営業一部部店に連絡して行なって下さい(連絡先が不明な場合は業務管理者に連絡して下さい)。',
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
                  '社員投資承認システム',
                  style: GoogleFonts.mPlusRounded1c(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 5),
              Text.rich(
                TextSpan(
                  text: '当該システムには保有している証券口座情報を正確に登録しなければいけません。\n以下の口座情報及び',
                  style: GoogleFonts.mPlusRounded1c(fontSize: 15),
                  children: <TextSpan>[
                    TextSpan(
                      text: '誓約の登録',
                      style: GoogleFonts.mPlusRounded1c(fontSize: 15, color: const Color.fromRGBO(220, 20, 60, 1), fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: 'も漏れなく実施してください。',
                      style: GoogleFonts.mPlusRounded1c(fontSize: 15),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              MobileTable4SI(), //社員投資承認システムへの登録内容表 Parts > SelfInvestment > Mobile > mobile_table4.dart
              TextParts2(
                bulletPoint2: '※',
                textParts2: [
                  TextPart2(text: '登録内容については定期的に検査をして相違がないかを確認しています。', style: GoogleFonts.mPlusRounded1c(fontSize: 12, color: const Color.fromRGBO(220, 20, 60, 1), fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
