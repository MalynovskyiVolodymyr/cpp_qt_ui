import QtQuick 2.12            //Image
import QtGraphicalEffects 1.0 //ColorOverlay

import theme 1.0

Item {
  id: template

  Image {
    id: logo
    source: "../assets/logo.png"

    fillMode: Image.PreserveAspectFit
    width: parent.width
    height: parent.height
    mipmap: true

    //or with svg: sourceSize.width: parent.width
    //or with svg: sourceSize.height: parent.height
  }

  ColorOverlay {
    anchors.fill: logo
    source: logo
    color: Theme.accent
  }

  MouseArea {
    anchors.fill: template
    onClicked: template.clicked()
  }
}

/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
