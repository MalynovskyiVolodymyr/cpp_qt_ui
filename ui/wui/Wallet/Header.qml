import QtQuick 2.12  //Item
import theme 1.0
import "../View"     //StackItemHeader

StackItemHeader {
  image: "../assets/ic_account_balance_wallet_black_24px.svg"
  title: "Wallet"

  contentItem: Item {
    anchors.fill: parent

    HeaderButton {
      anchors {
        top: parent.top
        right: send.left
        bottom: parent.bottom
      }
      width: Theme.minimumWidth * 0.1

      text: "Receive Coin"
      code: "receive"
      image: "../assets/ic_file_download_black_24px.svg"
    }

    HeaderButton {
      id: send

      anchors {
        top: parent.top
        right: recover.left
        bottom: parent.bottom
      }
      width: Theme.minimumWidth * 0.1

      text: "Send Coin"
      code: "send"
      image: "../assets/ic_file_upload_black_24px.svg"
    }

    HeaderButton {
      id: recover

      anchors {
        top: parent.top
        right: parent.right
        bottom: parent.bottom
      }
      width: Theme.minimumWidth * 0.1

      text: "Recover Lost Funds"
      code: "recover"
      image: "../assets/ic_vpn_key_black_24px.svg"
    }
  }
}
