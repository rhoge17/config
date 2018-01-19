
# Rick's bash_profile (edited on MBP)

echo "Running .bash_profile..."

# shell variables

FIGNORE=.aux:.o:.log:\~:\#
IGNOREEOF=10
PS1='\h:\W -> '

# environment variables

export CVS_RSH=ssh
export CVSROOT=/Users/rhoge/cvs
export CVSEDITOR='emacs -nw -l ~/.nwemacs'
export CVSEDITOR='emacs'
export DISPLAY=:0

export VISUAL=emacs
export EDITOR="$VISUAL"

# minc stuff
export PERL5LIB=/usr/local/bic/lib/Library/Perl/5.8.1

export PATH=$PATH:/usr/local/bin 
export PATH=$PATH:/usr/local/opt # for brew installs 
export PATH=$PATH:/usr/local/dicom/bin # dcmtk
export PATH=$PATH:/usr/local/bic/bin # MNI tools
export PATH=$PATH:/usr/X/bin # X Windows
export PATH=$PATH:/usr/local/afni # afni
export PATH=$PATH:$HOME/Library/Python/2.7/bin
#export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

# aliases
alias nl2='NeuroLens2'
alias ls='ls -FG'
alias rm='rm -i'
alias pu='rm -i *# *~ .*~ .*#'
alias cvs1='export CVSROOT=/Users/rhoge/cvs'
alias cvs2='export CVSROOT=:ext:rhoge@gate.nmr.mgh.harvard.edu:/homes/5/rhoge/cvsroot'
alias xfer='sshfs -C rhoge@login.bic.mni.mcgill.ca:/data/transfer/ /Users/rhoge/sshfs/'
alias 7T='cd /Users/rhoge/Documents/7T'
alias symph='sudo killall -9 symphonyDaemon'
alias tunnel='ssh -L10548:roetgen.bic.mni.mcgill.ca:548 -f -N rhoge@roetgen.bic.mni.mcgill.ca'
alias slides='cd /Users/rhoge/Documents/Slides'
alias prisma='cd /Users/rhoge/Documents/Grants/Active/2015-06-01\ BIC\ PRISMA\ CFI'
alias battery='pmset -g batt'


# now machine-specific stuff
#source .bash_machine_specific

# SVN stuff
export SVN_EDITOR=/usr/bin/emacs

# Colors for man page (and other)
export LESS_TERMCAP_mb=$(printf '\e[01;31m') # enter blinking mode - red
export LESS_TERMCAP_md=$(printf '\e[01;31m') # enter double-bright mode - red
export LESS_TERMCAP_me=$(printf '\e[0m') # turn off all appearance modes (mb, md, so, us)
export LESS_TERMCAP_se=$(printf '\e[0m') # leave standout mode    
export LESS_TERMCAP_so=$(printf '\e[01;44;33m') # enter standout mode - yellow
export LESS_TERMCAP_ue=$(printf '\e[0m') # leave underline mode
export LESS_TERMCAP_us=$(printf '\e[1;32m') # enter underline mode - cyan

