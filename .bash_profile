
# Rick's bash_profile (edited on MBP again)

echo "Running .bash_profile..."

# shell variables

source ~/.shared_config_files/.generic_profile

PS1='\h:\W -> '

# now machine-specific stuff
#source .bash_machine_specific

# Colors for man page (and other)
export LESS_TERMCAP_mb=$(printf '\e[01;31m') # enter blinking mode - red
export LESS_TERMCAP_md=$(printf '\e[01;31m') # enter double-bright mode - red
export LESS_TERMCAP_me=$(printf '\e[0m') # turn off all appearance modes (mb, md, so, us)
export LESS_TERMCAP_se=$(printf '\e[0m') # leave standout mode    
export LESS_TERMCAP_so=$(printf '\e[01;44;33m') # enter standout mode - yellow
export LESS_TERMCAP_ue=$(printf '\e[0m') # leave underline mode
export LESS_TERMCAP_us=$(printf '\e[1;32m') # enter underline mode - cyan

