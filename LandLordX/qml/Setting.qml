import QtQuick 2.0
import Felgo 3.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.2 as QQD

Item {
    property alias dialog: dialog
    property alias dialog1: dialog1

    id: setting
    width: 400
    height: 200
    QQD.Dialog {
        id:dialog
        title: "设置"

        contentItem: Rectangle {
            color: "transparent"
            implicitWidth: 600
            implicitHeight: 300
            Image {
                id: settingScene
                anchors.fill: parent
                source: "qrc:/images/scene/settingScene.jpg"
            }

            Image {
                id: image
                anchors.right: parent.right
                anchors.top: parent.top
                scale: 0.6
                source: "qrc:/images/icons/close.png"
                MouseArea{
                    id: closeMouseArea
                    anchors.fill: parent
                    onClicked: {
                        dialog.close()
                    }
                }
            }
            Switch{
                id: switch1
                anchors.centerIn: parent
                scale: 1.8
                text: qsTr("音乐")
                font.pixelSize: 32
                //如果选中控件，则此属性为真。默认值为false。
                checked: false
                onPressedChanged: {
                    //如果checked为false，则不播放音乐
                    if(!checked)
                        mainScene.bgMusic.stop()
                    else
                        //如果checked为true，则开始播放媒体。
                        mainScene.bgMusic.play()
                }
            }

        }
    }

    //游戏中设置弹出的音乐对话框
    QQD.Dialog {
        id:dialog1
        title: "设置"

        contentItem: Rectangle {
            color: "transparent"
            implicitWidth: 600
            implicitHeight: 300
            Image {
                id: settingScene1
                anchors.fill: parent
                source: "qrc:/images/scene/settingScene.jpg"
            }

            Image {
                id: image1
                anchors.right: parent.right
                anchors.top: parent.top
                scale: 0.6
                source: "qrc:/images/icons/close.png"
                MouseArea{
                    id: closeMouseArea1
                    anchors.fill: parent
                    onClicked: {
                        dialog1.close()
                    }
                }
            }
            Switch{
                id: switch2
                anchors.centerIn: parent
                scale: 1.8
                text: qsTr("音乐")
                font.pixelSize: 32
                //如果选中控件，则此属性为真。默认值为false。
                checked: false
                onPressedChanged: {
                    //如果checked为false，则不播放音乐
                    if(!checked){
                        playing.bgMusic1.stop()
                    }
                    else{
                        //如果checked为true，则开始播放媒体。
                        playing.bgMusic1.play()
                    }
                }
            }

        }
    }
}
