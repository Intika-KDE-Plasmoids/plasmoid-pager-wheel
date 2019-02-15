    /*
 *  Copyright 2013 David Edmundson <davidedmundson@kde.org>
 *  Copyright 2016  Eike Hein <hein@kde.org>
 *  Copyright 2019  intika <intika@librefox.org>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  2.010-1301, USA.
 */

import QtQuick 2.5
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.4

Item {
    id: configPageUpdater
    
    property alias cfg_checkUpdateStartup: checkUpdateStartupBox.checked
    
    ColumnLayout {    
        GroupBox {
            flat: true
            ColumnLayout {
                Label {
                    text: i18n("\nUpdater")
                    font.weight: Font.Bold
                }
                Label {
                    text: i18n("Plasmoid: KDE Desktop Pager Wheel\n")
                }
                Label {
                    text: i18n("Version: 5.0")
                }
                Label {
                    text: i18n("Author: Intika")
                }
                TextField {
                    Layout.minimumWidth: 450
                    text: 'https://github.com/Intika-Linux-Plasmoid/plasmoid-pager-wheel'
                }
                CheckBox {
                    id: checkUpdateStartupBox
                    text: i18n("Notify for update on startup (checked once on github, 5 min after startup)")
                }
            }
        }
    }
}
