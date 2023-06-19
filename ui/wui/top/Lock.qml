import QtQuick 2.12            //Image
import QtGraphicalEffects 1.0 //ColorOverlay
import theme 1.0
Item {
  id: template

  Rectangle {
    anchors.fill: parent

    color: Theme.background

    Image {
      id: color
      anchors.centerIn: parent

      source: template.locked ? "../assets/ic_lock_outline_black_24px.svg" : "../assets/ic_lock_open_black_24px.svg"
    }

    ColorOverlay {
      id: overlay
      anchors.fill: color
      source: color
      color: Theme.accent
    }

    MouseArea {
      id: mouseArea
      anchors.fill: parent
      onClicked: template.change()
    }
  }
}
