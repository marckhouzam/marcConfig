unalias postcmd

echo sourcing .login

# Start ssh-agent once for the machine
sh << EOF
eval `ssh-agent`
EOF

#set path=(~lmckhou/bin /usr/local/bin $path /usr/local/jdk1.2.2/bin)
#if (-e /pub/is/scripts/defaultLogin) source /pub/is/scripts/defaultLogin
unsetenv XUSERFILESEARCHPATH
unsetenv XFILESEARCHPATH
source ${HOME}/.cshrc
