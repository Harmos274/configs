# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

#ascii art
#echo ''
#echo ''
#echo '                   ____'
#echo '                 /  @   \==]|[=(]       E X T E R M I N A T E ! !'
#echo '                |--------|'
#echo '                ==========       .  *                                     *'
#echo '                ==========     .\ * . *.   *                         .    * \  .'
#echo '               ||||||||||||      \ * ./  *    .   *                      .  \ \'
#echo '              |||||||||| --]%%%%%% .- =--=---=-=-=-=--=-=--=-==-----=-=-=-=-=-='
#echo '              [=========\  ]===========(  *                             . /  /'
#echo '             [==============|   / *  \    .                          *  *   /  .'
#echo '             C| @ @ @ @ @ @ D         *      *                        *'
#echo '              |              \           .                          *  *'
#echo '            C| @  @ @  @ @ @  D       .'
#echo '             |                 \          *                          *'
#echo '           C| @  @  @  @  @  @  D'
#echo '            |                    \ '
#echo '          C| @  @  @   @   @   @  D'
#echo '           |                       \'
#echo '          |@@@@@@@@@@@@@@@@@@@@@@@@@|'
#echo '           -------------------------'
#echo ''
#echo ''

neofetch

# Path to your oh-my-zsh installation.
export ZSH="/home/ab/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=""

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    #zsh-autosuggestions
    gitignore
)

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=5'

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
# User configuration

#pure prompt

autoload -U promptinit; promptinit
PURE_PROMPT_SYMBOL='❖'

prompt pure

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
#composition xterm
[ -n "$XTERM_VERSION" ] && transset-df -a >/dev/null

#Token for BLIH
export BLIH_TOKEN=77d670a2e341632a6aa435349121470b52e715b80580ea5d5cda04925c246f6555adc77c4f0ed7c0977fe59b0f3518752e110445540e626b0b19011c49dc87af

#VTE for tilix
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
    source /etc/profile.d/vte.sh
fi

#color man-pages persistently
export PAGER='most'

#camilla script launchable
export PATH=$PATH:/home/ab/scripts/camilla_bin

#use nvim for basic edition
export EDITOR=/usr/bin/nvim

#delete core* files
ulimit -Sc 0

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#blih things
alias blih='blih -u lilian.verhac@epitech.eu -t ${BLIH_TOKEN}'
alias ns_auth='ns_auth -u lilian.verlhac@epitech.eu'

#ls
alias lr='ls -R'
alias llr='ls -lR'
alias fls='ls -Ahli'

#emacs
alias ne='emacs -nw'

#fuck my life
alias fuck='fuck.sh'

#ascii
alias ascii='man ascii'

#valgrind
alias vlgrd='valgringos.sh'
alias coucou='valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes --verbose --dsymutil=yes'

#config
alias zshrc='nvim /home/ab/.zshrc'
alias source_zsh='source /home/ab/.zshrc'
alias i3_conf='nvim /home/ab/.config/i3/config'
alias poly_conf='nvim /home/ab/.config/polybar/config'
alias kitty_conf='nvim /home/ab/.config/kitty/kitty.conf'
alias compton_conf='nvim /home/ab/.config/compton.conf'
alias nvim_conf='nvim /home/ab/.config/nvim/init.vim'

#tree
alias clean_tree='make fclean ; clear ; tree'
alias ptree='tree -f'

#rm
alias rmrf='rm -rf'

#wifi command
alias wifiscan='sudo iw wlp3s0 scan | grep SSID'
alias wificonnect='~/.bin/.scripts/wificonnect.sh'

#colored thing
alias cman='colored_man.sh'
alias ccat='pygmentize -O style=vim -f console256 -g'

#image cat
alias icat='kitty icat'

#blih alias
alias repo_list='blih -u lilian.verlhac@epitech.eu -t $BLIH_TOKEN repository list'

#weather
alias weather='curl wttr.in/bordeaux'

#dj tro cool de la mor qui tu
alias dj='. /home/ab/tek01project/SHELL_ME/directory_jump.sh'

#switch branch
alias switch='git checkout $(git branch | cut -c 3- | fzy)'

#woosh
alias woosh='find -type f -name "core*" -delete -or -name "vgcore*" -delete -or -name "a.out" -delete'

#neo vim master race
alias v='nvim'

#make aliases
alias mk='make'
alias mkr='make re'
alias mkt='make tests_run'
alias mkrt='make retest'
alias mkc='make clean'
alias mkfc='make fclean'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
