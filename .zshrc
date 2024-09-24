#       -------
#       Aliases
#       -------

alias devv="cd /Users/do/dev"
alias l="ls" # List files in current directory
alias ll="ls -al" # List all files in current directory in long list format

#       -----------
#       Git Aliases
#       -----------

alias gitaa='git add .'
alias gitcm='git commit -m'
alias gits='git status'
alias gitb='git branch'
alias gitco='git checkout'



function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/(\1)/p'
}


setopt PROMPT_SUBST
export PROMPT='%F{white}  %F{cyan}~/%1d%F{green}$(parse_git_branch) %F{magenta}❯%f '
