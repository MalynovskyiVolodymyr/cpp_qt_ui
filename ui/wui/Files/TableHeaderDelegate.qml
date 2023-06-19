import QtQuick 2.12         //Component
import QtQuick.Controls 2.1 //Label

import theme 1.0

Component { Item {

  height: Theme.minHeight * 0.05
  visible: styleData.value != ""

  Rectangle {
    id: leftRound

    anchors {
      top: parent.top
      left: parent.left
      bottom: parent.bottom
    }

    width: styleData.column == 0 ? 10 : 0
    radius: styleData.column == 0 ? 10 : 0
    color: Theme.walletTableHeader

    visible: styleData.column == 0
  }

  Rectangle {
    id: mainRectangle

    anchors {
      top: parent.top
      left: leftRound.horizontalCenter
      right: rightRound.horizontalCenter
      bottom: parent.bottom
    }

    color: Theme.walletTableHeader
  }

  Rectangle {
    id: rightRound

    anchors {
      top: parent.top
      right: parent.right
      bottom: parent.bottom
    }
    width: styleData.column == 3 ? 10 : 0
    radius: styleData.column == 3 ? 10 : 0
    color: Theme.walletTableHeader

    visible: styleData.column == 3
  }

  Label {
    anchors.centerIn: parent

    text: styleData.value
    color: Theme.fontHighlight
    font.pointSize: 14
    font.bold: true
  }  
}}
