// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';

class DesktopTableRight2LM extends StatelessWidget {
  final double cellWidth = 100.0;
  final Map<int, double> rowHeights = {
    0: 30.0,
    1: 50.0,
    2: 50.0,
    3: 50.0,
    4: 50.0,
  }; //行の高さを指定

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const {
        0: FixedColumnWidth(80.0),
        1: FixedColumnWidth(255.0),
        2: FixedColumnWidth(255.0),
        3: FixedColumnWidth(255.0),
      }, //列の幅を指定
      border: TableBorder.all(),
      children: [
        buildTableRow(['月日数', '基準労働時間', '上限労働時間', '該当月'],
            isHeader: true, height: rowHeights[0]),
        buildTableRow(['31日', '177時間08分', '257時間08分', '1、3、5、7、8、10、12'],
            height: rowHeights[1]),
        buildTableRow(['30日', '171時間25分', '251時間25分', '4、6、9、11'],
            height: rowHeights[2]),
        buildTableRow(['29日', '165時間42分', '245時間42分', '2(うるう年)'],
            height: rowHeights[3]),
        buildTableRow(['28日', '160時間00分', '240時間00分', '2'],
            height: rowHeights[4]),
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
