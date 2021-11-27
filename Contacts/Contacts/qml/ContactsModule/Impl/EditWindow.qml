import QtQuick 2.0
import StyleSettings 1.0
import ResourceProvider 1.0
import QtQuick.Controls 2.12

Item {
    property alias name: editName.fieldText
    property alias surname: editSurname.fieldText
    property alias phone: editPhone.fieldText
    signal okAnswer
    signal cancelAnswer

    Rectangle {
        anchors.fill: parent
        height: 200
        width: 600
        border.color: Style.primaryColor

        EditField {
            x: 10
            y: 10
            id: editName
            labelText: "Name"
            fieldText: name
        }

        EditField {
            x: 170
            y: 10
            id: editSurname
            labelText: "Surname"
            fieldText: surname
        }
        EditField {
            x: 330
            y: 10
            id: editPhone
            labelText: "Phone"
            fieldText: phone
        }
        Button {
            id: okButton
            width: 50
            height: 50
            anchors.bottom: parent.bottom
            anchors.right: cancelButton.left
            anchors.rightMargin: 5
            anchors.bottomMargin: 5
            onClicked: okAnswer()
            Image {
                anchors.fill: parent
                source: Resources.contacts.okIcon
            }
        }
        Button {
            id: cancelButton
            width: 50
            height: 50
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            anchors.rightMargin: 25
            anchors.bottomMargin: 5
            onClicked: cancelAnswer()
            Image {
                anchors.fill: parent
                source: Resources.contacts.cancelIcon
            }
        }
    }
}
