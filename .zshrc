alias ll='ls -la'
alias utb='cd /Users/do/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/Utbildning/DH2642'

function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/→[\1]/p'
}


setopt PROMPT_SUBST
export PROMPT='%F{white}  %F{cyan}~/%1d%F{green} $(parse_git_branch) %F{magenta}❯ %f'

