#!/bin/bash

TOOL_DIR="$HOME/ansibro"
BIN_DIR="$TOOL_DIR/bin"
BASHRC="$HOME/.bashrc"

echo "🔧 Installiere AnsiBro den Ansible Assistant..."

# 1. PATH setzen, wenn noch nicht vorhanden
if ! grep -q "$BIN_DIR" <<< "$PATH"; then
  echo "➕ Füge $BIN_DIR zu PATH hinzu..."
  echo "export PATH=\"$BIN_DIR:\$PATH\"" >> "$BASHRC"
  export PATH="$BIN_DIR:$PATH"
else
  echo "✅ $BIN_DIR ist bereits im PATH."
fi

# 2. Aliase setzen
declare -A aliases=(
  ["pbdoc"]="bash $BIN_DIR/pbdoc"
  ["pbdoc-gen"]="bash $BIN_DIR/pbdoc-gen"
  ["neues-playbook"]="bash $BIN_DIR/neues-playbook"
)

for name in "${!aliases[@]}"; do
  if ! grep -q "alias $name=" "$BASHRC"; then
    echo "🔗 Setze Alias $name..."
    echo "alias $name='${aliases[$name]}'" >> "$BASHRC"
  else
    echo "✅ Alias $name existiert bereits."
  fi
done

# 3. Optional: Projektstruktur anlegen
read -p "❓ Möchtest du eine Beispielstruktur unter ~/ansible-infra anlegen? [y/N]: " structure
if [[ "$structure" =~ ^[Yy]$ ]]; then
  mkdir -p ~/ansible-infra/{playbooks,roles,inventories/dev/group_vars,templates,files}
  echo "---" > ~/ansible-infra/inventories/dev/group_vars/all.yml
  echo "[dev]" > ~/ansible-infra/inventories/dev/inventory
  touch ~/ansible-infra/ansible.cfg
  touch ~/ansible-infra/README.md
  echo "✅ Struktur erstellt unter ~/ansible-infra/"
else
  echo "⏩ Struktur wurde übersprungen."
fi

echo ""
echo "✅ Installation abgeschlossen."
echo "📢 Bitte führe 'source ~/.bashrc' aus oder öffne ein neues Terminal."
