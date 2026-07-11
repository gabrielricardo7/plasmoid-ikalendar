/*
 * SPDX-FileCopyrightText: 2026 Gabriel Ricardo <gabrielricardo7@gmail.com>
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

import QtQuick
import QtQuick.Layouts
import org.kde.kirigami as Kirigami
import org.kde.plasma.workspace.calendar

// qmllint disable unqualified
Item {
    id: popup

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: Kirigami.Units.smallSpacing
        spacing: Kirigami.Units.smallSpacing

        MonthView {
            id: calendarView
            
            Layout.fillWidth: true
            Layout.fillHeight: true
            today: root.now
            currentDate: root.now
            showWeekNumbers: true
        }
    }
}
