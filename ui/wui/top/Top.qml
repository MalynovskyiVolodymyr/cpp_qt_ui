import QtQuick 2.12           //Rectangle
import QtQuick.Layouts 1.3    //RowLayout
import theme 1.0
Item {
  id: template

  Rectangle {
    anchors.fill: parent
    color: Theme.inputFieldBackground

    RowLayout {
      anchors.fill: parent
      spacing: 1

      Search {
        Layout.fillWidth: true
        Layout.fillHeight: true
      }

      Status {
        Layout.preferredWidth: Theme.minWidth * 0.2
        Layout.fillHeight: true
      }

      Lock {
        Layout.preferredWidth: height
        Layout.fillHeight: true
      }

      Color {
        Layout.preferredWidth: height
        Layout.fillHeight: true
      }
    }
  }
}
