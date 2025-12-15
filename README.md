<div align="center">
    <img src="https://github.com/user-attachments/assets/d0dc4add-cad4-4715-abe7-bc0330b50646" height="600px" width="2200px" alt="logo" />
</div><br>

<p align="center">
    <a href="https://www.reddit.com/r/unixporn/comments/1iol9mr/xfce_the_creation_of_adam/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button">
        <img src="https://img.shields.io/badge/REDDIT%20%7C%20600%2B-FF4500?style=for-the-badge&logo=reddit&logoColor=white" alt="REDDIT">
    </a>
    <a href="https://github.com/RayhaanFay/xfce-creation-of-adam/blob/main/LICENSE">
        <img src="https://img.shields.io/badge/MIT%20LICENSE-9966CC?style=for-the-badge&logo=opensourceinitiative&logoColor=white" alt="MIT License">
    </a>
</p>

## ✨ Preview

<div align="center">
    <img width="3264" height="1836" alt="screen" src="https://github.com/user-attachments/assets/d8b4474c-bbcc-497e-a041-aed8cbf73d64" />
</div>

## 🛠️ Installation

### Prerequisites
Before installing, ensure you have the necessary plugins for the scripts to work (specifically `xfce4-genmon-plugin` for the taskbar stats).

**Debian/Ubuntu:**
```bash
sudo apt update
sudo apt install xfce4-genmon-plugin xfce4-goodies bc
```

### Clone the Repository
```bash
git clone https://github.com/RayhaanFay/xfce-creation-of-adam/
cd xfce-creation-of-adam/
```

### Install Assets
<p>This step installs the fonts, themes, icons, and scripts</p>

```bash
# Create necessary directories
mkdir -p ~/.themes ~/.icons ~/.local/share/fonts ~/.scripts

# Copy assets
cp -r themes/* ~/.themes/
cp -r icons/* ~/.icons/
cp -r fonts/* ~/.local/share/fonts/
cp -r scripts/* ~/.scripts/

# Make scripts executable
chmod +x ~/.scripts/*

# Rebuild font cache so the system sees the new fonts
fc-cache -fv
```

### Setup Wallpapers

```bash
mkdir -p ~/Pictures/Wallpapers
cp -r wallpaper/* ~/Pictures/Wallpapers/
```

### Configuration

To make your desktop look like the preview, apply the settings manually:

- **Theme & Icons:**
  - Open **Settings Manager > Appearance**.
  - Select **Ghost-Mantis** (Theme) and **Nordzy-cyan-dark-mod** (icons).

- **Window Borders:**
  - Open **Settings Manager > Window Manager**.
  - Select **Get-Stickbugged**.

- **Panel Scripts (CPU/Ram/Net):**
  - Right-click your panel > **Panel** > **Add New Items...**
  - Search for and add **Generic Monitor**.
  - Right-click the new item > **Properties**.
  - In the **Command** field, enter the path to the script (e.g.)
     ```bash
     /home/YOUR_USERNAME/.scripts/cpu.sh
     ```
  - Uncheck **"Label"** to display only the script output.
  - Repeat for Memory and Network scripts.

- **Wallpaper:**
  - Open **Settings Manager > Desktop**.
  - Change the Folder option to: ~/Pictures/Wallpapers/
  - Select The Wallpaper

> [!NOTE]
> Feel free to reach out to me on Reddit if you have any questions or need assistance. I'm happy to help!
<br/>

## 📜 Credits

This setup wouldn't be possible without the amazing work of the open-source community.

* **GTK Theme:** [Ghost-Mantis](https://gitlab.com/rlyx/awful-dotfiles/-/tree/master/.themes?ref_type=heads) by u/\_rlyx\_
* **Window Manager Theme:** [Get-Stickbugged](https://gitlab.com/rlyx/awful-dotfiles/-/tree/master/.themes?ref_type=heads) by u/\_rlyx\_
* **Icon Pack:** [Nordzy-cyan-dark-mod](https://www.pling.com/p/1908883/) (Modified version of [Nordzy Icons](https://github.com/alvatip/Nordzy-icon))
* **Wallpaper:** [The Creation of Adam](https://x.com/punsbymann/status/1860315813032427662?mcp_token=eyJwaWQiOjE0MjEzODQsInNpZCI6MTQxOTI0NjEyLCJheCI6Ijg2N2Y5OTM0NDdmYzYwOTE5OTUzNDQ3NGZmNTI4Mjc3IiwidHMiOjE3NjU4MzAxNTYsImV4cCI6MTc2ODI0OTM1Nn0.5i5-5ecyjZZctemdUKCPfGU6-8Ie7edReGETPnGsL2g&fbclid=PAT01DUAOtTZ5leHRuA2FlbQIxMABzcnRjBmFwcF9pZA81NjcwNjczNDMzNTI0MjcAAaepT2DoavXmwMGH6HqogZI1tAPStHuE7u0_Ve8iH4Wqr9GPMzZ37q0pimcl9g_aem_e6oKSqloAglHzsNYDCQPlw)
* **Scripts:** Modified version of the original scripts from [xfce4-genmon-scripts](https://github.com/xtonousou/xfce4-genmon-scripts)

> **Note:** If I have used your work and missed a credit, please open an issue or contact me so I can rectify it immediately!
