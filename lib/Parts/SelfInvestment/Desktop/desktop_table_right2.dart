// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';

class DesktopTableRight3SI extends StatelessWidget {
  final double cellWidth = 100.0;
  final Map<int, double> rowHeights = {
    0: 30.0,
    1: 45.0,
    2: 45.0,
    3: 45.0,
    4: 45.0,
    5: 45.0,
  }; //行の高さを指定

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const {
        0: FixedColumnWidth(200.0),
        1: FixedColumnWidth(330.0),
        2: FixedColumnWidth(330.0),
      }, //列の幅を指定
      border: TableBorder.all(),
      children: [
        buildTableRow([' ', '登録要否', '備考'],
            isHeader: true, height: rowHeights[0]),
        buildTableRow(['口座未保有', '必須', '保有していない旨の登録も必須'], height: rowHeights[1]),
        buildTableRow(['野村證券口座', '必須', '-'], height: rowHeights[2]),
        buildTableRow(['他証券口座', '必須', '保有資産の残高証明登録も必須'], height: rowHeights[3]),
        buildTableRow(['家族口座(関与有)', '必須', '-'], height: rowHeights[4]),
        buildTableRow(['家族口座(関与無)', '不要', '-'], height: rowHeights[5]),
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
