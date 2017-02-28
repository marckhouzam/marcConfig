# Only perform these things if we are loging in.
if ($?USER == 0 || $?prompt == 0) exit

echo sourcing .cshrc

# Source personal resource file if it exists
if ( -f ~/."$USER".rc ) then
     source ~/."$USER".rc
endif
