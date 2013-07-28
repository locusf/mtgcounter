import QtQuick 1.1
import Sailfish.Silica 1.0

Page {
    id: page
    
    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent
        
        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView
        PullDownMenu {
            MenuItem {
                text: "New game"
                onClicked: console.log("TODO")
            }
        }
        
        // Tell SilicaFlickable the height of its content.
        contentHeight: childrenRect.height
        Row {
            width: parent.width
            spacing: 2
            CounterColumn {
                playername: "Me"
            }
            CounterColumn {
                playername: "Opponent"
            }
        }
    }
}

