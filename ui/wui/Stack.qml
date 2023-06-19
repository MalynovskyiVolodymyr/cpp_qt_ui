import QtQuick 2.12         //Rectangle
import QtQuick.Controls 2.1 //StackView
   //StackTemplate
import "./Dashboard"        //Dashboard
import "./Files"            //Files
import "./Hosting"          //Hosting
import "./Wallet"           //Wallet
import "./Terminal"         //Terminal
import theme 1.0
Item {
  Rectangle {
    anchors.fill: parent
    color: Theme.darkBackground

    StackView {
      id: stackView
      anchors.fill: parent

      initialItem: wallet

      Dashboard { id: dashboard }
      Files { id: files }
      Hosting { id: hosting }
      Wallet { id: wallet }
      Terminal { id: terminal }
    }
  }

//  onClicked: {
//    var next = nextItem(code)
//    if (next != stackView.currentItem) {
//      stackView.replace(next, StackView.Immediate)
//    }
//  }

  function nextItem(code) {
    switch (code) {
    case "dashboard":
      return dashboard
    case "files":
      return files
    case "hosting":
      return hosting
    case "wallet":
      return wallet
    case "terminal":
      return terminal
    }
  }
}
