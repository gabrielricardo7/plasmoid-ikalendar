/*
 * SPDX-FileCopyrightText: 2026 Gabriel Ricardo <gabrielricardo7@gmail.com>
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

import QtQuick
import QtQuick.Layouts

// qmllint disable unqualified
Item {
    id: widget

    Rectangle {
        anchors.fill: parent
        border.width: 0.5
        border.color: root.p.accent
        color: root.darkMode ? "#000" : "#fff"
        radius: root.radiusValue

        ColumnLayout {
            anchors.fill: parent
            spacing: 0

            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: root.height * 0.32
                topLeftRadius: root.radiusValue
                topRightRadius: root.radiusValue
                color: root.p.accent

                Text {
                    anchors.centerIn: parent
                    font.family: fontBlack.name
                    font.weight: Font.Black
                    font.letterSpacing: 1
                    font.pixelSize: parent.height * 0.64
                    text: root.month
                    color: root.p.text
                }
            }
            Item {
                Layout.fillWidth: true
                Layout.fillHeight: true

                Text {
                    anchors.centerIn: parent
                    font.family: fontRegular.name
                    font.pixelSize: Math.min(root.width, root.height) * 0.64
                    text: root.now.getDate()
                    color: root.darkMode ? "#fff" : "#000"
                }
            }
        }
    }
}
