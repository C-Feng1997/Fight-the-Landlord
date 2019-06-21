import QtQuick 2.0
import Felgo 3.0
import QtQuick.Controls 2.0

Item{
    id: selectLevelScene
    BackgroundImage {
        id: bgImage
        source: "qrc:/images/scene/startScene.jpg"
        anchors.fill: parent
        //玩家头像
        Image{
            id:touxiangImage
            width: 100
            height: 100

            anchors.bottom: parent.bottom
            anchors.bottomMargin: 20

            source: "qrc:/images/touxiang/touxiang1.png"
        }
        //玩家名称

        Image {
            id: nameImage
            width: 100
            height: 50
            source: "qrc:/images/icons/Button2.png"
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 22
            anchors.left: touxiangImage.right
            anchors.leftMargin:10
            Text {
                id: text
                text: qsTr("玩家")
                x:22
                y:5
                style:Text.Sunken
                styleColor: "white"
                font.pointSize: 20
                anchors.bottomMargin: 0.3 * height
            }
        }
        //“开始游戏“按钮
        Button{
            id:kaishibutton
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom:parent.bottom
            anchors.bottomMargin: 180
            Text {
                id: kaishitext
                style:Text.Sunken
                styleColor: "red"
                text:qsTr("开始游戏")
                font.pointSize: 20
                anchors.centerIn: parent
            }
            scale: 0.7

            background:Image {
                source: "qrc:/images/icons/button.png"
                MouseArea{
                    anchors.fill: parent
                    onClicked:{
                        stackView.push(gameingview)
                        gametime.attrs.min=15
                        gametime.attrs.second=0
                        gametime.countDown.start()
                        gametime.re.opacity=1
                    }
                }
            }
        }
        Image{
            id:backImage
            source: "qrc:/images/icons/back.png"
            width:parent.width/10
            height: parent.width/10
            anchors.topMargin: 20
            anchors.right: parent.right
            MouseArea{
                id:backmouse
                anchors.fill: parent
                onClicked: {
                    stackView.pop()
                }

            }
        }
    }
}
