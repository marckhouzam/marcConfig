#export PATH='/home/lmckhou/go/bin:/home/lmckhou/node-v6.10.0-linux-x64/bin:/home/lmckhou/gdb-all/bin:/home/lmckhou/bin:/home/lmckhou/go/bin:/home/lmckhou/node-v6.10.0-linux-x64/bin:/home/lmckhou/gdb-all/bin:/home/lmckhou/bin:/home/lmckhou/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/lmckhou/bin:/usr/local/java/jre1.8.0_111/bin'


# Global aliases
alias -g G='| grep'
alias -g L='| less'
GLess () { grep $1 | less -i -p $1 }
alias -g GL='| GLess'

# Normal aliases

alias acroread='evince'
alias buildgdb='../configure CXXFLAGS="-g3 -O0" CFLAGS="-g3 -O0" --disable-ld --disable-gold --disable-gas && make -j8'
alias c=clear
alias cp='\cp -i'
alias diff='diff -w'
alias du='du -h'
alias j='jobs -l'
alias less='less -i -x4 -N -R'
alias ll='ls -lAh'
alias ls='ls -G'
alias lt='ls -lrth'
alias man='man -a'
alias mtop='/usr/bin/top -stats Command,cpu,pid,ppid,Time,user,state,threads, -u -F -R -S -n20'
alias mv='\mv -i'
alias open='xdg-open'
alias ps='ps -ef'
alias title='xtitle `hostname`'
alias vi='vim'
alias x='chmod u+x'
alias xterm='\xterm -font '\''-*-fixed-medium-r-*-*-18-*-*-*-*-*-iso8859-*'\'' +sb -si -sk -sl 9000 -geom 150x50'
alias ping='ping -c 1'

gdbmi () { rlwrap -c gdb -i mi $* }
h () { history $* | \less -i -x4 }
psg () { ps -ef | grep $* | grep -v grep }
qr () { qrencode -l L -v 1 -o qr.png $* }
sdiff () { sdiff -w 350 $* | less }
xdiff () { diffuse $* & }
xephyr () { Xephyr -screen 1600x1200 $*& }

# Make RM safe
rm () { /bin/mv $* ${HOME}/.trashcan/ }
unrm () { unrmDir=`pwd`;cd $HOME/.trashcan;/bin/mv $* $unrmDir;cd $unrmDir }
emptytrash () { /bin/chmod -R u+wx ${HOME}/.trashcan>&/dev/null;/bin/rm -rf ${HOME}/.trashcan;/bin/mkdir ${HOME}/.trashcan;echo Trash deleted }

# Variables for directories
setopt cdablevars
git=$HOME/git
vdmtl=$git/vdmtl
cicdjobs=$vdmtl/cicd-jobs
cicdlib=$vdmtl/cicd-lib
kapps=$vdmtl/kubernetes-installed-apps
graf=$kapps/all-clusters/grafana
prom=$kapps/all-clusters/prometheus
jenkins=$kapps/infra-cluster/jenkins
konga=$kapps/infra-cluster/konga
nexus=$kapps/infra-cluster/nexus
cdt=$git/org.eclipse.cdt
dsf=$git/org.eclipse.cdt/dsf
dsfgdb=$git/org.eclipse.cdt/dsf-gdb
gdb=$git/binutils-gdb/gdb
charts=$git/charts

# Kubernetes stuff
export KUBECONFIG="$HOME/.kube/config.prod:$HOME/.kube/config.minikube:$HOME/.kube/config.lab:$HOME/.kube/config.dev:$HOME/.kube/config.infra:$HOME/.kube/config.acc:$HOME/.kube/config.local"
ka () {kubectl $* --all-namespaces }
alias kenv='kubectl config use-context'
alias kaf='kubectl apply -f'
alias kl='kubectl logs'
alias klf='kubectl logs -f'
alias kvagrant='vagrant --dockerhub=true --mount=${HOME}/git'
alias kwatchlab='watch -n1 "kubectl get pods --all-namespaces| grep -v kube-system|grep -v loadtest"'
alias labkube='kubectl --kubeconfig ~/.kube/config.lab'
alias devkube='kubectl --kubeconfig ~/.kube/config.dev'
alias acckube='kubectl --kubeconfig ~/.kube/config.acc'
alias prodkube='kubectl --kubeconfig ~/.kube/config.prod'
alias infrakube='kubectl --kubeconfig ~/.kube/config.infra'
alias kwatch='watch -n1 "printf %s \ \ \ \ \ \ \ \ \ \ \ \ \ ;kubectl config current-context;echo;echo;kubectl get pods --all-namespaces| grep -v kube-system"'
