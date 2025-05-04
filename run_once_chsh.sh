#!/bin/sh

# If user included in /etc/passwd and its shell is not zsh, change it to zsh
if [ -f /etc/passwd ]; then
  if grep -q "^$USER:" /etc/passwd; then
    current_shell=$(grep "^$USER:" /etc/passwd | cut -d: -f7)
    if [ "$current_shell" != "/bin/zsh" ]; then
      echo Set default shell to zsh
      chsh -s /bin/zsh || true
    fi
  else
    echo "User $USER not found in /etc/passwd, skipping chsh"
  fi
fi
