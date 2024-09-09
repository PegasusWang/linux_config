 # your own env, in your .zshrc, source this file

# Fix python crash with vim and YCM plugin
export DYLD_FORCE_FLAT_NAMESPACE=1
export DISABLE_AUTO_TITLE='true'
export INTELLIJ_HOME=/Applications/IntelliJ\ IDEA\ 13\ CE.app/Contents/MacOS/
#PATH=$IDEA_HOME $PATH
export PYTHONIOENCODING=utf-8
export EDITOR='nvim'
export LC_ALL=zh_CN.UTF-8
# Ignore files specified by .gitignore https://github.com/junegunn/fzf.vim/issues/121
export FZF_DEFAULT_COMMAND='ag -g ""'


alias e='exa'
alias p='pipes.sh'
alias no='node '
alias q='exit'
alias quit='exit'
alias apache='sudo apachectl start'
alias sub='open -a "Sublime Text"'
alias val='valgrind '
alias cdh='cd ~/Hexo'
alias cdl='cd /Users/pegasus/Works/leancloud_demo/; source ./bin/activate'
alias cdj='cd ~/Hexo/themes/jacman'
alias cdb='cd ~/Hexo/source/_posts'
alias cdd='cd ~/Hexo/source/_drafts'
# nvm use 16.15.1; npm install -g curlconverter
alias curl2py='pbpaste | curlconverter - | pbcopy'
alias curl2go='pbpaste | curlconverter - --language go | pbcopy'
alias cds='cd /Users/pegasus/Program/Sites'
alias cdlib='cd /Users/pegasus/Program/py_test/lib/python2.7/site-packages'
alias cdlib3='cd /Users/pegasus/Program/py3.5_test/lib/python3.5/site-packages'
alias cdp2='cd /Users/pegasus/Program/py_test; source ./bin/activate;'
alias cdw='cd /Users/pegasus/Program/py_test/WeiboApp'
alias cdp='cd /Users/pegasus/Program/py3.5_test; source ./bin/activate;'
alias spy='pyenv activate py_3.5.2'
alias ce='crontab -e '
alias cl='crontab -l '
alias ed='eval $(docker-machine env default)'
alias lo='locate '
alias lc='leetcode ' # https://github.com/skygragon/leetcode-cli
alias lcg='leetcode show -x -g -l python'
alias lcm='leetcode show -x -g -l mysql'
alias lcgo='leetcode show -x -g -l golang'
function lcso() { leetcode show "$1" --solution } # leetcode show 1 --solution
alias lct='leetcode test '
alias lcs='leetcode submit '
alias loc="open http://127.0.0.1"
alias lsn='ls | nl'
alias mp="mitmproxy -p8888"
alias grm='git rebase master'
alias gitresetsoft='git reset --soft HEAD^'
alias gclone='git clone '
alias gdc='git diff --cached'
alias gdm='git diff master'
alias gs='git status -s'
alias gh="open \`git remote -v | grep fetch | head -1 | cut -f2 | cut -d' ' -f1 | sed -e's/git@/http:\/\//' -e's/\.git$//' | sed -E 's/(\/\/[^:]*):/\1\//'\`" # open github
alias gmg='git commit -m'
alias gpo='git push origin '
alias gpom='git push origin master'
alias glom='git pull origin master'
alias grebase2='git rebase -i HEAD~~'
alias gnew='function _new() { git checkout -b $1; git pull origin $1 }; _new'
alias hexog='hexo g'
alias hs='hexo s'
alias hn='hexo n'
alias hd='sudo hexo d'
alias his='history'
alias exi='exit'
alias ctags='/usr/local/bin/ctags'
alias mc='make clean'
alias py='python '
alias py3='python3 '
alias py3s='python3.6 -m http.server'
alias ipy='ipython'
alias ci="vi "
alias vim="vi"
# https://michaeluloth.com/neovim-switch-configs/
alias nvi="nvim "
alias nnvi='NVIM_APPNAME=nvim_nococ nvim' # use nvim_nococ ，不启动coc和vim-go，打开大go项目gopls太消耗cpu
alias cl='clang '
alias g++='g++ -Wall '
alias gcc='gcc -Wall '
# alias cc='cc -Wall '
alias xo='open '
alias o='open '
alias psp='ps aux | grep python'
# brew install trash
alias rm='trash '
alias rmc='rm *.pyc; rm .cache; rm __pycache__'
alias rmpyc='find . -name "*.pyc" -exec rm -rf {} \;'
alias runl='python manage.py runserver'
alias run='python manage.py runserver 0.0.0.0:8000'
alias runs='python manage.py shell'
alias rs='redis-server'
#alias runtest='source /Users/pegasus/Program/py3.5_test/bin/activate;fswatch -o ./*.py  | xargs -n1  ./runtest.sh'
# https://github.com/joh/when-changed，监控文件变动，我修改了下，只监控py和shell文件，用来修改后自动运行单元测试
# alias runtest='source /Users/pegasus/Program/py3.5_test/bin/activate; when-changed -v -r -1 -s ../ ./runtest.sh'
alias monitor="when-changed -r -v -1 . "    # pip install when-changed
alias runtest="when-changed -v -r -1 -s ./ ./bin/test"
alias testcommand="when-changed -v -r -1 -s ./ ./wnntest.sh"
alias bt="./bin/test"
alias bi="./bin/ipython"
alias bp="./bin/pylint"
alias sqlstart='mysql.server start'
alias refresh_chrome=" osascript -e 'tell application \"Google Chrome\" to tell the active tab of its first window to reload' "
alias flush_watch_refresh_chrome=" when-changed -v -r -1 -s ./ osascript -e 'tell application \"Google Chrome\" to tell the active tab of its first window to reload' "
alias -s h=vi
alias -s c=vi
alias -s cpp=vi
alias -s java=vi
alias -s txt=vi
alias tf='tail -f '
alias prettyjson='python -m json.tool'
alias tl='tmux ls'
alias tat='tmux at -t'
alias tad='tmux at -d -t'
alias ta='tmux at -t'
alias tn='tmux rename -t'
alias tnew='tmux new -s '
alias tpl='tmuxp load '
alias updatedb='sudo /usr/libexec/locate.updatedb'
alias gmt='go mod tidy'

