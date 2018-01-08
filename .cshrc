# Only perform these things if we are loging in.
if ($?USER == 0 || $?prompt == 0) exit

echo sourcing .cshrc

source ~/.lmckhou.rc
