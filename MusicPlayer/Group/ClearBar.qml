import QtQuick 2.0
import "../Component"
import AppEnums 1.0
Image {
    id: clearbarbgn
    source: "image://ImageProvider/darkbg.png"
    BaseButton{
        id: backbtn
        anchors.top: clearbarbgn.top
        anchors.topMargin: 5
        anchors.left: clearbarbgn.left
        anchors.leftMargin: 20
        source: "image://ImageProvider/backBtn.png"
        onBtnClicked: {
            SCREEN_CTRL.pushScreen(AppEnums.SCREEN_ID_MUSIC_PLAYER)
        }
    }
    Text {
        id: clearbartxt
        text: qsTr("Song List")
        font.pixelSize: 25
        anchors{
            left: clearbarbgn.left
            leftMargin: 190
            verticalCenter: clearbarbgn.verticalCenter
        }
        color: "white"
    }
    BaseButton{
        id: clearbtn
        source: Controller.clearbtn?"image://ImageProvider/clearBtn.png":"image://ImageProvider/btnClearPressed.png"
        anchors{
            right: clearbarbgn.right
            rightMargin: 25
            verticalCenter: clearbarbgn.verticalCenter
        }
        onBtnClicked: {
            Controller.setClearbtn(!Controller.clearbtn)
        }
    }
}
