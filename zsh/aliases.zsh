
# Global aliases
alias -g G='| grep'
alias -g L='| less'
alias -g GL='| GLess'
GLess () { grep $1 | less -i -p $1 }

# Normal aliases
alias lt='ls -lrt'
alias du='du -h'
alias c=clear
alias x='chmod u+x'
alias acroread='evince'
alias buildgdb='../configure CXXFLAGS="-g3 -O0" CFLAGS="-g3 -O0" --disable-ld --disable-gold --disable-gas && make -j8'
alias cp='\cp -i'
alias diff='diff -w'
alias -- gitbranchls='echo ====================================;git for-each-ref --sort=-committerdate refs/heads/ | awk \{print\ \$3\} | sed s,refs/heads/,,'
alias gvi='gvim'
alias j='jobs -l'
alias less='less -i -x4 -N -R'
alias lvi='vim -R'
alias man='man -a'
alias mv='\mv -i'
alias open='xdg-open'
alias ps='ps -ef'
alias title='xtitle `hostname`'
alias vi='vim'
alias x='chmod u+x'
alias xterm='\xterm -font '\''-*-fixed-medium-r-*-*-18-*-*-*-*-*-iso8859-*'\'' +sb -si -sk -sl 9000 -geom 150x50'
emptytrash () { \chmod -R u+wx ${HOME}/.trashcan>&/dev/null;\rm -rf ${HOME}/.trashcan;mkdir ${HOME}/.trashcan;echo Trash deleted$ }
gdb.master () { /home/lmckhou/bin/gdb.master --data-directory=/home/lmckhou/data-directory $* }
gdbmi () { rlwrap -c gdb -i mi $* }
h () { history -r $* | \less -i -x4 }
psg () { ps -ef | grep $* | grep -v grep }
qr () { qrencode -l L -v 1 -o qr.png $* }
rm () { \mv $* ${HOME}/.trashcan/ }
unrm () { \mv -i ${HOME}/.trashcan/$* . }
sdiff () { sdiff -w 350 $* | less }
xdiff () { diffuse $* & }
xephyr () { Xephyr -screen 1600x1200 $*& }
export LESS='-R'
export QT_STYLE_OVERRIDE='gtk'
export WINDEDITOR='gvim'
export PAGER='less'
export PATH='/home/lmckhou/go/bin:/home/lmckhou/node-v6.10.0-linux-x64/bin:/home/lmckhou/gdb-all/bin:/home/lmckhou/bin:/home/lmckhou/go/bin:/home/lmckhou/node-v6.10.0-linux-x64/bin:/home/lmckhou/gdb-all/bin:/home/lmckhou/bin:/home/lmckhou/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/lmckhou/bin:/usr/local/java/jre1.8.0_111/bin'
export KUBECONFIG='/home/lmckhou/.kube/admin.conf:/home/lmckhou/.kube/config'
export GOPATH='/home/lmckhou/go'
export JAVA_HOME='/usr/local/java/jre1.8.0_111'
export EDITOR='vim'
cdt='/home/lmckhou/git/org.eclipse.cdt/'
dsf='/home/lmckhou/git/org.eclipse.cdt/dsf'
dsfgdb='/home/lmckhou/git/org.eclipse.cdt/dsf-gdb'
gdb='/home/lmckhou/git/binutils-gdb/gdb'
histdup='prev'
HISTSIZE='250'
setopt ignoreeof
