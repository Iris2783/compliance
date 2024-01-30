// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';

class DesktopTableRight1LM extends StatelessWidget {
  final double cellWidth = 100.0;
  final Map<int, double> rowHeights = {
    0: 30.0,
    1: 50.0,
  }; //行の高さを指定

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const {
        0: FixedColumnWidth(80.0),
        1: FixedColumnWidth(380.0),
        2: FixedColumnWidth(380.0),
      }, //列の幅を指定
      border: TableBorder.all(),
      children: [
        buildTableRow([' ', '原則', '特別延長申請時'],
            isHeader: true, height: rowHeights[0]),
        buildTableRow(['月間', '80時間(ソフトリミット60時間)', '不可(80時間超過禁止)'],
            height: rowHeights[1]),
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