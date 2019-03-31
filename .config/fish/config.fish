set -U FZF_LEGACY_KEYBINDINGS 0

functions --copy cd standard_cd

function cd
  standard_cd $argv; and ls
end
