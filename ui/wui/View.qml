import QtQuick 2.12          //Rectangle
import QtQuick.Window 2.12
import QtGraphicalEffects 1.0 //FastBlur
import "./top"
import "./left"
import theme 1.0

Window {
    visible: true
    width: 1024
    height: 768
    title: qsTr("Client Management")
      Rectangle {
        id: root
        anchors.fill: parent
        color: Theme.background

        Left {
          id: leftControl
          anchors {
            top: parent.top
            left: parent.left
            bottom: parent.bottom
          }
          width: Theme.minWidth * 0.2
        }

        Top {
          id: topControl
          anchors {
            top: parent.top
            left: leftControl.right
            right: parent.right
          }
          height: Theme.minHeight * 0.09
        }

        Stack {
          anchors {
            top: topControl.bottom
            left: leftControl.right
            right: parent.right
            bottom: parent.bottom
          }
        }
      }

      /*
      FastBlur {
        anchors.fill: root
        source: root
        radius: 32
        visible: !root.visible
      }

      onBlur: root.visible = !b
      */

    onWidthChanged: Theme.currentWidth = width
    onHeightChanged: Theme.currentHeight = height
}
