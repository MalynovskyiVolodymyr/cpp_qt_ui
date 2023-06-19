import QtQuick 2.12           //Item
import "."

Item {
  id: template

  visible: false

  Header {
    id: header
  }

  Item {
    anchors {
      top: header.bottom
      left: parent.left
      right: parent.right
      bottom: parent.bottom
      leftMargin: 5
      rightMargin: 5
    }

    Table {
      anchors.fill: parent
      //template: template
    }
  }
}
