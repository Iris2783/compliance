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
class DesktopTopPage extends StatelessWidget {
  final List<Map<String, dynamic>> complianceItems = [
    {'title': '労務管理', 'icon': Icons.work, 'color': Colors.green},
    {'title': '社員投資', 'icon': Icons.attach_money, 'color': Colors.green},
    {'title': '情報管理', 'icon': Icons.info, 'color': Colors.green},
    {'title': '受贈簿・社外交流簿', 'icon': Icons.contacts, 'color': Colors.green},
    {'title': '在宅勤務', 'icon': Icons.home, 'color': Colors.green},
    {'title': '安否確認システム', 'icon': Icons.check, 'color': Colors.green},
  ];

  final double maxGridSize = 260.0; // 大きさを少し大きく
  final double containerSpacing = 32.0; // 横の間隔を開ける
  final double verticalSpacing = 8.0; // 縦の間隔を狭める

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
          padding: EdgeInsets.symmetric(vertical: verticalSpacing),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (var i = 0; i < complianceItems.length; i += 3)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var j = i; j < i + 3 && j < complianceItems.length; j++)
                      ContainerWithHoverEffect(
                        title: complianceItems[j]['title'],
                        icon: complianceItems[j]['icon'],
                        color: complianceItems[j]['color'],
                        maxGridSize: maxGridSize,
                        containerSpacing: containerSpacing,
                        onTap: () {
                          int index = complianceItems.indexOf(complianceItems[j]);
                          navigateToSubPage(context, index);
                        },
                      ),
                  ],
                ),
            ],
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
      default:
        break;
    }
  }
}

class ContainerWithHoverEffect extends StatefulWidget {
  final String title;
  final IconData icon;
  final Color color;
  final double maxGridSize;
  final double containerSpacing;
  final Function onTap;

  ContainerWithHoverEffect({
    required this.title,
    required this.icon,
    required this.color,
    required this.maxGridSize,
    required this.containerSpacing,
    required this.onTap,
  });

  @override
  _ContainerWithHoverEffectState createState() => _ContainerWithHoverEffectState();
}

class _ContainerWithHoverEffectState extends State<ContainerWithHoverEffect> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => _toggleHover(true),
      onExit: (event) => _toggleHover(false),
      child: GestureDetector(
        onTap: () {
          widget.onTap();
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          width: isHovered ? widget.maxGridSize + 20 : widget.maxGridSize,
          height: isHovered ? widget.maxGridSize + 20 : widget.maxGridSize,
          margin: EdgeInsets.symmetric(horizontal: widget.containerSpacing),
          decoration: BoxDecoration(
            border: Border.all(
              color: isHovered ? const Color.fromRGBO(220, 20, 60, 1) : const Color.fromRGBO(133, 174, 77, 1),
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(12.0),
            color: const Color.fromRGBO(133, 177, 77, 0.5),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  widget.icon,
                  size: 64,
                  color: isHovered ? const Color.fromRGBO(220, 20, 60, 1) : widget.color,
                ),
                const SizedBox(height: 12),
                Text(
                  widget.title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: isHovered ? const Color.fromRGBO(220, 20, 60, 1) : Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _toggleHover(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
