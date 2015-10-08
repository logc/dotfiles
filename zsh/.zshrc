#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
zstyle ':completion:*' special-dirs true

alias pdihub=hub
alias work="cd ~/Documents/code/work/connect/ && source bin/activate"

export GITHUB_HOST=pdihub.hi.inet
export GITHUB_USER=luis.osagomez@telefonica.com

function virtualbox () {
  command=$1
  vm_name=$2
  if [ $# -lt 2 ] && [ "${command}" != "list" ]
  then
	  echo "Usage: virtualbox [start | stop | list]"
  fi
  if [ "$command" '==' "start" ]
  then
	  VBoxManage startvm $vm_name --type headless
  fi
  if [ "$command" '==' "stop" ]
  then
	  VBoxManage controlvm $vm_name poweroff
  fi
  if [ "$command" '==' "list" ]
  then
	  VBoxManage list vms
  fi
}

function pick_random_file () {
  find . -type f | grep -v "[jpg,png,txt]" | gshuf -n1 | \
	  python -c "import sys; import re; filename = sys.stdin.read(); print re.sub('\s', '\\ ', filename.strip())" | \
	  xargs open
}
