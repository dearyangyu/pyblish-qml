import QtQuick 2.3

/*
 * Quit Animation
 * This sequence is activated when the
 * user hits the close button.
*/
SequentialAnimation {
    id: root
    running: false

    property int height: 50
    property int delay: 0
    property alias heightTarget: heightAnimation.target
    property alias opacityTarget: opacityAnimation.target

    PauseAnimation {
        duration: root.delay
    }

    NumberAnimation {
        id: heightAnimation
        property: "height"
        to: root.height
        duration: 400
        easing.type: Easing.OutCubic
    }

    PauseAnimation {
        duration: 50
    }

    NumberAnimation {
        id: opacityAnimation
        property: "opacity"
        to: 0
        duration: 200
    }
}