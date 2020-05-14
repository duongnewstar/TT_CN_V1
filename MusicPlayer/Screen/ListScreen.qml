import QtQuick 2.0
import"../Group"

Item{
    id:im
    Image {
        id: statusbar
        anchors.top: parent.top
        anchors.left: parent.left
        height: 10
        width: 480
        source: "image://ImageProvider/status-bar.png"
    }
    Image {
        id: screenbgn
        anchors.top: clearbar.bottom
        anchors.left: parent.left
        height: 220
        width: 480
        source: "image://ImageProvider/bg3.png"

    }

    ClearBar{
        id: clearbar
        height: 30
        width: 480
        anchors.top: statusbar.bottom

    }  
    Tabbar{
        id:tabbar
        anchors{
            fill: screenbgn
        }
    }
    Loader{
        id: loader
        anchors.horizontalCenter: tabbar.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 100
        source: "qrc:/Screen/YesNoScreen.qml"
        active: !Controller.clearbtn
    }
}
