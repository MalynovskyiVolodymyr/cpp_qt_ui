import QtQuick 2.12           //Image
import QtGraphicalEffects 1.0 //ColorOverlay
import theme 1.0

Item {
  id: template

  Rectangle {
    anchors.fill: parent

    color: Theme.background

    Image {
      id: colorImage
      anchors.centerIn: parent

      source: "../assets/ic_invert_colors_black_24px.svg"
    }

    ColorOverlay {
      id: overlay
      anchors.fill: colorImage
      source: color
      color: Theme.accent
      cached: false
    }

    MouseArea {
      id: mouseArea
      anchors.fill: parent

      hoverEnabled: true
      onEntered: overlay.color = Theme.nextAccent
      onExited: overlay.color = Theme.accent

      onClicked: template.change()
    }
  }
}
