# Win11-Requirement-Bypass 🚀

[![License: MIT](https://img.shields.io/badge/license-MIT-brightgreen.svg)](LICENSE)
[![Platform: Windows](https://img.shields.io/badge/platform-Windows-blue.svg)](#)
[![Stars flat](https://img.shields.io/github/stars/szymon-bonkowski/Win11-Requirement-Bypass?style=flat&color=FFD700)](https://github.com/szymon-bonkowski/Win11-Requirement-Bypass/stargazers)

<p align="center">
  <img src="https://upload.wikimedia.org/wikipedia/commons/8/87/Windows_logo_-_2021.svg" alt="Windows 11 Logo" width="120"/>
</p>

> Drop an ISO, mount it, and launch the Windows setup in **server** mode to bypass the Windows 11 hardware checks (TPM, Secure Boot, CPU).

---

### 🔥 What it does (TL;DR)
* Mounts a `.iso` as a read-only virtual drive.
* Waits for Windows to assign a drive letter.
* Verifies presence of `sources\setupprep.exe` and launches it with `/product server`.
* Dismounts the ISO after launching the installer.
* Automatically requests **Administrator** privileges when needed.

### 🚦 Quick start
**Drag & drop** the ISO file directly onto `DropISOHere.bat`.

### 🧠 Notes
* This tool **does not modify** your ISO or registry — it only runs the setup with a specific parameter (`/product server`).
* Works for both clean installs and upgrades.
* ⚠️ **Renaming Files:** If you rename `RunInstaller.ps1`, you **MUST** update **line 9** inside `DropISOHere.bat` to match the new name. Otherwise, the script will fail.

---
