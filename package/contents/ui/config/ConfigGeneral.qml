import QtQuick 2.0
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1
import org.kde.plasma.components 2.0 as PlasmaComponents
import org.kde.plasma.components 3.0 as PlasmaComponents3
import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.kirigami 2.9 as Kirigami

Item {
    id: root

    property alias cfg_showNewYearText: showNewYearText.checked
    property alias cfg_newYearTextSize: newYearTextSize.value
    property alias cfg_showCatolicChristmasText: showCatolicChristmasText.checked
    property alias cfg_catolicChristmasTextSize: catolicChristmasTextSize.value
    property alias cfg_showOrthodoxChristmasText: showOrthodoxChristmasText.checked
    property alias cfg_orthodoxChristmasTextSize: orthodoxChristmasTextSize.value

    /*ColumnLayout {
        RowLayout {
            PlasmaComponents.Label {
                text: "Show text about New Year"
            }

            PlasmaComponents.CheckBox {
                id: showNewYearText

                checked: true
            }

        }
        RowLayout {
            PlasmaComponents.Label {
                text: "New Year font size"
            }

            SpinBox {
                id: newYearTextSize

                enabled: showNewYearText.checked
                value: 16
                minimumValue: 10
                maximumValue: 72
                stepSize: 1
                suffix: " pt"
            }
        }
        RowLayout {
            PlasmaComponents.Label {
                text: "Show text about Catolic Christmas"
            }

            PlasmaComponents.CheckBox {
                id: showCatolicChristmasText

                checked: true
            }

        }
        RowLayout {
            PlasmaComponents.Label {
                text: "Catolic Christmas font size"
            }

            SpinBox {
                id: catolicChristmasTextSize

                enabled: showCatolicChristmasText.checked
                value: 16
                minimumValue: 10
                maximumValue: 72
                stepSize: 1
                suffix: " pt"
            }
        }
        RowLayout {
            PlasmaComponents.Label {
                text: "Show text about Orthodox Christmas"
            }

            PlasmaComponents.CheckBox {
                id: showOrthodoxChristmasText

                checked: true
            }

        }
        RowLayout {
            PlasmaComponents.Label {
                text: "Orthodox Christmas font size"
            }

            SpinBox {
                id: orthodoxChristmasTextSize

                enabled: showOrthodoxChristmasText.checked
                value: 16
                minimumValue: 10
                maximumValue: 72
                stepSize: 1
                suffix: " pt"
            }
        }
    }*/
    Kirigami.FormLayout { 
        
        PlasmaComponents.CheckBox {
            id: showNewYearText

            Kirigami.FormData.label: i18n("Show text about New Year:")
            checked: true
        }
        SpinBox {
            id: newYearTextSize
            
            Kirigami.FormData.label: i18n("New Year font size:")
            enabled: showNewYearText.checked
            value: 16
            minimumValue: 10
            maximumValue: 72
            stepSize: 1
            suffix: " pt"
        }
        PlasmaComponents.CheckBox {
            id: showCatolicChristmasText

            Kirigami.FormData.label: i18n("Show text about Catolic Christmas:")
            checked: false
        }
        SpinBox {
            id: catolicChristmasTextSize
            
            Kirigami.FormData.label: i18n("Catolic Christmas font size:")
            enabled: showCatolicChristmasText.checked
            value: 16
            minimumValue: 10
            maximumValue: 72
            stepSize: 1
            suffix: " pt"
        }
        PlasmaComponents.CheckBox {
            id: showOrthodoxChristmasText

            Kirigami.FormData.label: i18n("Show text about Orthodox Christmas:")
            checked: false
        }
        SpinBox {
            id: orthodoxChristmasTextSize
            
            Kirigami.FormData.label: i18n("Orthodox Christmas font size:")
            enabled: showOrthodoxChristmasText.checked
            value: 16
            minimumValue: 10
            maximumValue: 72
            stepSize: 1
            suffix: " pt"
        }

    }
}
