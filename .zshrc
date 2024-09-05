PROMPT="%F{#66b993}➜%f "

alias l="ls" # List files in current directory
alias ll="ls -al" # List all files in current directory in long list format
alias devv="cd /Users/do/dev"

preexec() {
    last_command=$1
}




precmd() {
  if [[ $last_command != "javac"* && $last_command != "java"* ]]; then
    echo ""
    echo -e "\e[96mdir -\e[35m ~$(pwd)\e[0m"
    echo ""
  fi
}

chpwd() {
    clear
   # echo ""
   # echo -e "\e[35m~$(pwd)\e[0m"
   # echo ""
}

autoload -Uz compinit
compinit

zstyle ':completion:*' menu select


