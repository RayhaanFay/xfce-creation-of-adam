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
  - Change Directory To Look Into /Pictures/Wallpapers/
  - Select The Wallpaper

<br/>

> [!NOTE]
> Feel free to reach out to me on Reddit if you have any questions or need assistance. I'm happy to help!
<br/>
