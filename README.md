# iKalendar

![📅](./screenshots/plasmoid-ikalendar-v1.0.0.png)

iKalendar is a widget for KDE Plasma 6 that dynamically displays the current date (abbreviated month and day);\
It's a macOS-inspired calendar badge.

## 💻 Install

### Option 1: Graphical User Interface (Recommended)

1. Go to the **[Releases](../../releases)** page and download the `[plasmoid-ikalendar]-v#.#.#.plasmoid` file.
2. **Enter Edit Mode**: Right-click your desktop or panel and select `[Add or Manage Widgets...]`
3. Click on `[Get New...]` -> `[Install Widget From Local File...]`
4. **Select Plasmoid File** and click `[Open]`.

### Option 2: Terminal or Command Line Interface (Advanced)

- Grab the `.plasmoid` from the **[Latest Release](../../releases/latest)** and:

```bash
kpackagetool6 --type Plasma/Applet --install plasmoid-ikalendar-*.plasmoid
```

- Or clone the repository and install it using the KDE package tool:

```bash
git clone https://github.com/gabrielricardo7/plasmoid-ikalendar.git
kpackagetool6 --type Plasma/Applet --install plasmoid-ikalendar/package/
```

> [!TIP]
> *After running the command, restart Plasma or add the widget from the system widget list.*

## 🛠️ Configuration/Settings

- [x] **Accent colour:** ${\color{#FFD60A}█ yellow}$, ${\color{#FF3B30}█ red}$, ${\color{#AF52DE}█ purple}$, ${\color{#FF9500}█ orange}$, ${\color{#32D74B}█ green}$, ${\color{#0A84FF}█ blue}$ or █ auto (system).
- [ ] **Use dark mode** *(optional, **default:** `false`)*.

## 🤝 Contributing

Feel free to open issues or submit pull requests.

## 📄 Licensing & Third-Party Assets

This project is distributed under the **GPL-3.0-or-later** licence. See the [LICENSE](LICENSE) file for details.

It bundles the following third-party components:

- **Inter Font Family** by Rasmus Andersson. Used under the [SIL Open Font License 1.1](package/contents/fonts/OFL-1.1.txt). Source: [GitHub](https://github.com/rsms/inter).
