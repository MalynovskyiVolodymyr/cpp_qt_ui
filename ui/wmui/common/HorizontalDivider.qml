import QtQuick 2.6
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0
import QtQuick.Layouts 1.3

Item {
    height: 8
    anchors.left: Layout.left
    anchors.right: Layout.right
    anchors.margins: 6
    // https://www.google.com/design/spec/components/dividers.html#dividers-types-of-dividers
    Rectangle {
        width: parent.width
        height: 1
        opacity: dividerOpacity
        color: dividerColor
    }
}
