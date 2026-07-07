/*
 * SPDX-FileCopyrightText: 2026 Gabriel Ricardo <gabrielricardo7@gmail.com>
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

pragma ComponentBehavior: Bound

import QtQuick
import org.kde.plasma.plasmoid
import org.kde.kirigami as Kirigami

PlasmoidItem {
    id: root

    property date now: new Date()
    property string month: Qt.locale().monthName(now.getMonth(), Locale.ShortFormat).toUpperCase()
    property real radiusValue: width * 0.20
    property string mode: root.Plasmoid.configuration.themeMode
    property bool darkMode: root.Plasmoid.configuration.darkMode
    property var p: setPalette()

    width: 96
    height: 96

    readonly property double aspectRatio: 1.0

    compactRepresentation: Item {}
    FontLoader {
        id: fontBlack
        source: "../fonts/Inter-Black.ttf"
    }
    FontLoader {
        id: fontRegular
        source: "../fonts/Inter-Regular.ttf"
    }
    fullRepresentation: Widget {}
    onWidthChanged: {
        let targetHeight = width;
        if (height !== targetHeight) {
            height = targetHeight;
        }
    }
    onHeightChanged: {
        let targetWidth = height;
        if (width !== targetWidth) {
            width = targetWidth;
        }
    }
    preferredRepresentation: fullRepresentation
    Timer {
        interval: 60000
        running: true
        repeat: true
        onTriggered: root.now = new Date()
    }
    function setPalette() {
        switch (mode) {
        case "blue":
            return {
                accent: "#0A84FF",
                text: "#fff"
            };
        case "green":
            return {
                accent: "#32D74B",
                text: "#000"
            };
        case "orange":
            return {
                accent: "#FF9500",
                text: "#000"
            };
        case "purple":
            return {
                accent: "#AF52DE",
                text: "#fff"
            };
        case "red":
            return {
                accent: "#FF3B30",
                text: "#fff"
            };
        case "yellow":
            return {
                accent: "#FFD60A",
                text: "#000"
            };
        case "auto":
        default:
            return {
                accent: Kirigami.Theme.highlightColor,
                text: Kirigami.Theme.highlightedTextColor
            };
        }
    }
}
