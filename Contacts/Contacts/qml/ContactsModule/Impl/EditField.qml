import QtQuick 2.0
import StyleSettings 1.0

Item {
    property string labelText: "0"
    property alias fieldText : field.text

    height: 50
    width: 200
    Text {
        anchors.top: parent.top
        anchors.topMargin: 10

        id: label
        height: 15
        width: 70
        font.italic: false
        font.pointSize: 10
        text: labelText

        color: "#000000"
    }

    Rectangle {
        height: 30
        width: 150
        anchors.top: label.bottom
        anchors.topMargin: 5
        border.color: "#000000"
        border.width: 1
        TextEdit {
            id: field
            anchors.fill: parent
            width: parent.width
            text: fieldText
            clip: true
            font.italic: false
            activeFocusOnPress: true
            font.pointSize: 12
            anchors.centerIn: parent
            color: "#000000"
            textMargin: 5
            onTextChanged: {
                if (field.length > 18)
                    remove(18, length)
            }
        }
    }
}
