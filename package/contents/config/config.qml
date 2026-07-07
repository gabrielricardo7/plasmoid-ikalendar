/*
 * SPDX-FileCopyrightText: 2026 Gabriel Ricardo <gabrielricardo7@gmail.com>
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

import QtQuick
import org.kde.plasma.configuration

// qmllint disable unqualified
ConfigModel {
    ConfigCategory {
        name: i18n("General")
        icon: "configure"
        source: "configGeneral.qml"
    }
}
