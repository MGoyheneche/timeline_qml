import QtQuick 2.0

Rectangle {
    width: 800
    height: 200

    Rectangle {
        id: rect
        x: 0
        y: parent.verticalCenter
        width: 200
        height: 200
        color: "#343434"
        radius: 0
        border.width: 2
        border.color: "#333"
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.leftMargin: 0

        MouseArea {
            id: mouseAreaRight

            property int oldMouseX

            anchors.right: parent.right
            anchors.bottom: parent.bottom
            width: 30
            height: parent.height
            hoverEnabled: true

            onPressed: {
                oldMouseX = mouseX
            }

            onPositionChanged: {
                if (pressed) {
                    rect.width = rect.width + (mouseX - oldMouseX)
                }
            }
        }

        MouseArea {
            id: mouseAreaLeft

            property int oldMouseX

            anchors.left: parent.left
            anchors.bottom: parent.bottom
            width: 30
            height: parent.height
            hoverEnabled: true

            onPressed: {
                oldMouseX = mouseX
                console.log(oldMouseX)
            }

            onPositionChanged: {
                if (pressed) {
                    console.log(mouseX)
                    rect.width = rect.width + ( mouseX - oldMouseX)
                }
            }
        }
    }
}
