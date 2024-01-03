// ignore_for_file: file_names
import 'package:compliance/Details/Flextime.dart';
import 'package:compliance/Details/GNE.dart';
import 'package:compliance/Details/InformationManagement.dart';
import 'package:compliance/Details/LaborManagement.dart';
import 'package:compliance/Details/SafetyConfirmation.dart';
import 'package:compliance/Details/SelfInvestment.dart';
import 'package:compliance/Details/TakingLeave.dart';
import 'package:compliance/Details/WorkfromHome.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class TabletTopPage extends StatelessWidget {
  final List<String> complianceItems = [
    '労務管理',
    '社員投資',
    '情報管理',
    '休暇取得',
    '在宅勤務',
    'フレックスタイム制度',
    '受贈簿・社外交流簿',
    '安否確認システム',
  ];

  final double maxGridSize = 220.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'images/ComplianceHUB2.png',
            width: 40,
            height: 40,
          ),
        ),
        backgroundColor: const Color.fromRGBO(133, 174, 77, 1),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 16.0,
            runSpacing: 16.0,
            children: complianceItems.map(
              (item) {
                return GestureDetector(
                  onTap: () {
                    int index = complianceItems.indexOf(item);
                    navigateToSubPage(context, index);
                  },
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: maxGridSize,
                      maxHeight: maxGridSize,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromRGBO(133, 174, 77, 1),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                      color: const Color.fromRGBO(133, 177, 77, 0.5),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ).toList(),
          ),
        ),
      ),
    );
  }

  void navigateToSubPage(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LaborManagement(),
          ),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SelfInvestment(),
          ),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => InformationManagement(),
          ),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TakingLeave(),
          ),
        );
        break;
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WorkfromHome(),
          ),
        );
        break;
      case 5:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Flextime(),
          ),
        );
        break;
      case 6:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => GNE(),
          ),
        );
        break;
      case 7:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SafetyConfirmation(),
          ),
        );
        break;
    }
  }
}
