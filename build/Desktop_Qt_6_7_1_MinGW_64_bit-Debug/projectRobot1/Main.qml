import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14
import Data 1.0

Window {
    id: root
    // w:1423
    // h:800
    width: Screen.width
    height: Screen.height
    visible: true
    title: qsTr("Robot Project")

    property double l1: 5

    Backend{
        id:myBackend
    }


    Item {
        property string currentuserName: "admin"
        property string currentpassWord: "admin"
        id: firstScreen
        anchors.fill: parent
        visible: true

        Image {
            id: backgroundImage
            anchors.fill: parent
            source: "file:///D:/File_code/Qt/desktop-wallpaper-abstract-technical-ultra-tech.jpg"
        }

        Text {
            id: loginText
            // x: 175
            // y: 200
            x: 175/1423*Screen.width
            y: 200/800*Screen.height
            text: "LOGIN"
            color: "white"
            font.family: "Helvetica"
            font.pointSize: 24
            font.bold: true
        }

        Text {
            id: userName
            x: 75/1423*Screen.width
            y: loginText.y + loginText.height + 20
            text: "User name"
            color: "white"
            font.family: "Helvetica"
            font.pointSize: 18
            font.bold: true
        }

        TextField {
            id: usernameField
            x: 75/1423*Screen.width
            y: userName.y + userName.height + 10
            placeholderText: "User name"
            width: 300/1423*Screen.width
            height: 30/800*Screen.height
            color: "black"
            background: Rectangle {
                color: "#DDDDDD"
                radius: 5
            }
        }

        Text {
            id: password
            x: 75/1423*Screen.width
            y: usernameField.y + usernameField.height + 20
            text: "Password"
            color: "white"
            font.family: "Helvetica"
            font.pointSize: 18
            font.bold: true
        }

        TextField {
            id: passwordField
            x: 75/1423*Screen.width
            y: password.y + password.height + 10
            placeholderText: "Password"
            width: 300/1423*Screen.width
            height: 30/800*Screen.height
            echoMode: TextInput.Password
            color: "black"
            background: Rectangle {
                color: "#DDDDDD"
                radius: 5
            }
        }

        Rectangle {
            id: buttonLogin
            x: 75/1423*Screen.width
            y: passwordField.y + passwordField.height + 20
            width: 300/1423*Screen.width
            height: 40/800*Screen.height
            color: "#0076AE"
            radius: 5

            Text {
                id: textLogin
                anchors.centerIn: parent
                text: "LOGIN"
                color: "white"
                font.family: "Helvetica"
                font.pointSize: 16
                font.bold: true
            }

            MouseArea {
                id: mouseArea
                anchors.fill: parent
                onHoveredChanged: {
                    if (containsMouse) {
                        buttonLogin.color = "#005A8E"
                    } else {
                        buttonLogin.color = "#0076AE"
                    }
                }
                onClicked: {
                    if (usernameField.text === "admin" && passwordField.text === "admin" ||usernameField.text==""&& passwordField.text=="") {
                        console.log(myBackend.l2);
                        console.log(myBackend.l3);
                        firstScreen.visible = false
                        secondScreen.visible = true
                        errorLogin.visible = false
                    } else {
                        errorLogin.visible = true
                    }
                }
            }
        }
    }

    Rectangle {
        id: errorLogin
        color: "white"
        visible: false
        anchors.centerIn: parent
        width: messagefailedLogin.implicitWidth + 40
        height: messagefailedLogin.implicitHeight + 80
        radius: 10

        Text {
            id: messagefailedLogin
            text: "Wrong user name or password"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 20
            color: "red"
            font.family: "Helvetica"
            font.pointSize: 20
            font.bold: true
        }

        Button {
            id: confirmMessage
            text: "Close"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 20
            width: 100/1423*Screen.width
            height: 30/800*Screen.height
            onClicked: {
                errorLogin.visible = false
                firstScreen.visible = true
            }
        }
    }

    Item {
        id: secondScreen
        visible: false
        anchors.fill: parent

        Rectangle{
            id:container
            color:"#003366"
            anchors.fill: parent

            Image {
                id: borderImage
                source: "file:///D:/File_code/Qt/backgroundColor.png"
                anchors.fill: parent
            }

            Rectangle{
                id:settingRectangle
                color:"#252525"
                x:4/1423*Screen.width
                y:4/800*Screen.height
                width: 470/1423*Screen.width
                height: 796/800*Screen.height
                border.color: "white"
                border.width: 1.5/1423*Screen.width
                radius: 10

                Column{
                    spacing: 30/800*Screen.height
                    x:50/1423*Screen.width
                    y:50/800*Screen.height

                    Rectangle{
                        id:home
                        width: 374/1423*Screen.width
                        height: 60/800*Screen.height
                        color:"#6C757D"
                        radius: 10

                        Text{
                            id:textHome
                            text:"HOME"
                            anchors.centerIn: parent
                            font.pointSize: 19
                            color: "white"
                        }
                        MouseArea{
                            id:mouseHome
                            anchors.fill: parent
                            hoverEnabled:true

                            onHoveredChanged: {
                                if(containsMouse==true){
                                    home.color="black"
                                    shadowSetting.color="#6C757D"
                                    textHome.color="white"
                                }else{
                                    home.color="#6C757D"
                                    shadowSetting.color="black"
                                    textHome.color="white"
                                }
                            }
                        }

                        // Hiệu ứng đổ bóng bằng một Rectangle mờ
                        Rectangle {
                            id:shadowSetting
                            width: home.width
                            height: home.height
                            radius: 10
                            color: "black"
                            opacity: 0.3
                            anchors.centerIn: home
                            anchors.horizontalCenterOffset: 5
                            anchors.verticalCenterOffset: 5
                        }
                    }

                    Rectangle{
                        id:moveJoint
                        width: 374/1423*Screen.width
                        height: 60/800*Screen.height
                        color:"#6C757D"
                        radius: 10
                        Text{
                            id:textmoveJoint
                            text:"MOVE JOINTS"
                            anchors.centerIn: parent
                            font.pointSize: 19
                            color: "white"
                        }
                        MouseArea{
                            id:mousemoveJoint
                            anchors.fill: parent
                            hoverEnabled:true

                            onHoveredChanged: {
                                if(containsMouse==true){
                                    moveJoint.color="black"
                                    shadowJoint.color="#6C757D"
                                    textmoveJoint.color="white"
                                }else{
                                    moveJoint.color="#6C757D"
                                    shadowJoint.color="black"
                                    textmoveJoint.color="white"
                                }
                            }

                            onClicked: {
                                myBackend.turnOnLed();
                                windowmoveJoint.visible=true
                                secondScreen.visible=false
                            }
                        }

                        // Hiệu ứng đổ bóng bằng một Rectangle mờ
                        Rectangle {
                            id:shadowJoint
                            width: moveJoint.width
                            height: moveJoint.height
                            radius: 10
                            color: "black"
                            opacity: 0.3
                            anchors.centerIn: moveJoint
                            anchors.horizontalCenterOffset: 5
                            anchors.verticalCenterOffset: 5
                        }


                    }

                    Rectangle {
                        id: moveTCP
                        width: 374/1423*Screen.width
                        height: 60/800*Screen.height
                        color: "#6C757D"
                        radius: 10

                        Text {
                            id: textmoveTCP
                            text: "MOVE TCP"
                            anchors.centerIn: parent
                            font.pointSize: 19
                            color: "white"
                        }

                        MouseArea {
                            id: mousemoveTCP
                            anchors.fill: parent
                            hoverEnabled: true

                            onEntered: {
                                moveTCP.color = "black"
                                shadowTCP.color="#6C757D"
                                textmoveTCP.color = "white"
                            }

                            onExited: {
                                moveTCP.color = "#6C757D"
                                shadowTCP.color="black"
                                textmoveTCP.color = "white"
                            }

                            onClicked: {
                                // Toggle visibility of windowmoveTCP
                                myBackend.turnOffLed();
                                windowmoveTCP.visible = true;
                                secondScreen.visible = false; // Assuming secondScreen is your main screen
                            }
                        }

                        // Hiệu ứng đổ bóng bằng một Rectangle mờ
                        Rectangle {
                            id:shadowTCP
                            width: moveTCP.width
                            height: moveTCP.height
                            radius: 10
                            color: "black"
                            opacity: 0.3
                            anchors.centerIn: moveTCP
                            anchors.horizontalCenterOffset: 5
                            anchors.verticalCenterOffset: 5
                        }
                    }


                    Rectangle{
                        id:moveSLI
                        width: 374/1423*Screen.width
                        height: 60/800*Screen.height
                        color:"#6C757D"
                        radius: 10

                        Text{
                            id:textmoveSLI
                            text:"STRAIGHT LINE INTERPOLATION"
                            anchors.centerIn: parent
                            font.pointSize: 19
                            color: "white"
                        }

                        MouseArea{
                            id:mousemoveSLI
                            anchors.fill: parent
                            hoverEnabled:true

                            onHoveredChanged: {
                                if(containsMouse==true){
                                    moveSLI.color="black"
                                    shadowSLI.color="#6C757D"
                                    textmoveSLI.color="white"
                                }else{
                                    moveSLI.color="#6C757D"
                                    shadowSLI.color="black"
                                    textmoveSLI.color="white"
                                }
                            }
                        }

                        // Hiệu ứng đổ bóng bằng một Rectangle mờ
                        Rectangle {
                            id:shadowSLI
                            width: moveSLI.width
                            height: moveSLI.height
                            radius: 10
                            color: "black"
                            opacity: 0.3
                            anchors.centerIn: moveSLI
                            anchors.horizontalCenterOffset: 5
                            anchors.verticalCenterOffset: 5
                        }
                    }

                    Rectangle{
                        id:moveCI
                        width: 374/1423*Screen.width
                        height: 60/800*Screen.height
                        color:"#6C757D"
                        radius: 10

                        Text{
                            id:textmoveCI
                            text:"CIRCULAR INTERPOLATION"
                            anchors.centerIn: parent
                            font.pointSize: 19
                            color: "white"
                        }

                        MouseArea{
                            id:mousemoveCI
                            anchors.fill: parent
                            hoverEnabled:true

                            onHoveredChanged: {
                                if(containsMouse==true){
                                    moveCI.color="black"
                                    shadowCI.color="#6C757D"
                                    textmoveCI.color="white"
                                }else{
                                    moveCI.color="#6C757D"
                                    shadowCI.color="black"
                                    textmoveCI.color="white"
                                }
                            }
                        }

                        // Hiệu ứng đổ bóng bằng một Rectangle mờ
                        Rectangle {
                            id:shadowCI
                            width: moveCI.width
                            height: moveCI.height
                            radius: 10
                            color: "black"
                            opacity: 0.3
                            anchors.centerIn: moveCI
                            anchors.horizontalCenterOffset: 5
                            anchors.verticalCenterOffset: 5
                        }
                    }

                    Rectangle{
                        id:draganddrop
                        width: 374/1423*Screen.width
                        height: 60/800*Screen.height
                        color:"#6C757D"
                        radius: 10

                        Text{
                            id:textDragandDrop
                            text:"DRAG & DROP"
                            anchors.centerIn: parent
                            font.pointSize: 19
                            color: "white"
                        }

                        MouseArea{
                            id:mouseDragandDrop
                            anchors.fill: parent
                            hoverEnabled:true

                            onHoveredChanged: {
                                if(containsMouse==true){
                                    draganddrop.color="black"
                                    shadowdraganddrop.color="#6C757D"
                                    textDragandDrop.color="white"
                                }else{
                                    draganddrop.color="#6C757D"
                                    shadowdraganddrop.color="black"
                                    textDragandDrop.color="white"
                                }
                            }

                            onClicked: {
                                myBackend.closeSerialPort();
                                Qt.quit()
                            }
                        }

                        // Hiệu ứng đổ bóng bằng một Rectangle mờ
                        Rectangle {
                            id:shadowdraganddrop
                            width: draganddrop.width
                            height: draganddrop.height
                            radius: 10
                            color: "black"
                            opacity: 0.3
                            anchors.centerIn: draganddrop
                            anchors.horizontalCenterOffset: 5
                            anchors.verticalCenterOffset: 5
                        }
                    }

                    Rectangle{
                        id:simulation
                        width: 374/1423*Screen.width
                        height: 60/800*Screen.height
                        color:"#6C757D"
                        radius: 10

                        Text{
                            id:textSimulation
                            text:"SIMULATION"
                            anchors.centerIn: parent
                            font.pointSize: 19
                            color: "white"
                        }

                        MouseArea{
                            id:mouseSimulation
                            anchors.fill: parent
                            hoverEnabled:true

                            onHoveredChanged: {
                                if(containsMouse==true){
                                    simulation.color="black"
                                    shadowSimulation.color="#6C757D"
                                    textSimulation.color="white"
                                }else{
                                    simulation.color="#6C757D"
                                    shadowSimulation.color="black"
                                    textSimulation.color="white"
                                }
                            }

                            onClicked: {
                                console.log("Simulated");
                            }
                        }

                        // Hiệu ứng đổ bóng bằng một Rectangle mờ
                        Rectangle {
                            id:shadowSimulation
                            width: simulation.width
                            height: simulation.height
                            radius: 10
                            color: "black"
                            opacity: 0.3
                            anchors.centerIn: simulation
                            anchors.horizontalCenterOffset: 5
                            anchors.verticalCenterOffset: 5
                        }
                    }

                    Rectangle{
                        id:quit
                        width: 374/1423*Screen.width
                        height: 60/800*Screen.height
                        color:"#6C757D"
                        radius: 10

                        Text{
                            id:textQuit
                            text:"QUIT"
                            anchors.centerIn: parent
                            font.pointSize: 19
                            color: "white"
                        }

                        MouseArea{
                            id:mouseQuit
                            anchors.fill: parent
                            hoverEnabled:true

                            onHoveredChanged: {
                                if(containsMouse==true){
                                    quit.color="black"
                                    shadowQuit.color="#6C757D"
                                    textQuit.color="white"
                                }else{
                                    quit.color="#6C757D"
                                    shadowQuit.color="black"
                                    textQuit.color="white"
                                }
                            }

                            onClicked: {
                                myBackend.closeSerialPort();
                                Qt.quit()
                            }
                        }

                        // Hiệu ứng đổ bóng bằng một Rectangle mờ
                        Rectangle {
                            id:shadowQuit
                            width: quit.width
                            height: quit.height
                            radius: 10
                            color: "black"
                            opacity: 0.3
                            anchors.centerIn: quit
                            anchors.horizontalCenterOffset: 5
                            anchors.verticalCenterOffset: 5
                        }
                    }
                }
            }

            Rectangle{
                id:controllRectangle
                color:"#252525"
                x:478/1423*Screen.width
                y:4/800*Screen.height
                width: 949/1423*Screen.width
                height: 533/800*Screen.height
                border.color: "white"
                border.width: 1.5/1423*Screen.width
                radius: 10
                Text{
                    id:joy1
                    text: "JOY 1"
                    color: "white"
                    x:100/1423*Screen.width
                    y:100/800*Screen.height
                    font.family: "Helvetica"
                    font.pointSize: 24
                    font.bold: true
                }

                Canvas {
                        id: leftArrow
                        width: 100/1423*Screen.width
                        height: 100/800*Screen.height
                        x: joy1.x+joy1.implicitWidth+20
                        y:70/800*Screen.height
                        property color arrowColor: "white"

                        onPaint: {
                            var ctx = getContext("2d");
                            ctx.clearRect(0, 0, width, height);

                            ctx.beginPath();
                            ctx.moveTo(width, 0);
                            ctx.lineTo(0, height / 2);
                            ctx.lineTo(width, height);
                            ctx.closePath();

                            ctx.fillStyle = arrowColor;
                            ctx.fill();
                        }

                        MouseArea {
                            anchors.fill: parent
                            hoverEnabled: true

                            onEntered: {
                                leftArrow.arrowColor = "#FFCC99";
                                leftArrow.requestPaint();
                            }

                            onExited: {
                                leftArrow.arrowColor = "white";
                                leftArrow.requestPaint();
                            }

                            onClicked: {
                                console.log("Left arrow clicked");
                            }
                        }
                    }
                Canvas {
                    id: rightArrow
                    width: 100/1423*Screen.width
                    height: 100/800*Screen.height
                    x:joy1.x+joy1.implicitWidth+20+leftArrow.width+20
                    y:70/800*Screen.height
                    property color arrowColor: "white"

                    onPaint: {
                        var ctx = getContext("2d");
                        ctx.clearRect(0, 0, width, height);

                        ctx.beginPath();
                        ctx.moveTo(0, 0);
                        ctx.lineTo(width, height / 2);
                        ctx.lineTo(0, height);
                        ctx.closePath();

                        ctx.fillStyle = arrowColor;
                        ctx.fill();
                    }

                    MouseArea {
                        anchors.fill: parent
                        hoverEnabled: true

                        onEntered: {
                            rightArrow.arrowColor = "#FFCC99";
                            rightArrow.requestPaint();
                        }

                        onExited: {
                            rightArrow.arrowColor = "white";
                            rightArrow.requestPaint();
                        }

                        onClicked: {
                            console.log("Right arrow clicked");
                        }
                    }
                }

                Text{
                    id:joy2
                    text: "JOY 2"
                    color: "white"
                    x:600/1423*Screen.width
                    y:100/800*Screen.height
                    font.family: "Helvetica"
                    font.pointSize: 24
                    font.bold: true
                }

                Canvas {
                        id: upArrow
                        width: 100/1423*Screen.width
                        height: 100/800*Screen.height
                        x:joy2.x+joy2.implicitWidth+20
                        y:10/800*Screen.height
                        property color arrowColor: "white"

                        onPaint: {
                            var ctx = getContext("2d");
                            ctx.clearRect(0, 0, width, height);

                            ctx.beginPath();
                            ctx.moveTo(width / 2, 0);
                            ctx.lineTo(0, height);
                            ctx.lineTo(width, height);
                            ctx.closePath();

                            ctx.fillStyle = arrowColor;
                            ctx.fill();
                        }

                        MouseArea {
                            anchors.fill: parent
                            hoverEnabled: true

                            onEntered: {
                                upArrow.arrowColor = "#FFCC99";
                                upArrow.requestPaint();
                            }

                            onExited: {
                                upArrow.arrowColor = "white";
                                upArrow.requestPaint();
                            }

                            onClicked: {
                                console.log("Up arrow clicked");
                            }
                        }
                    }

                Canvas {
                        id: downArrow
                        width: 100/1423*Screen.width
                        height: 100/800*Screen.height
                        x:joy2.x+joy2.implicitWidth+20
                        y:upArrow.y+upArrow.height+20
                        property color arrowColor: "white"

                        onPaint: {
                            var ctx = getContext("2d");
                            ctx.clearRect(0, 0, width, height);

                            ctx.beginPath();
                            ctx.moveTo(0, 0);
                            ctx.lineTo(width, 0);
                            ctx.lineTo(width / 2, height);
                            ctx.closePath();

                            ctx.fillStyle = arrowColor;
                            ctx.fill();
                        }

                        MouseArea {
                            anchors.fill: parent
                            hoverEnabled: true

                            onEntered: {
                                downArrow.arrowColor = "#FFCC99";
                                downArrow.requestPaint();
                            }

                            onExited: {
                                downArrow.arrowColor = "white";
                                downArrow.requestPaint();
                            }

                            onClicked: {
                                console.log("Down arrow clicked");
                            }
                        }
                    }

                Text{
                    id:joy3
                    text: "JOY 3"
                    color: "white"
                    x:100/1423*Screen.width
                    y:380/800*Screen.height
                    font.family: "Helvetica"
                    font.pointSize: 24
                    font.bold: true
                }

                Canvas {
                        id: upArrow3
                        width: 100/1423*Screen.width
                        height: 100/800*Screen.height
                        x:joy3.x+joy3.implicitWidth+20
                        y:290/800*Screen.height
                        property color arrowColor: "white"

                        onPaint: {
                            var ctx = getContext("2d");
                            ctx.clearRect(0, 0, width, height);

                            ctx.beginPath();
                            ctx.moveTo(width / 2, 0);
                            ctx.lineTo(0, height);
                            ctx.lineTo(width, height);
                            ctx.closePath();

                            ctx.fillStyle = arrowColor;
                            ctx.fill();
                        }

                        MouseArea {
                            anchors.fill: parent
                            hoverEnabled: true

                            onEntered: {
                                upArrow3.arrowColor = "#FFCC99";
                                upArrow3.requestPaint();
                            }

                            onExited: {
                                upArrow3.arrowColor = "white";
                                upArrow3.requestPaint();
                            }

                            onClicked: {
                                console.log("Up arrow clicked");
                            }
                        }
                    }

                Canvas {
                        id: downArrow3
                        width: 100/1423*Screen.width
                        height: 100/800*Screen.height
                        x:joy3.x+joy3.implicitWidth+20
                        y:upArrow3.y+upArrow3.height+20
                        property color arrowColor: "white"

                        onPaint: {
                            var ctx = getContext("2d");
                            ctx.clearRect(0, 0, width, height);

                            ctx.beginPath();
                            ctx.moveTo(0, 0);
                            ctx.lineTo(width, 0);
                            ctx.lineTo(width / 2, height);
                            ctx.closePath();

                            ctx.fillStyle = arrowColor;
                            ctx.fill();
                        }

                        MouseArea {
                            anchors.fill: parent
                            hoverEnabled: true

                            onEntered: {
                                downArrow3.arrowColor = "#FFCC99";
                                downArrow3.requestPaint();
                            }

                            onExited: {
                                downArrow3.arrowColor = "white";
                                downArrow3.requestPaint();
                            }

                            onClicked: {
                                console.log("Down arrow clicked");
                            }
                        }
                    }
                Text{
                    id:joy4
                    text: "JOY 4"
                    color: "white"
                    x:600/1423*Screen.width
                    y:380/800*Screen.height
                    font.family: "Helvetica"
                    font.pointSize: 24
                    font.bold: true
                }

                Canvas {
                        id: leftArrow4
                        width: 100/1423*Screen.width
                        height: 100/800*Screen.height
                        x:joy4.x+joy4.implicitWidth+20
                        y:350/800*Screen.height
                        property color arrowColor: "white"

                        onPaint: {
                            var ctx = getContext("2d");
                            ctx.clearRect(0, 0, width, height);

                            ctx.beginPath();
                            ctx.moveTo(width, 0);
                            ctx.lineTo(0, height / 2);
                            ctx.lineTo(width, height);
                            ctx.closePath();

                            ctx.fillStyle = arrowColor;
                            ctx.fill();
                        }

                        MouseArea {
                            anchors.fill: parent
                            hoverEnabled: true

                            onEntered: {
                                leftArrow4.arrowColor = "#FFCC99";
                                leftArrow4.requestPaint();
                            }

                            onExited: {
                                leftArrow4.arrowColor = "white";
                                leftArrow4.requestPaint();
                            }

                            onClicked: {
                                console.log("Left arrow clicked");
                            }
                        }
                    }
                Canvas {
                    id: rightArrow4
                    width: 100/1423*Screen.width
                    height: 100/800*Screen.height
                    x:joy4.x+joy4.implicitWidth+20+leftArrow4.width+20
                    y:350/800*Screen.height
                    property color arrowColor: "white"

                    onPaint: {
                        var ctx = getContext("2d");
                        ctx.clearRect(0, 0, width, height);

                        ctx.beginPath();
                        ctx.moveTo(0, 0);
                        ctx.lineTo(width, height / 2);
                        ctx.lineTo(0, height);
                        ctx.closePath();

                        ctx.fillStyle = arrowColor;
                        ctx.fill();
                    }

                    MouseArea {
                        anchors.fill: parent
                        hoverEnabled: true

                        onEntered: {
                            rightArrow4.arrowColor = "#FFCC99";
                            rightArrow4.requestPaint();
                        }

                        onExited: {
                            rightArrow4.arrowColor = "white";
                            rightArrow4.requestPaint();
                        }

                        onClicked: {
                            console.log("Right arrow clicked");
                        }
                    }
                }
            }

            Rectangle{
                id:positionRectangle
                color:"#252525"
                x:478/1423*Screen.width
                y:542/800*Screen.height
                width:949/1423*Screen.width
                height:267/800*Screen.height
                border.color:"white"
                border.width: 1.5/1423*Screen.width
                radius: 10
                Column {
                    x:30
                    y:35
                    spacing: 50/800*Screen.height

                    Row {
                        spacing: 20/1423*Screen.width

                        Text {
                            text: "Position"
                            color: "white"
                            font.family: "Helvetica"
                            font.pointSize: 18
                            font.bold: true
                            verticalAlignment: Text.AlignVCenter
                        }

                        Row {
                            spacing: 50/1423*Screen.width

                            Rectangle {
                                width: 150/1423*Screen.width
                                height: 40/800*Screen.height
                                border.color: "white"
                                border.width: 2/1423*Screen.width
                                radius: 5
                                Text {
                                    id:x
                                    anchors.centerIn: parent
                                    text: "x:"
                                    color: "black"
                                    font.pointSize: 20
                                }
                            }

                            Rectangle {
                                width: 150/1423*Screen.width
                                height: 40/800*Screen.height
                                border.color: "white"
                                border.width: 2/1423*Screen.width
                                radius: 5
                                Text {
                                    id:y
                                    anchors.centerIn: parent
                                    text: "y:"
                                    color: "black"
                                    font.pointSize: 20
                                }
                            }

                            Rectangle {
                                width: 150/1423*Screen.width
                                height: 40/800*Screen.height
                                border.color: "white"
                                border.width: 2/1423*Screen.width
                                radius: 5
                                Text {
                                    id:z
                                    anchors.centerIn: parent
                                    text: "z:"
                                    color: "black"
                                    font.pointSize: 20
                                }
                            }
                        }
                    }

                    Row {
                        spacing: 44.5/1423*Screen.width

                        Text {
                            text: "Angle"
                            color: "white"
                            font.family: "Helvetica"
                            font.pointSize: 18
                            font.bold: true
                            verticalAlignment: Text.AlignVCenter
                        }

                        Row {
                            spacing: 50/1423*Screen.width

                            Rectangle {
                                width: 150/1423*Screen.width
                                height: 40/800*Screen.height
                                border.color: "white"
                                border.width: 2/1423*Screen.width
                                radius: 5
                                Text {
                                    id:q1
                                    anchors.centerIn: parent
                                    text: "q1: 0"
                                    color: "black"
                                    font.pointSize: 20
                                }
                            }

                            Rectangle {
                                width: 150/1423*Screen.width
                                height: 40/800*Screen.height
                                border.color: "white"
                                border.width: 2/1423*Screen.width
                                radius: 5
                                Text {
                                    id:q2
                                    anchors.centerIn: parent
                                    text: "q2: 0"
                                    color: "black"
                                    font.pointSize: 20
                                }
                            }

                            Rectangle {
                                width: 150/1423*Screen.width
                                height: 40/800*Screen.height
                                border.color: "white"
                                border.width: 2/1423*Screen.width
                                radius: 5
                                Text {
                                    id:q3
                                    anchors.centerIn: parent
                                    text: "q3: 0"
                                    color: "black"
                                    font.pointSize: 20
                                }
                            }

                            Rectangle {
                                width: 150/1423*Screen.width
                                height: 40/800*Screen.height
                                border.color: "white"
                                border.width: 2/1423*Screen.width
                                radius: 5
                                Text {
                                    id:q4
                                    anchors.centerIn: parent
                                    text: "q4: 0"
                                    color: "black"
                                    font.pointSize: 20
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    Item {
        id: windowmoveJoint
        visible: false
        anchors.fill: parent

        Rectangle {
            width: 800/1423*Screen.width
            height: 750/800*Screen.height
            radius: 10
            color: "white"
            border.color: "gray"
            border.width: 2/1423*Screen.width
            anchors.centerIn: parent

            // Shadow effect using a semi-transparent Rectangle
            Rectangle {
                width: 800/1423*Screen.width
                height: 750/800*Screen.height
                radius: 10
                color: "black"
                opacity: 0.2
                anchors.centerIn: parent
                anchors.horizontalCenterOffset: 5
                anchors.verticalCenterOffset: 5
            }

            Column {
                spacing: 40/800*Screen.height
                anchors.centerIn: parent

                Row {
                    spacing: 40/1423*Screen.width
                    anchors.horizontalCenter: parent.horizontalCenter
                    Text {
                        text: "Q1:"
                        font.pixelSize: 40 // Increase font size
                        font.bold: true // Optionally make it bold
                        color: "#0076AE"
                    }
                    TextField {
                        id: q1Field
                        placeholderText: "Enter Q1"
                        font.pixelSize: 40 // Increase font size
                        width: 400/1423*Screen.width // Adjust width
                        height: 100/800*Screen.height
                        background: Rectangle {
                            color: "#E8EAF6"
                            radius: 10
                            border.color: "#0076AE"
                        }
                    }
                }

                Row {
                    spacing: 40/1423*Screen.width
                    anchors.horizontalCenter: parent.horizontalCenter
                    Text {
                        text: "Q2:"
                        font.pixelSize: 40 // Increase font size
                        font.bold: true // Optionally make it bold
                        color: "#0076AE"
                    }
                    TextField {
                        id: q2Field
                        placeholderText: "Enter Q2"
                        font.pixelSize: 40 // Increase font size
                        width: 400/1423*Screen.width // Adjust width
                        height: 100/800*Screen.height
                        background: Rectangle {
                            color: "#E8EAF6"
                            radius: 10
                            border.color: "#0076AE"
                        }
                    }
                }

                Row {
                    spacing: 40/1423*Screen.width
                    anchors.horizontalCenter: parent.horizontalCenter
                    Text {
                        text: "Q3:"
                        font.pixelSize: 40 // Increase font size
                        font.bold: true // Optionally make it bold
                        color: "#0076AE"
                    }
                    TextField {
                        id: q3Field
                        placeholderText: "Enter Q3"
                        font.pixelSize: 40 // Increase font size
                        width: 400/1423*Screen.width // Adjust width
                        height: 100/800*Screen.height
                        background: Rectangle {
                            color: "#E8EAF6"
                            radius: 10
                            border.color: "#0076AE"
                        }
                    }
                }

                Row {
                    spacing: 40/1423*Screen.width
                    anchors.horizontalCenter: parent.horizontalCenter
                    Text {
                        text: "Q4:"
                        font.pixelSize: 40 // Increase font size
                        font.bold: true // Optionally make it bold
                        color: "#0076AE"
                    }
                    TextField {
                        id: q4Field
                        placeholderText: "Enter Q4"
                        font.pixelSize: 40 // Increase font size
                        width: 400/1423*Screen.width // Adjust width
                        height: 100/800*Screen.height
                        background: Rectangle {
                            color: "#E8EAF6"
                            radius: 10
                            border.color: "#0076AE"
                        }
                    }
                }

                Button {
                    text: "Print"
                    font.pixelSize: 40 // Increase font size
                    width: 240/1423*Screen.width // Adjust width
                    height: 100/800*Screen.height
                    anchors.horizontalCenter: parent.horizontalCenter
                    background: Rectangle {
                        color: "#0076AE"
                        radius: 10
                    }
                    contentItem: Text {
                        text: "Print"
                        color: "white"
                        font.pixelSize: 40
                        font.bold: true
                        anchors.centerIn: parent
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }
                    onClicked: {
                        myBackend.khongGianKhop(Number(q1Field.text),Number(q2Field.text),Number(q3Field.text),Number(q4Field.text))
                        myBackend.writeToSerialPort("q:"+q1Field.text+";"+q2Field.text+";"+q3Field.text+";"+q4Field.text+";");
                        q1.text="q1: "+myBackend.q1;
                        q2.text="q2: "+myBackend.q2;
                        q3.text="q3: "+myBackend.q3;
                        q4.text="q4: "+myBackend.q4;
                        x.text="x: "+myBackend.x;
                        y.text="y: "+myBackend.y;
                        z.text="z: "+myBackend.z;
                        windowmoveJoint.visible = false;
                        secondScreen.visible = true; // Assuming secondScreen is your main screen
                    }
                }
            }
        }
    }

    Item {
        id: windowmoveTCP
        visible: false
        anchors.fill: parent

        Rectangle {
            width: 800/1423*Screen.width
            height: 600/800*Screen.height
            radius: 10
            color: "white"
            border.color: "gray"
            border.width: 2/1423*Screen.width
            anchors.centerIn: parent

            // Shadow effect using a semi-transparent Rectangle
            Rectangle {
                width: 800/1423*Screen.width
                height: 600/800*Screen.height
                radius: 10
                color: "black"
                opacity: 0.2
                anchors.centerIn: parent
                anchors.horizontalCenterOffset: 5
                anchors.verticalCenterOffset: 5
            }

            Column {
                spacing: 40/800*Screen.height
                anchors.centerIn: parent

                Row {
                    spacing: 40/1423*Screen.width
                    anchors.horizontalCenter: parent.horizontalCenter
                    Text {
                        text: "X:"
                        font.pixelSize: 40 // Increase font size
                        font.bold: true // Optionally make it bold
                        color: "#0076AE"
                    }
                    TextField {
                        id: xField
                        placeholderText: "Enter X"
                        font.pixelSize: 40 // Increase font size
                        width: 400/1423*Screen.width // Adjust width
                        height: 100/800*Screen.height
                        background: Rectangle {
                            color: "#E8EAF6"
                            radius: 10
                            border.color: "#0076AE"
                        }
                    }
                }

                Row {
                    spacing: 40/1423*Screen.width
                    anchors.horizontalCenter: parent.horizontalCenter
                    Text {
                        text: "Y:"
                        font.pixelSize: 40 // Increase font size
                        font.bold: true // Optionally make it bold
                        color: "#0076AE"
                    }
                    TextField {
                        id: yField
                        placeholderText: "Enter Y"
                        font.pixelSize: 40 // Increase font size
                        width: 400/1423*Screen.width // Adjust width
                        height: 100/800*Screen.height
                        background: Rectangle {
                            color: "#E8EAF6"
                            radius: 10
                            border.color: "#0076AE"
                        }
                    }
                }

                Row {
                    spacing: 40/1423*Screen.width
                    anchors.horizontalCenter: parent.horizontalCenter
                    Text {
                        text: "Z:"
                        font.pixelSize: 40 // Increase font size
                        font.bold: true // Optionally make it bold
                        color: "#0076AE"
                    }
                    TextField {
                        id: zField
                        placeholderText: "Enter Z"
                        font.pixelSize: 40 // Increase font size
                        width: 400/1423*Screen.width // Adjust width
                        height: 100/800*Screen.height
                        background: Rectangle {
                            color: "#E8EAF6"
                            radius: 10
                            border.color: "#0076AE"
                        }
                    }
                }

                Button {
                    text: "Print"
                    font.pixelSize: 40 // Increase font size
                    width: 240/1423*Screen.width // Adjust width
                    height: 100/800*Screen.height
                    anchors.horizontalCenter: parent.horizontalCenter
                    background: Rectangle {
                        color: "#0076AE"
                        radius: 10
                    }
                    contentItem: Text {
                        text: "Print"
                        color: "white"
                        font.pixelSize: 40
                        font.bold: true
                        anchors.centerIn: parent
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }
                    onClicked: {
                        myBackend.khongGianThaoTac(Number(xField.text),Number(yField.text),Number(zField.text));
                        x.text="x: "+myBackend.x;
                        y.text="y: "+myBackend.y;
                        z.text="z: "+myBackend.z;
                        q1.text="q1: "+myBackend.q1;
                        q2.text="q2: "+myBackend.q2;
                        q3.text="q3: "+myBackend.q3;
                        q4.text="q4: "+myBackend.q4;
                        myBackend.writeToSerialPort("q:"+myBackend.q1+";"+myBackend.q2+";"+myBackend.q3+";"+myBackend.q4+";");
                        windowmoveTCP.visible = false;
                        secondScreen.visible = true; // Assuming secondScreen is your main screen
                    }
                }
            }
        }
    }

}
