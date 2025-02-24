alias ll='ls -la'
alias dev='cd /Users/do/Developer'

alias jc='javac -d ../bin'
alias jr='java -cp ../bin'
alias javap='source createJavaProject.zsh'

function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/ \1/p'
}


setopt PROMPT_SUBST

export PROMPT='%F{cyan} %1~%F{magenta}$(parse_git_branch)%F{green} ❯ %f'
