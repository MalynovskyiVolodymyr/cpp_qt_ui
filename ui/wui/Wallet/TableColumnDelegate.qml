import QtQuick 2.12          //Component
import QtQuick.Controls 1.4 //TableViewColumn
import QtQuick.Controls 2.1 //Label
import theme 1.0           //Theme

TableViewColumn {

  title: role
  resizable: false
  movable: false
  width: parent.width * 0.2

  delegate: Component { Item { Label {
    anchors.centerIn: parent

    color: styleData.selected ? Theme.walletTableHighlight : styleData.column == 0 || styleData.column == 3 ? Theme.font : Theme.fontHighlight
    text: styleData.value
    font.bold: styleData.column == 2 || styleData.column == 4
    font.italic: styleData.column == 3
  } } }
}
