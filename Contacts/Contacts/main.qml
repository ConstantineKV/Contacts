import QtQuick 2.12
import QtQuick.Window 2.12
import StyleSettings 1.0
import ContactsModule.Impl 1.0
import QtQuick.Controls 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    ContactsView {
        id: contactList
        anchors.fill: parent
    }
    Button {
        width: 50
        height: 50
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        anchors.bottomMargin: 5
        anchors.rightMargin: 5
        text: "+"
        font.pointSize: 30
        onClicked: {
            popup.name = ""
            popup.surname = ""
            popup.phone = ""
            popup.open()
        }
    }

    Popup {
        property string name
        property string surname
        property string phone
        property int currentIndex
        id: popup
        x: 100
        y: 100
        width: 520
        height: 160
        modal: true
        focus: true
        contentItem: EditWindow {
            name: popup.name
            surname: popup.surname
            phone: popup.phone
            onOkAnswer: {
                contactList.addContact(name, surname, phone)
                popup.close()
            }
            onCancelAnswer: popup.close()
        }

        closePolicy: Popup.CloseOnPressOutside
    }

    Rectangle {
        id: _background
        z: -100
        anchors.fill: parent
        color: Style.backgroundColor
        opacity: Style.emphasisOpacity
    }
    Component.onCompleted: {
        console.log(Style)
    }
}
