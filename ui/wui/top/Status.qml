import QtQuick 2.12           //Image
import QtQuick.Layouts 1.3    //RowLayout
import QtQuick.Controls 2.1   //Label
import QtGraphicalEffects 1.0 //ColorOverlay
import theme 1.0
Item {
  id: template

  Rectangle {
    color: Theme.background
    anchors.fill: parent

    RowLayout {
      anchors.fill: parent

      Item {
        Layout.preferredWidth: height
        Layout.fillHeight: true

        Image {
          id: icon
          anchors.centerIn: parent

          sourceSize.width: 25
          sourceSize.height: 25

          horizontalAlignment: Image.AlignHCenter
          verticalAlignment: Image.AlignVCenter
          fillMode: Image.PreserveAspectFit

          source: "../assets/icon.png"
          mipmap: true
        }

        ColorOverlay {
          anchors.fill: icon
          source: icon
          color: Theme.accent
        }
      }

      ColumnLayout {
        Layout.fillWidth: true
        Layout.fillHeight: true

        spacing: 0

        Label {
          color: Theme.fontHighlight
          font.pointSize: 18
          font.bold: true
          text: "Balance:"
        }

        Label {
          color: Theme.font
          font.pointSize: 12
          //text: template.balance
        }

        Label {
          color: Theme.fontHighlight
          font.pointSize: 12
          font.bold: true
          text: "Delta:"
        }

        Label {
          color: Theme.font
          font.pointSize: 12
          //text: template.delta
        }
      }

      Item {
        Layout.fillWidth: true
      }
    }
  }
}