# youtube
# python3 -m pip install --force-reinstall https://github.com/yt-dlp/yt-dlp/archive/master.tar.gz
# alias download_youtube_mp3='yt-dlp --extract-audio --audio-format mp3 --no-playlist'
alias download_youtube_mp3='yt-dlp -x --audio-format mp3'
alias download_youtube='yt-dlp -f bestvideo+bestaudio '
alias download_youtube_mp3_proxy='yt-dlp --proxy 'socks5://127.0.0.1:1080' --extract-audio --audio-format mp3 '
alias download_youtube_proxy='yt-dlp --proxy 'socks5://127.0.0.1:1080' -f bestvideo+bestaudio '

# show or hide desktop icon
alias hide_desktop_icon='defaults write com.apple.finder CreateDesktop -bool false; killall Finder'
alias show_desktop_icon='defaults write com.apple.finder CreateDesktop -bool true; killall Finder'

# for php
# export PATH="$(brew --prefix php70)/bin:$PATH"
#export PATH="$(brew --prefix homebrew/php/php70)/bin:$PATH"
# alias php-fpm.start="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.php70.plist"
# alias php-fpm.stop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.php70.plist"
# alias php-fpm.restart='php-fpm.stop && php-fpm.start'

# nvm config, brew install nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
# [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

#nvm use 0.12.0
alias nvmm='nvm use stable'


# source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"

# golang env config
export GOROOT="/usr/local/go"
export GOPATH=$HOME/work    # don't forget to change your path correctly!
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin


# openssl
export PATH="/usr/local/opt/openssl/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"

# init 会每次启动的时候载入虚拟环境
#eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"

# http proxy
function unset_httpproxy() {
    unset https_proxy; unset http_proxy
}

function ss_httpproxy() {
  export http_proxy=http://127.0.0.1:1087
  export https_proxy=http://127.0.0.1:1087
}

# shadowsocks
function ss_gitproxy() {
    git config --global http.proxy http://127.0.0.1:1087
    git config --global https.proxy https://127.0.0.1:1087
}

function gitproxy() {
    git config --global http.proxy http://127.0.0.1:1080
    git config --global https.proxy https://127.0.0.1:1080
}

function unset_gitproxy() {
    git config --global --unset http.proxy
    git config --global --unset https.proxy
}

function pytest_monitor_run() {
  when-changed -s -r -v -1 "$1" pytest -s "$1"
}

function pyt() {
  when-changed -s -r -v -1 "$1" pytest -s "$1"
}

# alias go_monitor_run="when-changed -r -v -1 . go run" # pip install when-changed
function go_monitor_run() {
  when-changed -s -r -v -1 "$1" go run "$1"
}

function gor() {
  when-changed -s -r -v -1 "$1" go run "$1"
}

function got() {
  when-changed -s -r -v -1 . go test -v
}

function pyr() {
  when-changed -s -r -v -1 "$1" python3 "$1"
}

# pyjq python file and format json
function pyjq() {
  python3 "$1" | jq
}

# jq sort keys
function pyjqs() {
  python3 "$1" | jq -S
}

function gof() {
  golines -w -m 120 "$1"
}
# https://github.com/huan/swagger-edit
function swagger-edit() {
  docker run -ti --rm --volume="$(pwd)":/swagger -p 8080:8080 zixia/swagger-edit "$@"
}

# mac os copy path, install realpath first
function path() {
  realpath "$1" | pbcopy
}

bindkey "jj" clear-screen


# applescript alias
alias mi='osascript ~/.applescript/iterm2.scpt'
alias lr='osascript ~/.applescript/lr.scpt'
alias oi='osascript ~/.applescript/open_iterm2.scpt'

func cleanmaster() {
 gco -b f; ga . ; gmg "f" ; gcm ; gbd f -D;
}

# 工作用机器等相关配置放到单独文件，不可加入版本库，防止泄露工作敏感信息！！！
[ -f ~/.work.sh ] && source ~/.work.sh
