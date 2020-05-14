import QtQuick 2.0
import "../Component"
import QtQuick.Layouts 1.0
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2

Rectangle{
    width: 480
    height: 10
    radius: 5
    BaseButton{
        id: searchbtn
        width: 20
        height: 20
        source: "image://ImageProvider/searchIcon.png"
        anchors.right: parent.right
        anchors.top: parent.top
        onBtnClicked: {
            filterModel.setFilterString(txt.text);
        }
    }
    TextField {
        id: txt
        placeholderText: "Type here.."
        Layout.fillWidth: true
        font.pointSize: 15
        style: TextFieldStyle {
            textColor: "black"
            background: Rectangle {
                radius: 5
                implicitWidth: 460
                implicitHeight: 30
            }
        }
        onTextChanged: {
            filterModel.setFilterString(text);
        }
    }
}

