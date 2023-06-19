import QtQuick 2.12            //Image
import QtQuick.Controls 2.1   //TextField
import QtGraphicalEffects 1.0 //ColorOverlay
import theme 1.0
Item {
  id: template

  Item {
    anchors.fill: parent

    TextField {
      id: search
      anchors {
        top: parent.top
        left: parent.left
        bottom: parent.bottom
      }
      width: parent.width * 0.9

      placeholderText: "Search for a file..."
      color: Theme.font
      selectionColor: Theme.accent
      font.pointSize: 16
      font.italic: displayText == ""

      background: null

      onDisplayTextChanged: template.search(search.text)
    }

    Item {
      anchors {
        top: parent.top
        left: search.right
        right: parent.right
        bottom: parent.bottom
      }

      Image {
        id: image
        anchors.centerIn: parent

        source: "../assets/ic_search_black_24px.svg"
      }

      ColorOverlay {
        anchors.fill: image
        source: image
        color: Theme.accent
      }
    }
  }
}
