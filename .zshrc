alias ll='ls -pla'
alias dev='cd /Users/do/Developer'
alias python='python3'
alias pip='pip3'

function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/ %F{green} \1/p'
}

setopt PROMPT_SUBST

export PROMPT='%F{blue} %~$(parse_git_branch)%F{magenta} ❯ %f'
