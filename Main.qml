import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14
import Data 1.0

Window {
    id: root
    width: 1423
    height: 800
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
            source: "file:///D:/File_code/Qt/robotProject/desktop-wallpaper-abstract-technical-ultra-tech.jpg"
        }

        Text {
            id: loginText
            x: 175
            y: 200
            text: "LOGIN"
            color: "white"
            font.family: "Helvetica"
            font.pointSize: 24
            font.bold: true
        }

        Text {
            id: userName
            x: 75
            y: loginText.y + loginText.height + 20
            text: "User name"
            color: "white"
            font.family: "Helvetica"
            font.pointSize: 18
            font.bold: true
        }

        TextField {
            id: usernameField
            x: 75
            y: userName.y + userName.height + 10
            placeholderText: "User name"
            width: 300
            height: 30
            color: "black"
            background: Rectangle {
                color: "#DDDDDD"
                radius: 5
            }
        }

        Text {
            id: password
            x: 75
            y: usernameField.y + usernameField.height + 20
            text: "Password"
            color: "white"
            font.family: "Helvetica"
            font.pointSize: 18
            font.bold: true
        }

        TextField {
            id: passwordField
            x: 75
            y: password.y + password.height + 10
            placeholderText: "Password"
            width: 300
            height: 30
            echoMode: TextInput.Password
            color: "black"
            background: Rectangle {
                color: "#DDDDDD"
                radius: 5
            }
        }

        Rectangle {
            id: buttonLogin
            x: 75
            y: passwordField.y + passwordField.height + 20
            width: 300
            height: 40
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
                        myBackend.l1=l1;
                        myBackend.l1=12.3;
                        console.log(myBackend.sum(1,2));
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
            width: 100
            height: 30
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

            Rectangle{
                id:settingRectangle
                color:"#003366"
                x:0
                y:0
                width: 474
                height: 800
                border.color: "white"
                border.width: 4

                Column{
                    spacing: 30
                    x:50
                    y:50

                    Rectangle{
                        id:home
                        width: 374
                        height: 60
                        color:"white"
                        radius: 10

                        Text{
                            id:textHome
                            text:"HOME"
                            anchors.centerIn: parent
                            font.pointSize: 19
                            color: "black"
                        }
                        MouseArea{
                            id:mouseHome
                            anchors.fill: parent
                            hoverEnabled:true

                            onHoveredChanged: {
                                if(containsMouse==true){
                                    home.color="#0076AE"
                                    textHome.color="white"
                                }else{
                                    home.color="white"
                                    textHome.color="black"
                                }
                            }
                        }
                    }

                    Rectangle{
                        id:moveJoint
                        width: 374
                        height: 60
                        color:"white"
                        radius: 10
                        Text{
                            id:textmoveJoint
                            text:"MOVE JOINTS"
                            anchors.centerIn: parent
                            font.pointSize: 19
                        }
                        MouseArea{
                            id:mousemoveJoint
                            anchors.fill: parent
                            hoverEnabled:true

                            onHoveredChanged: {
                                if(containsMouse==true){
                                    moveJoint.color="#0076AE"
                                    textmoveJoint.color="white"
                                }else{
                                    moveJoint.color="white"
                                    textmoveJoint.color="black"
                                }
                            }

                            onClicked: {
                                windowmoveJoint.visible=true
                                secondScreen.visible=false
                            }
                        }


                    }

                    Rectangle {
                        id: moveTCP
                        width: 374
                        height: 60
                        color: "white"
                        radius: 10

                        Text {
                            id: textmoveTCP
                            text: "MOVE TCP"
                            anchors.centerIn: parent
                            font.pointSize: 19
                        }

                        MouseArea {
                            id: mousemoveTCP
                            anchors.fill: parent
                            hoverEnabled: true

                            onEntered: {
                                moveTCP.color = "#0076AE"
                                textmoveTCP.color = "white"
                            }

                            onExited: {
                                moveTCP.color = "white"
                                textmoveTCP.color = "black"
                            }

                            onClicked: {
                                // Toggle visibility of windowmoveTCP
                                windowmoveTCP.visible = true;
                                secondScreen.visible = false; // Assuming secondScreen is your main screen
                            }
                        }
                    }


                    Rectangle{
                        id:moveSLI
                        width: 374
                        height: 60
                        color:"white"
                        radius: 10

                        Text{
                            id:textmoveSLI
                            text:"STRAIGHT LINE INTERPOLATION"
                            anchors.centerIn: parent
                            font.pointSize: 19
                        }

                        MouseArea{
                            id:mousemoveSLI
                            anchors.fill: parent
                            hoverEnabled:true

                            onHoveredChanged: {
                                if(containsMouse==true){
                                    moveSLI.color="#0076AE"
                                    textmoveSLI.color="white"
                                }else{
                                    moveSLI.color="white"
                                    textmoveSLI.color="black"
                                }
                            }
                        }
                    }

                    Rectangle{
                        id:moveCI
                        width: 374
                        height: 60
                        color:"white"
                        radius: 10

                        Text{
                            id:textmoveCI
                            text:"CIRCULAR INTERPOLATION"
                            anchors.centerIn: parent
                            font.pointSize: 19
                        }

                        MouseArea{
                            id:mousemoveCI
                            anchors.fill: parent
                            hoverEnabled:true

                            onHoveredChanged: {
                                if(containsMouse==true){
                                    moveCI.color="#0076AE"
                                    textmoveCI.color="white"
                                }else{
                                    moveCI.color="white"
                                    textmoveCI.color="black"
                                }
                            }
                        }
                    }

                    Rectangle{
                        id:simulation
                        width: 374
                        height: 60
                        color:"white"
                        radius: 10

                        Text{
                            id:textSimulation
                            text:"SIMULATION"
                            anchors.centerIn: parent
                            font.pointSize: 19
                        }

                        MouseArea{
                            id:mouseSimulation
                            anchors.fill: parent
                            hoverEnabled:true

                            onHoveredChanged: {
                                if(containsMouse==true){
                                    simulation.color="#0076AE"
                                    textSimulation.color="white"
                                }else{
                                    simulation.color="white"
                                    textSimulation.color="black"
                                }
                            }

                            onClicked: {
                                console.log("Simulated");
                            }
                        }
                    }

                    Rectangle{
                        id:quit
                        width: 374
                        height: 60
                        color:"white"
                        radius: 10

                        Text{
                            id:textQuit
                            text:"QUIT"
                            anchors.centerIn: parent
                            font.pointSize: 19
                        }

                        MouseArea{
                            id:mouseQuit
                            anchors.fill: parent
                            hoverEnabled:true

                            onHoveredChanged: {
                                if(containsMouse==true){
                                    quit.color="#0076AE"
                                    textQuit.color="white"
                                }else{
                                    quit.color="white"
                                    textQuit.color="black"
                                }
                            }

                            onClicked: {
                                Qt.quit()
                            }
                        }
                    }
                }
            }

            Rectangle{
                id:controllRectangle
                color:"#003366"
                x:474
                y:0
                width: 949
                height: 533
                border.color: "white"
                border.width: 4

                Text{
                    id:joy1
                    text: "JOY 1"
                    color: "white"
                    x:100
                    y:100
                    font.family: "Helvetica"
                    font.pointSize: 24
                    font.bold: true
                }

                Canvas {
                        id: leftArrow
                        width: 100
                        height: 100
                        x: 100+joy1.implicitWidth+20
                        y:70
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
                    width: 100
                    height: 100
                    x:100+joy1.implicitWidth+20+leftArrow.width+20
                    y:70
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
                    x:600
                    y:100
                    font.family: "Helvetica"
                    font.pointSize: 24
                    font.bold: true
                }

                Canvas {
                        id: upArrow
                        width: 100
                        height: 100
                        x:600+joy2.implicitWidth+20
                        y:10
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
                        width: 100
                        height: 100
                        x:600+joy2.implicitWidth+20
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
                    x:100
                    y:380
                    font.family: "Helvetica"
                    font.pointSize: 24
                    font.bold: true
                }

                Canvas {
                        id: upArrow3
                        width: 100
                        height: 100
                        x:joy3.x+joy3.implicitWidth+20
                        y:290
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
                        width: 100
                        height: 100
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
                    x:600
                    y:380
                    font.family: "Helvetica"
                    font.pointSize: 24
                    font.bold: true
                }

                Canvas {
                        id: leftArrow4
                        width: 100
                        height: 100
                        x:joy4.x+joy4.implicitWidth+20
                        y:350
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
                    width: 100
                    height: 100
                    x:joy4.x+joy4.implicitWidth+20+leftArrow4.width+20
                    y:350
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
                color:"#003366"
                x:474
                y:533
                width:949
                height:267
                border.color:"white"
                border.width: 4

                Column {
                    anchors.centerIn: parent
                    spacing: 50

                    Row {
                        spacing: 20

                        Text {
                            text: "Position"
                            color: "white"
                            font.family: "Helvetica"
                            font.pointSize: 18
                            font.bold: true
                            verticalAlignment: Text.AlignVCenter
                        }

                        Row {
                            spacing: 50

                            Rectangle {
                                width: 100
                                height: 40
                                border.color: "white"
                                border.width: 2
                                radius: 5
                                Text {
                                    anchors.centerIn: parent
                                    text: "x: 123"
                                    color: "black"
                                    font.pointSize: 20
                                }
                            }

                            Rectangle {
                                width: 100
                                height: 40
                                border.color: "white"
                                border.width: 2
                                radius: 5
                                Text {
                                    anchors.centerIn: parent
                                    text: "y: 456"
                                    color: "black"
                                    font.pointSize: 20
                                }
                            }

                            Rectangle {
                                width: 100
                                height: 40
                                border.color: "white"
                                border.width: 2
                                radius: 5
                                Text {
                                    anchors.centerIn: parent
                                    text: "z: 789"
                                    color: "black"
                                    font.pointSize: 20
                                }
                            }
                        }
                    }

                    Row {
                        spacing: 20

                        Text {
                            text: "Angle"
                            color: "white"
                            font.family: "Helvetica"
                            font.pointSize: 18
                            font.bold: true
                            verticalAlignment: Text.AlignVCenter
                        }

                        Row {
                            spacing: 50

                            Rectangle {
                                width: 100
                                height: 40
                                border.color: "white"
                                border.width: 2
                                radius: 5
                                Text {
                                    anchors.centerIn: parent
                                    text: "q1: 10"
                                    color: "black"
                                    font.pointSize: 20
                                }
                            }

                            Rectangle {
                                width: 100
                                height: 40
                                border.color: "white"
                                border.width: 2
                                radius: 5
                                Text {
                                    anchors.centerIn: parent
                                    text: "q2: 20"
                                    color: "black"
                                    font.pointSize: 20
                                }
                            }

                            Rectangle {
                                width: 100
                                height: 40
                                border.color: "white"
                                border.width: 2
                                radius: 5
                                Text {
                                    anchors.centerIn: parent
                                    text: "q3: 30"
                                    color: "black"
                                    font.pointSize: 20
                                }
                            }

                            Rectangle {
                                width: 100
                                height: 40
                                border.color: "white"
                                border.width: 2
                                radius: 5
                                Text {
                                    anchors.centerIn: parent
                                    text: "q4: 40"
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
            width: 800
            height: 750
            radius: 10
            color: "white"
            border.color: "gray"
            border.width: 2
            anchors.centerIn: parent

            // Shadow effect using a semi-transparent Rectangle
            Rectangle {
                width: 800
                height: 750
                radius: 10
                color: "black"
                opacity: 0.2
                anchors.centerIn: parent
                anchors.horizontalCenterOffset: 5
                anchors.verticalCenterOffset: 5
            }

            Column {
                spacing: 40
                anchors.centerIn: parent

                Row {
                    spacing: 40
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
                        width: 400 // Adjust width
                        height: 100
                        background: Rectangle {
                            color: "#E8EAF6"
                            radius: 10
                            border.color: "#0076AE"
                        }
                    }
                }

                Row {
                    spacing: 40
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
                        width: 400 // Adjust width
                        height: 100
                        background: Rectangle {
                            color: "#E8EAF6"
                            radius: 10
                            border.color: "#0076AE"
                        }
                    }
                }

                Row {
                    spacing: 40
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
                        width: 400 // Adjust width
                        height: 100
                        background: Rectangle {
                            color: "#E8EAF6"
                            radius: 10
                            border.color: "#0076AE"
                        }
                    }
                }

                Row {
                    spacing: 40
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
                        width: 400 // Adjust width
                        height: 100
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
                    width: 240 // Adjust width
                    height: 100
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
                        console.log("Q1: " + q1Field.text + ", Q2: " + q2Field.text + ", Q3: " + q3Field.text + ", Q4: " + q4Field.text);
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
            width: 800
            height: 600
            radius: 10
            color: "white"
            border.color: "gray"
            border.width: 2
            anchors.centerIn: parent

            // Shadow effect using a semi-transparent Rectangle
            Rectangle {
                width: 800
                height: 600
                radius: 10
                color: "black"
                opacity: 0.2
                anchors.centerIn: parent
                anchors.horizontalCenterOffset: 5
                anchors.verticalCenterOffset: 5
            }

            Column {
                spacing: 40
                anchors.centerIn: parent

                Row {
                    spacing: 40
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
                        width: 400 // Adjust width
                        height: 100
                        background: Rectangle {
                            color: "#E8EAF6"
                            radius: 10
                            border.color: "#0076AE"
                        }
                    }
                }

                Row {
                    spacing: 40
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
                        width: 400 // Adjust width
                        height: 100
                        background: Rectangle {
                            color: "#E8EAF6"
                            radius: 10
                            border.color: "#0076AE"
                        }
                    }
                }

                Row {
                    spacing: 40
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
                        width: 400 // Adjust width
                        height: 100
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
                    width: 240 // Adjust width
                    height: 100
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
                        console.log("X: " + xField.text + ", Y: " + yField.text + ", Z: " + zField.text);
                        windowmoveTCP.visible = false;
                        secondScreen.visible = true; // Assuming secondScreen is your main screen
                    }
                }
            }
        }
    }

}
