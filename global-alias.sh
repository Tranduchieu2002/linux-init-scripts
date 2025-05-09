# Aliases to use with Global Alias
#------------------------------------------------------
# Automatically Expanding Global Aliases (Space key to expand)
# references: http://blog.patshead.com/2012/11/automatically-expaning-zsh-global-aliases---simplified.html
# video: https://www.youtube.com/watch?v=WTTIGjZAMGg
# import this file into the .zshrc fie with '. ~/.zsh_aliases'

# file shit
alias -g rmrf='rm -rf '

# kill port
alias -g kill='npx kill-port '
alias -g killp='pnpx kill-port '

# brew
alias -g bi='HOMEBREW_NO_AUTO_UPDATE=1 brew install '

# tree
alias -g tdl="tree -a -I 'node_modules|.svelte-kit|.git' --dirsfirst"

# direnv
alias -g di='echo dotenv > .envrc && touch .env && direnv allow'

# folder locations
alias -g r='cd /home/scott/repos'

# navigation
alias -g c='code .'
alias -g s='cursor .'
alias -g e=exit
alias -g ls='ls -lart'

# git commands
alias -g g=git
alias -g gbl='branch -a'
alias -g gcl='git clone '
alias -g pp='git pull --rebase && git push'
alias -g gpr='git pull-request -b '
alias -g ga='git add .'
alias -g gc='git commit -m '
alias -g gagc='git add . && git commit -m '
alias -g gbr='git browse'
alias -g grb='git rebase -'
alias -g gs='git status'
alias -g gb='git checkout -b'
alias -g grc='git rebase --continue'
alias -g grs='git rebase --skip'
alias -g grv='git remote -v'
alias -g gp='git fetch -p'
alias -g gcom='git checkout main'
alias -g gcol='git checkout -'

# Git Removed Branches
alias -g grb='npx git-removed-branches'

# Hub commands
alias -g gpr='git pull-request -b '
alias -g gcr='git create'

# yarn commands
alias -g ya='yarn add'
alias -g yad='yarn add -D'
alias -g yb='yarn build'
alias -g yd='yarn dev'
alias -g yg='yarn go'
alias -g yga='yarn global add'
alias -g yr='yarn remove'
alias -g ys='yarn start'
alias -g yyb='yarn && yarn build'
alias -g yyd='yarn && yarn dev'
alias -g yui='yarn upgrade-interactive --latest'
alias -g ygui='yarn global upgrade-interactive --latest'
alias -g yyd='yarn && yarn dev'
alias -g ylg='yarn global list'

# npm commands
alias -g nr='npm run'
alias -g nrs='npm run start'
alias -g ni='npm i'
alias -g nid='npm i -D'
alias -g nig='npm i -g'
alias -g no='npm outdated'
alias -g nog='npm outdated -g --depth=0'
alias -g nr='npm run'
alias -g nrb='npm run build'
alias -g nrd='npm run dev'
alias -g nrf='npm run format'
alias -g nrs='npm run start'
alias -g nu='npm un'
alias -g nug='npm -g un'
alias -g nlg='npm list -g --depth=0'

# pnpm commands
alias -g pr='pnpm run'
alias -g prs='pnpm run start'
alias -g pi='pnpm i'
alias -g pid='pnpm i -D'
alias -g pig='pnpm i -g'
alias -g po='pnpm outdated'
alias -g pog='pnpm outdated -g --depth=0'
alias -g pr='pnpm run'
alias -g prb='pnpm run build'
alias -g prd='pnpm run dev'
alias -g prf='pnpm run format'
alias -g prs='pnpm run start'
alias -g pu='pnpm un'
alias -g pug='pnpm -g un'
alias -g plg='pnpm list -g --depth=0'
alias -g pc='pnpm create '

# nvm
alias -g nln='nvm install-latest-npm'

# volta
alias -g vi='volta install'
alias -g vl='volta list'

alias ll='ls -lah'
alias la='ls -A'
alias l='ls -CF'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Git aliases
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gca='git commit --amend'
alias gp='git push'
alias gpo='git push origin'
alias gpl='git pull'
alias gco='git checkout'
alias gb='git branch'
alias gl='git log --oneline --graph --decorate'

# System/Utility
alias cls='clear'
alias update='sudo apt update && sudo apt upgrade -y'
alias ports='lsof -i -P -n | grep LISTEN'
alias myip='curl ifconfig.me'
alias zshreload='source ~/.zshrc'

# Development
alias serve='python3 -m http.server'
alias nrd='npm run dev'
alias nrb='npm run build'
alias ni='npm install'
alias nr='npm run'

# Docker
alias dps='docker ps'
alias dcu='docker compose up'
alias dcd='docker compose down'
alias dcb='docker compose build'

# NVM / Node
alias nvml='nvm list'
alias nvmu='nvm use'
