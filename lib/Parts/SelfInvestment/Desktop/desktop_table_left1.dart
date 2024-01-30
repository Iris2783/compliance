// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';

class DesktopTableLeft1SI extends StatelessWidget {
  final double cellWidth = 100.0;
  final Map<int, double> rowHeights = {
    0: 30.0,
    1: 50.0,
    2: 50.0,
    3: 50.0,
  }; //行の高さを指定

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const {
        0: FixedColumnWidth(180.0),
        1: FixedColumnWidth(235.0),
        2: FixedColumnWidth(235.0),
        3: FixedColumnWidth(235.0),
      }, //列の幅を指定
      border: TableBorder.all(),
      children: [
        buildTableRow([' ', '口座開設', '口座保持', '取引'],
            isHeader: true, height: rowHeights[0]),
        buildTableRow(['野村證券(本店)', '○', '○', '○(制限あり)'], height: rowHeights[1]),
        buildTableRow(['野村證券(他支店)', '×', '×', '×'], height: rowHeights[2]),
        buildTableRow(['他証券口座', '× (例外あり)', '× (例外あり)', '×'],
            height: rowHeights[3]),
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