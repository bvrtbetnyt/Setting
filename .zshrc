# $BJ8;z%3!<%I$N@_Dj(B
export LANG=ja_JP.UTF-8

# $B%Q%9$N@_Dj(B
PATH=/usr/local/bin:$PATH
export MANPATH=/usr/local/share/man:/usr/local/man:/usr/share/man

# $B4X?t(B
find-grep () { find . -type f -print | xargs grep -n --binary-files=without-match $@ }

# $B%(%$%j%"%9$N@_Dj(B
alias ls='ls --color=auto'
alias la='ls -A'
alias ll='ls -alF'
alias l='ls -CF'
alias gd='dirs -v; echo -n "select number: "; read newdir; cd +"$newdir"'

# $B%W%m%s%W%H$N@_Dj(B 
PROMPT='%n:%~$B"v(B '

# $B%R%9%H%j$N@_Dj(B
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

# $BMzNr%U%!%$%k$K;~9o$r5-O?(B
setopt extended_history

# $BJd40$9$k$+$N<ALd$O2hLL$rD6$($k;~$K$N$_$K9T$&(I!(B
LISTMAX=0

autoload -Uz compinit; compinit

# sudo $B$G$bJd40$NBP>](B
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin

# cd$B$N%?%$%_%s%0$G<+F0E*$K(Bpushd
setopt auto_pushd 

# $BJ#?t$N(B zsh $B$rF1;~$K;H$&;~$J$I(B history $B%U%!%$%k$K>e=q$-$;$:DI2C(B
setopt append_history

# $BJd408uJd$,J#?t$"$k;~$K!"0lMwI=<((B
setopt auto_list

# $BJ]4I7k2L$r$G$-$k$@$15M$a$k(B
setopt list_packed

# $BJd40%-!<!J(BTab, Ctrl+I) $B$rO"BG$9$k$@$1$G=g$KJd408uJd$r<+F0$GJd40(B
setopt auto_menu

# $B%+%C%3$NBP1~$J$I$r<+F0E*$KJd40(B
setopt auto_param_keys

# $B%G%#%l%/%H%jL>$NJd40$GKvHx$N(B / $B$r<+F0E*$KIU2C$7!"<!$NJd40$KHw$($k(B
setopt auto_param_slash

# $B%S!<%W2;$rLD$i$5$J$$$h$&$K$9$k(B
setopt no_beep

# $BD>A0$HF1$8%3%^%s%I%i%$%s$O%R%9%H%j$KDI2C$7$J$$(B
setopt hist_ignore_dups

# $B%R%9%H%j$K(Bhistory$B%3%^%s%I$r5-O?$7$J$$(B
setopt hist_no_store

# $BM>J,$J%9%Z!<%9$r:o=|$7$F%R%9%H%j$K5-O?$9$k(B
setopt hist_reduce_blanks

# $B9TF,$,%9%Z!<%9$G;O$^$k%3%^%s%I%i%$%s$O%R%9%H%j$K5-O?$7$J$$(B
# setopt hist_ignore_spece

# $B=EJ#$7$?%R%9%H%j$ODI2C$7$J$$(B
# setopt hist_ignore_all_dups

# $B%R%9%H%j$r8F$S=P$7$F$+$i<B9T$9$k4V$K0lC6JT=8$G$-$k>uBV$K$J$k(B
setopt hist_verify

# auto_list $B$NJd408uJd0lMw$G!"(Bls -F $B$N$h$&$K%U%!%$%k$N<oJL$r%^!<%/I=<($7$J$$(B
setopt no_list_types

# $B%3%^%s%I%i%$%s$N0z?t$G(B --prefix=/usr $B$J$I$N(B = $B0J9_$G$bJd40$G$-$k(B
setopt magic_equal_subst

# $B%U%!%$%kL>$NE83+$G%G%#%l%/%H%j$K%^%C%A$7$?>l9gKvHx$K(B / $B$rIU2C$9$k(B
setopt mark_dirs

# 8 $B%S%C%HL\$rDL$9$h$&$K$J$j!"F|K\8l$N%U%!%$%kL>$rI=<(2DG=(B
setopt print_eight_bit

# $B%7%'%k$N%W%m%;%9$4$H$KMzNr$r6&M-(B
setopt share_history

# Ctrl+w$B$G(I$$BD>A0$N(B/$B$^$G$r:o=|$9$k(I!(B
WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

# $B%G%#%l%/%H%j$r?e?'$K$9$k(I!(B
export LS_COLORS='di=01;36'

# $B%U%!%$%k%j%9%HJd40$G$b(Bls$B$HF1MM$K?'$r$D$1$k(I!(B
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# cd $B$r$7$?$H$-$K(Bls$B$r<B9T$9$k(B
function chpwd() { ls }

# $B%G%#%l%/%H%jL>$@$1$G(I$$B%G%#%l%/%H%j$N0\F0$r$9$k(I!(B
setopt auto_cd

# C-s, C-q$B$rL58z$K$9$k!#(B
setopt no_flow_control

#$BBgJ8;z>.J8;z$r6hJL$;$:$KJd40(B
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

