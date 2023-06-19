import QtQuick 2.12  //Item

import theme 1.0
import "../View"
import "."

StackItemHeader {
  image: "../assets/ic_insert_drive_file_black_24px.svg"
  title: "Files"

   contentItem: Item {
    anchors.fill: parent

    HeaderButton {
      anchors {
        top: parent.top
        right: send.left
        bottom: parent.bottom
      }
      width: Theme.minimumWidth * 0.1

      text: "Create Allowance"
      code: "create"
      image: "../assets/ic_create_black_24px.svg"
    }

    HeaderButton {
      id: send

      anchors {
        top: parent.top
        right: recover.left
        bottom: parent.bottom
      }
      width: Theme.minimumWidth * 0.1

      text: "Upload Files"
      code: "files"
      image: "../assets/ic_cloud_upload_black_24px.svg"
    }

    HeaderButton {
      id: recover

      anchors {
        top: parent.top
        right: parent.right
        bottom: parent.bottom
      }
      width: Theme.minimumWidth * 0.1

      text: "Upload Folder"
      code: "folder"
      image: "../assets/ic_create_new_folder_black_24px.svg"
    }
  }
}
