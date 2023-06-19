import QtQuick 2.12
import theme 1.0            //Theme
//import TerminalTemplate 1.0 //TerminalTemplate

Item {
  id: template

  visible: false

  Header {
    id: header
  }

  Output {
    id: output

    anchors {
      top: header.bottom
      left: parent.left
      right: parent.right
      bottom: input.top
    }
  }

  Input {
    id: input
    //template: template
    output: output

    anchors {
      left: parent.left
      right: parent.right
      bottom: parent.bottom
    }
    height: Theme.minHeight * 0.09
  }
}
