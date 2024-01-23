// ignore_for_file: file_names, use_key_in_widget_constructors
import 'package:compliance/Parts/SelfInvestment/Desktop/desktop_table_left1.dart';
import 'package:compliance/Parts/SelfInvestment/Desktop/desktop_table_right1.dart';
import 'package:compliance/Parts/SelfInvestment/Desktop/desktop_table_right2.dart';
import 'package:compliance/Parts/SelfInvestment/Desktop/desktop_table_right3.dart';
import 'package:compliance/Parts/TextParts/textparts1.dart';
import 'package:compliance/Parts/TextParts/textparts3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DesktopSelfInvestment extends StatelessWidget {
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
            '社員投資',
            style: TextStyle(fontSize: 25, color: Colors.white),
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
                padding: const EdgeInsets.only(top: 20.0, left: 40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: const Color.fromRGBO(133, 177, 77, 0.3),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: const Text(
                        '口座開設(野村證券口座)',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        //TextParts1 : Parts > TextParts > textparts1.dart デスクトップにて箇条書きに使うインスタンス
                        TextParts1(
                          bulletPoint1: '・',
                          textParts1: [
                            TextPart1(
                                text: '入社後に証券口座を開設する場合は、',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                            TextPart1(
                                text: '野村證券かつ本店営業一部部店のみ',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20,
                                    color: const Color.fromRGBO(220, 20, 60, 1),
                                    fontWeight: FontWeight.bold)),
                            TextPart1(
                                text: 'で開設が可能です。',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                          ],
                        ),
                        const SizedBox(height: 3),
                        TextParts1(
                          bulletPoint1: '・',
                          textParts1: [
                            TextPart1(
                                text: '野村證券の',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                            TextPart1(
                                text: 'ネット口座(N&C口座)も開設禁止',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20,
                                    color: const Color.fromRGBO(220, 20, 60, 1),
                                    fontWeight: FontWeight.bold)),
                            TextPart1(
                                text: 'ですので注意して下さい。',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                          ],
                        ),
                        const SizedBox(height: 3),
                        TextParts1(
                          bulletPoint1: '・',
                          textParts1: [
                            TextPart1(
                                text: '開設の手続きを進めるには',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                            TextPart1(
                                text: '事前に部長承認を取得',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20,
                                    color: const Color.fromRGBO(220, 20, 60, 1),
                                    fontWeight: FontWeight.bold)),
                            TextPart1(
                                text: 'しなければいけません。',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                          ],
                        ),
                        const SizedBox(height: 3),
                        TextParts1(
                          bulletPoint1: '・',
                          textParts1: [
                            TextPart1(
                                text: '開設後は',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                            TextPart1(
                                text: '速やかに社員投資承認システムに登録',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20,
                                    color: const Color.fromRGBO(220, 20, 60, 1),
                                    fontWeight: FontWeight.bold)),
                            TextPart1(
                                text: 'をして下さい。',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                          ],
                        ),
                        const SizedBox(height: 3),
                        TextParts1(
                          bulletPoint1: '・',
                          textParts1: [
                            TextPart1(
                                text: '入社前より他支店で野村證券口座を保持している場合は、',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                            TextPart1(
                                text: '速やかに本店営業一部部店に移管',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20,
                                    color: const Color.fromRGBO(220, 20, 60, 1),
                                    fontWeight: FontWeight.bold)),
                            TextPart1(
                                text: 'して下さい。',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: const Color.fromRGBO(133, 177, 77, 0.3),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '他証券口座',
                        style: GoogleFonts.mPlusRounded1c(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        //TextParts1 : Parts > TextParts > textparts1.dart デスクトップにて箇条書きに使うインスタンス
                        TextParts1(
                          bulletPoint1: '・',
                          textParts1: [
                            TextPart1(
                                text: '入社後は',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                            TextPart1(
                                text: '国内外を問わず他証券にて口座を開設をすることは禁止',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20,
                                    color: const Color.fromRGBO(220, 20, 60, 1),
                                    fontWeight: FontWeight.bold)),
                            TextPart1(
                                text: 'されています。',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                          ],
                        ),
                        const SizedBox(height: 3),
                        TextParts1(
                          bulletPoint1: '・',
                          textParts1: [
                            TextPart1(
                                text: '入社前より保持している他証券口座については、',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                            TextPart1(
                                text: '国内外を問わず速やかに野村證券へ保有商品の移管手続きを実施',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20,
                                    color: const Color.fromRGBO(220, 20, 60, 1),
                                    fontWeight: FontWeight.bold)),
                            TextPart1(
                                text: 'し、完了後には',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                            TextPart1(
                                text: '口座の閉鎖手続き',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20,
                                    color: const Color.fromRGBO(220, 20, 60, 1),
                                    fontWeight: FontWeight.bold)),
                            TextPart1(
                                text: 'を行って下さい。',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                          ],
                        ),
                        const SizedBox(height: 3),
                        TextParts1(
                          bulletPoint1: '・',
                          textParts1: [
                            TextPart1(
                                text: '例外的に',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                            TextPart1(
                                text: 'やむを得ない事情',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20,
                                    color: const Color.fromRGBO(220, 20, 60, 1),
                                    fontWeight: FontWeight.bold)),
                            TextPart1(
                                text: 'の場合は、',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                            TextPart1(
                                text: '部長承認のもと',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20,
                                    color: const Color.fromRGBO(220, 20, 60, 1),
                                    fontWeight: FontWeight.bold)),
                            TextPart1(
                                text: '継続して他証券口座を保持することができます。',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                          ],
                        ),
                        const SizedBox(height: 3),
                        TextParts1(
                          bulletPoint1: '・',
                          textParts1: [
                            TextPart1(
                                text: 'やむを得ない事情とは、',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                            TextPart1(
                                text: '野村證券に移管できない商品を保有している場合',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20,
                                    color: const Color.fromRGBO(220, 20, 60, 1),
                                    fontWeight: FontWeight.bold)),
                            TextPart1(
                                text: 'や',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                            TextPart1(
                                text: '相続などのご家庭の事情',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20,
                                    color: const Color.fromRGBO(220, 20, 60, 1),
                                    fontWeight: FontWeight.bold)),
                            TextPart1(
                                text: 'のことを指します。',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                          ],
                        ),
                        const SizedBox(height: 3),
                        TextParts1(
                          bulletPoint1: '・',
                          textParts1: [
                            TextPart1(
                                text: '継続して保持する場合は、',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                            TextPart1(
                                text: '速やかに社員投資承認システムに登録(保有資産の残高証明登録も必須)',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20,
                                    color: const Color.fromRGBO(220, 20, 60, 1),
                                    fontWeight: FontWeight.bold)),
                            TextPart1(
                                text: 'をして下さい。',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 20, color: Colors.black)),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: const Color.fromRGBO(133, 177, 77, 0.3),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '口座関連早見表',
                        style: GoogleFonts.mPlusRounded1c(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 8),
                    DesktopTableLeft1SI(), //口座関連早見表 Parts > SelfInvestment > Desktop > desktop_table_left1.dart
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        //TextParts3 : Parts > Textparts > textparts3.dart デスクトップにて表に補足をつけるときに使うインスタンス
                        TextParts3(
                          bulletPoint3: '※',
                          textParts3: [
                            TextPart3(
                                text:
                                    '野村證券(他支店)及び他証券口座は口座閉鎖手続きを進めるにあたって、事前承認のもと保有資産の売却のみ認められています。',
                                style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 16,
                                    color: const Color.fromRGBO(220, 20, 60, 1),
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 60),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: const Color.fromRGBO(133, 177, 77, 0.3),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: const Text(
                        '家族関与口座',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('以下のいづれかに該当する場合は、ご家族の口座も野村證券にて管理する必要があります。',
                            style: GoogleFonts.mPlusRounded1c(fontSize: 20)),
                        const SizedBox(height: 5),
                        DesktopTableRight1SI(), //家族関与口座に関する表 Parts > SelfInvestment > Desktop > desktop_table_right1.dart
                      ],
                    ),
                    const SizedBox(height: 15),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: const Color.fromRGBO(133, 177, 77, 0.3),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '口座登録情報の変更',
                        style: GoogleFonts.mPlusRounded1c(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      '口座登録情報に変更があった場合は、速やかに変更手続きを行なって下さい。\n'
                      '以下の表はよく変更手続きが漏れている項目です。',
                      style: GoogleFonts.mPlusRounded1c(fontSize: 20),
                    ),
                    const SizedBox(height: 5),
                    DesktopTableRight2SI(), //口座登録情報の変更漏れ例の表 Parts > SelfInvestment > Desktop > desktop_table_right2.dart
                    //TextParts3 : Parts > Textparts > textparts3.dart デスクトップにて表に補足をつけるときに使うインスタンス
                    TextParts3(
                      bulletPoint3: '※',
                      textParts3: [
                        TextPart3(
                            text:
                                '変更手続きは本店営業一部部店に連絡して行なって下さい(連絡先が不明な場合は業務管理者に連絡して下さい)。',
                            style: GoogleFonts.mPlusRounded1c(
                                fontSize: 16,
                                color: const Color.fromRGBO(220, 20, 60, 1),
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: const Color.fromRGBO(133, 177, 77, 0.3),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '社員投資承認システム',
                        style: GoogleFonts.mPlusRounded1c(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text.rich(
                      TextSpan(
                        text:
                            '当該システムには保有している証券口座情報を正確に登録しなければいけません。\n以下の口座情報及び',
                        style: GoogleFonts.mPlusRounded1c(fontSize: 20),
                        children: <TextSpan>[
                          TextSpan(
                            text: '誓約の登録',
                            style: GoogleFonts.mPlusRounded1c(
                                fontSize: 20,
                                color: const Color.fromRGBO(220, 20, 60, 1),
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: 'も漏れなく実施してください。',
                            style: GoogleFonts.mPlusRounded1c(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                    DesktopTableRight3SI(), //社員投資承認システムへの登録内容表 Parts > SelfInvestment > Desktop > desktop_table_right3.dart
                    //TextParts3 : Parts > Textparts > textparts3.dart デスクトップにて表に補足をつけるときに使うインスタンス
                    TextParts3(
                      bulletPoint3: '※',
                      textParts3: [
                        TextPart3(
                            text: '登録内容については定期的に検査を実施して相違がないかを確認しています。',
                            style: GoogleFonts.mPlusRounded1c(
                                fontSize: 16,
                                color: const Color.fromRGBO(220, 20, 60, 1),
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
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
