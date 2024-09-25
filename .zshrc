#       -------
#       Aliases
#       -------


alias devv="cd /Users/do/dev"
alias l="ls" # List files in current directory
alias ll="ls -al" # List all files in current directory in long list format

#       -----------
#       Git Aliases
#       -----------

alias gaa='git add .'
alias gcm='git commit -m'
alias gs='git status'
alias gb='git branch'
alias gco='git checkout'
alias gpsh='git push'


function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/(\1)/p'
}


setopt PROMPT_SUBST
export PROMPT='%F{white}  %F{cyan}~/%1d%F{green}$(parse_git_branch) %F{magenta}❯%f '
