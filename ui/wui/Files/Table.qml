import QtQuick.Controls 1.4         //TableView
import QtQuick.Controls.Styles 1.4  //TableViewStyle

import theme 1.0
import "."

TableView {
  id: tableView

  //property FilesTemplate template

  backgroundVisible: false
  frameVisible: false

  horizontalScrollBarPolicy: Qt.ScrollBarAlwaysOff
  verticalScrollBarPolicy: Qt.ScrollBarAlwaysOff

  //model: FilesModel

  style: TableViewStyle {

    headerDelegate: TableHeaderDelegate {}

    rowDelegate: TableRowDelegate {}
  }

  TableColumnDelegate { role: "NAME" }

  TableColumnDelegate { role: "SIZE" }

  TableColumnDelegate { role: "REDUNDANCY" }

  TableColumnActionDelegate {
    role: "ACTIONS"
    tableView: tableView
  }
}
