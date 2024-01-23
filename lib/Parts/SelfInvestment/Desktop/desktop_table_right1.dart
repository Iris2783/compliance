// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';

class DesktopTableRight1SI extends StatelessWidget {
  final double cellWidth = 100.0;
  final Map<int, double> rowHeights = {
    0: 40.0,
    1: 40.0,
    2: 40.0,
  }; //行の高さを指定

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const {
        0: FixedColumnWidth(120.0),
        1: FixedColumnWidth(740.0),
      }, //列の幅を指定
      border: TableBorder.all(),
      children: [
        buildTableRow(['投資決定', '社員が売買の如何に関わらず家族の取引の投資決定に関与する場合。'],
            height: rowHeights[0]),
        buildTableRow(['発注', '社員が家族の取引の発注に関与(取引の代替等)する場合。'],
            height: rowHeights[1]),
        buildTableRow(['受渡精算', '社員が家族の取引の受渡精算に関与する場合。'], height: rowHeights[2]),
      ],
    );
  }

  TableRow buildTableRow(List<String> rowData,
      {bool isHeader = false, double? height}) {
    return TableRow(
      children: rowData.asMap().entries.map(
        (entry) {
          final int columnIndex = entry.key;
          final String cellData = entry.value;
          return TableCell(
            child: SizedBox(
              height: height,
              child: isHeader
                  ? Container(
                      color: const Color.fromRGBO(133, 177, 77, 1),
                      width: cellWidth,
                      child: Center(
                        child: Text(
                          cellData,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    )
                  : Container(
                      color: (columnIndex == 0 && !isHeader)
                          ? const Color.fromRGBO(133, 177, 77, 1)
                          : null,
                      width: cellWidth,
                      height: height,
                      child: Center(
                        child: Text(
                          cellData,
                          style: TextStyle(
                            color: (columnIndex == 0 && !isHeader)
                                ? Colors.white
                                : Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
            ),
          );
        },
      ).toList(),
    );
  }
}
