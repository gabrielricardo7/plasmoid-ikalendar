/*
 * SPDX-FileCopyrightText: 2026 Gabriel Ricardo <gabrielricardo7@gmail.com>
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

import QtQuick
import QtQuick.Controls
import org.kde.kcmutils as KCM
import org.kde.kirigami as Kirigami

// qmllint disable unqualified
KCM.SimpleKCM {
    id: root

    property alias cfg_darkMode: darkModeBox.checked
    property alias cfg_themeMode: themeCombo.currentValue
    property alias cfg_weekNumbers: weekNumbersBox.checked
    property alias cfg_firstDay: firstDayCombo.currentValue
    property bool cfg_darkModeDefault: configuration.darkMode
    property string cfg_themeModeDefault: configuration.themeMode
    property bool cfg_weekNumbersDefault: configuration.weekNumbers
    property int cfg_firstDayDefault: configuration.firstDay

    Kirigami.FormLayout {
        anchors.right: parent.right
        anchors.left: parent.left

        Kirigami.Separator {
            Kirigami.FormData.isSection: true
            Kirigami.FormData.label: i18n("Appearance")
        }
        ComboBox {
            id: themeCombo

            Kirigami.FormData.label: i18n("Accent colour:")

            textRole: "text"
            valueRole: "value"
            model: [
                {
                    text: i18n("Auto (System)"),
                    value: "auto"
                },
                {
                    text: i18n("Blue"),
                    value: "blue"
                },
                {
                    text: i18n("Green"),
                    value: "green"
                },
                {
                    text: i18n("Orange"),
                    value: "orange"
                },
                {
                    text: i18n("Purple"),
                    value: "purple"
                },
                {
                    text: i18n("Red"),
                    value: "red"
                },
                {
                    text: i18n("Yellow"),
                    value: "yellow"
                }
            ]
            onActivated: index => {
                cfg_themeMode = model[index].value;
            }
            Component.onCompleted: {
                for (let i = 0; i < model.length; ++i) {
                    if (model[i].value === cfg_themeMode) {
                        currentIndex = i;
                        break;
                    }
                }
            }
        }
        CheckBox {
            id: darkModeBox
            text: i18n("Use dark mode")
        }
        Kirigami.Separator {
            Kirigami.FormData.isSection: true
            Kirigami.FormData.label: i18n("Calendar")
        }
        CheckBox {
            id: weekNumbersBox
            text: i18n("Show week numbers")
        }
        ComboBox {
            id: firstDayCombo

            Kirigami.FormData.label: i18n("First day of week:")

            textRole: "text"
            valueRole: "value"
            model: [
                {
                    text: i18n("Use region defaults"),
                    value: Qt.locale().firstDayOfWeek
                },
                {
                    text: i18n("Sunday"),
                    value: Locale.Sunday
                },
                {
                    text: i18n("Monday"),
                    value: Locale.Monday
                },
                {
                    text: i18n("Tuesday"),
                    value: Locale.Tuesday
                },
                {
                    text: i18n("Wednesday"),
                    value: Locale.Wednesday
                },
                {
                    text: i18n("Thursday"),
                    value: Locale.Thursday
                },
                {
                    text: i18n("Friday"),
                    value: Locale.Friday
                },
                {
                    text: i18n("Saturday"),
                    value: Locale.Saturday
                }
            ]
            onActivated: index => {
                cfg_firstDay = model[index].value;
            }
            Component.onCompleted: {
                for (let i = 0; i < model.length; ++i) {
                    if (model[i].value === cfg_firstDay) {
                        currentIndex = i;
                        break;
                    }
                }
            }
        }
    }
}
