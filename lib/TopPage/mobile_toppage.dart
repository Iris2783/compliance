// ignore_for_file: file_names
import 'package:compliance/Details/GNE.dart';
import 'package:compliance/Details/InformationManagement.dart';
import 'package:compliance/Details/LaborManagement/desktop_labormanagement.dart';
import 'package:compliance/Details/LaborManagement/mobile_labormanagement.dart';
import 'package:compliance/Details/LaborManagement/tablet_labormanagement.dart';
import 'package:compliance/Details/SafetyConfirmation/desktop_safetyconfirmation.dart';
import 'package:compliance/Details/SafetyConfirmation/mobile_safetyconfirmation.dart';
import 'package:compliance/Details/SafetyConfirmation/tablet.safetyconfirmation.dart';
import 'package:compliance/Details/SelfInvestment/desktop_selfinvestment.dart';
import 'package:compliance/Details/SelfInvestment/mobile_selfinvestment.dart';
import 'package:compliance/Details/SelfInvestment/tablet_selfinvestment.dart';
import 'package:compliance/Details/WorkfromHome.dart';
import 'package:compliance/Responsive/responsive_layout.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class MobileTopPage extends StatelessWidget {
  final List<String> complianceItems = [
    '労務管理',
    '社員投資',
    '情報管理',
    '受贈簿・社外交流簿',
    '在宅勤務',
    '安否確認システム',
  ];

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
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: complianceItems.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                switch (index) {
                  case 0:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResponsiveLayout(
                          mobileScaffold: MobileLaborManagement(),
                          tabletScaffold: TabletLaborManagement(),
                          desktopScaffold: DesktopLaborManagement(),
                        ),
                      ),
                    );
                    break;
                  case 1:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResponsiveLayout(
                          mobileScaffold: MobileSelfInvestment(),
                          tabletScaffold: TabletSelfInvestment(),
                          desktopScaffold: DesktopSelfInvestment(),
                        ),
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
                        builder: (context) => GNE(),
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
                        builder: (context) => ResponsiveLayout(
                          mobileScaffold: MobileSafetyConfirmation(),
                          tabletScaffold: TabletSafetyConfirmation(),
                          desktopScaffold: DesktopSafetyConfirmation(),
                        ),
                      ),
                    );
                    break;
                }
              },
              child: Container(
                margin: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromRGBO(133, 174, 77, 1),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                  color: const Color.fromRGBO(133, 177, 77, 0.5),
                ),
                child: Center(
                  child: Text(
                    complianceItems[index],
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
