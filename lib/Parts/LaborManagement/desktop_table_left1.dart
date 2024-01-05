// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';

class DesktopTableLeft1 extends StatelessWidget {
  final double cellWidth = 100.0;
  final Map<int, double> rowHeights = {
    0: 30.0,
    1: 30.0,
    2: 30.0,
    3: 30.0,
  };

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const {
        0: FixedColumnWidth(100.0),
        1: FixedColumnWidth(100.0),
        2: FixedColumnWidth(100.0),
      },
      border: TableBorder.all(),
      children: [
        buildTableRow(['Header 1', 'Header 2', 'Header 3'], isHeader: true, height: rowHeights[0]),
        buildTableRow(['Data 1', 'Data 2', 'Data 3'], height: rowHeights[1]),
        buildTableRow(['Data 5', 'Data 6', 'Data 7'], height: rowHeights[2]),
        buildTableRow(['Data 9', 'Data 10', 'Data 11'], height: rowHeights[3]),
      ],
    );
  }

  TableRow buildTableRow(List<String> rowData, {bool isHeader = false, double? height}) {
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
                            // fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    )
                  : Container(
                      color: (columnIndex == 0 && !isHeader) ? const Color.fromRGBO(133, 177, 77, 1) : null,
                      width: cellWidth,
                      height: height,
                      child: Center(
                        child: Text(
                          cellData,
                          style: TextStyle(
                            color: (columnIndex == 0 && !isHeader) ? Colors.white : Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 14.0,
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
