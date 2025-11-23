# Win11-Requirement-Bypass 🚀  

[![License: MIT](https://img.shields.io/badge/license-MIT-brightgreen.svg)](LICENSE)
[![Platform: Windows](https://img.shields.io/badge/platform-Windows-blue.svg)](#)
[![Stars flat](https://img.shields.io/github/stars/szymon-bonkowski/Win11-Requirement-Bypass?style=flat&color=FFD700)](https://github.com/szymon-bonkowski/Win11-Requirement-Bypass/stargazers)


<p align="center">
  <img src="https://upload.wikimedia.org/wikipedia/commons/8/87/Windows_logo_-_2021.svg" alt="Windows 11 Logo" width="120"/>
</p>

## 🇺🇸 English version

> Drop an ISO, mount it, and launch the Windows setup in **server** mode to bypass the Windows 11 hardware checks (TPM, Secure Boot, CPU).  

---

### 🔥 What it does (TL;DR)
- Mounts a `.iso` as a read-only virtual drive.  
- Waits for Windows to assign a drive letter.  
- Verifies presence of `sources\setupprep.exe` and launches it with `/product server`.  
- Dismounts the ISO after launching the installer.  
- Automatically requests **Administrator** privileges when needed.


### 🚦 Quick start
**Drag & drop** the ISO onto `DropISOHere.bat`


### 🧠 Notes
- This tool doesn’t modify your ISO or registry — it only runs setup with a specific parameter.  
- Works for both clean installs and upgrades.  
- ⚠️ **Renaming Files:** If you rename `RunInstaller.ps1`, you **MUST** update **line 9** inside `DropISOHere.bat` to match the new name. Otherwise, the script will fail.


## 🇵🇱 Wersja polska

> Upuść obraz ISO, zamontuj go i uruchom instalator Windows w trybie **server**, aby pominąć wymagania sprzętowe Windows 11 (TPM, Secure Boot, CPU).  
> Prosty, niezawodny i estetyczny.

---

### 🔥 Co robi (w skrócie)
- Montuje plik `.iso` jako wirtualny napęd tylko do odczytu.  
- Czeka, aż system przypisze literę dysku.  
- Sprawdza obecność `sources\setupprep.exe` i uruchamia go z parametrem `/product server`.  
- Odmontowuje obraz po uruchomieniu instalatora.  
- Automatycznie prosi o uprawnienia **Administratora**, jeśli są potrzebne.


### 🚦 Szybki start
**Przeciągnij i upuść** obraz ISO na `DropISOHere.bat`


### 🧠 Uwagi
- Narzędzie nie modyfikuje obrazu ISO ani rejestru — uruchamia instalator z odpowiednim parametrem.  
- Działa zarówno przy czystej instalacji, jak i aktualizacji.  
- ⚠️ **Zmiana nazw plików:** Jeśli zmienisz nazwę pliku `RunInstaller.ps1`, **MUSISZ** zaktualizować **linię 9** wewnątrz pliku `DropISOHere.bat`, wpisując tam nową nazwę. W przeciwnym razie skrypt przestanie działać.

---
