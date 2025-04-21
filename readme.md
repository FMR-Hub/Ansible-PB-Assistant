# 🔧 Ansible-PB-Assistant

____________________             _____                .__         __                 __   
\______   \______   \           /  _  \   ______ _____|__| ______/  |_  ____   _____/  |_ 
 |     ___/|    |  _/  ______  /  /_\  \ /  ___//  ___/  |/  ___|   __\/ __ \ /    \   __\
 |    |    |    |   \ /_____/ /    |    \\___ \ \___ \|  |\___ \ |  | \  ___/|   |  \  |  
 |____|    |______  /         \____|__  /____  >____  >__/____  >|__|  \___  >___|  /__|  
                  \/                  \/     \/     \/        \/           \/     \/      

Ein leichtgewichtiges Toolset zur Automatisierung und Dokumentation von Ansible-Projekten – für Admins, Entwickler & Infrastrukturbauer.

> 📦 Entwickelt von [FMR-Hub](https://github.com/FMR-Hub)  
> 🛠️ Kompatibel mit jeder Standard-Ansible-Projektstruktur

---

## 🚀 Features

- `pbdoc`: Dokumentiert alle Playbooks mit `@meta` & `@tag` Kommentaren
- `pbdoc-gen`: Schreibt die Auswertung von `pbdoc` automatisch in die `README.md` und pusht zu Git
- `neues-playbook`: Erstellt neue Playbooks mit einer einheitlichen Vorlage (inkl. Metadaten)
- Optional: Erstellt direkt eine Beispiel-Ansible-Projektstruktur (inkl. `playbooks/`, `roles/` etc.)

---

## ⚙️ Installation

```bash
git clone git@github.com:FMR-Hub/Ansible-PB-Assistant.git
cd Ansible-PB-Assistant
./install.sh
source ~/.bashrc  # oder Terminal neu starten
