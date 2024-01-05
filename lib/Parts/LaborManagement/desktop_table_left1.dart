// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';

class DesktopTableLeft1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 各行の高さを指定するマップ
    final Map<int, double> rowHeights = {
      0: 30.0, // ヘッダー行の高さ
      1: 30.0,
      2: 30.0,
      3: 30.0,
      // 追加の行の高さを必要に応じて指定 増やしたい場合も簡易的に実装が可能
    };

    return Table(
      columnWidths: const {
        0: FixedColumnWidth(100.0),
        1: FixedColumnWidth(100.0),
        2: FixedColumnWidth(100.0),
      },
      border: TableBorder.all(),
      children: [
        buildTableRow(
          [
            'Header 1',
            'Header 2',
            'Header 3',
          ],
          isHeader: true,
          height: rowHeights[0], // ヘッダー行の高さ
        ),
        buildTableRow(['Data 1', 'Data 2', 'Data 3'], height: rowHeights[1]),
        buildTableRow(['Data 5', 'Data 6', 'Data 7'], height: rowHeights[2]),
        buildTableRow(['Data 9', 'Data 10', 'Data 11'], height: rowHeights[3]),
        // 追加の行を必要に応じて追加し、各行の高さを指定
      ],
    );
  }

  TableRow buildTableRow(List<String> rowData, {bool isHeader = false, double? height}) {
    return TableRow(
      decoration: BoxDecoration(
        color: isHeader ? Colors.blue : null,
      ),
      children: rowData.map(
        (cellData) {
          return TableCell(
            verticalAlignment: isHeader ? TableCellVerticalAlignment.middle : TableCellVerticalAlignment.top,
            child: SizedBox(
              height: height, // 各行の高さを指定
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: isHeader
                    ? Text(
                        cellData,
                        style: const TextStyle(color: Colors.white),
                      )
                    : Text(cellData),
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}
