
# echo "Running .profile..."

# shell variables

FIGNORE=.aux:.o:.log:\~:\#
IGNOREEOF=10

# environment variables

export CVS_RSH=ssh
export CVSROOT=/Users/rhoge/cvs
export CVSEDITOR='emacs -nw -l ~/.nwemacs'
export CVSEDITOR='emacs'
export DISPLAY=:0

EMACS_PATH='/usr/local/bin'
export VISUAL="$EMACS_PATH/emacsclient -c --alternate-editor=$EMACS_PATH/emacs"
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
export PATH="$HOME/.cask/bin:$PATH"

# aliases
alias nl2='NeuroLens2'
alias ls='ls -FG'
alias rm='rm -i'
alias pu='rm -i *\# *~ .*~ .*#'
alias cvs1='export CVSROOT=/Users/rhoge/cvs'
alias cvs2='export CVSROOT=:ext:rhoge@gate.nmr.mgh.harvard.edu:/homes/5/rhoge/cvsroot'
alias xfer='sshfs -C rhoge@login.bic.mni.mcgill.ca:/data/transfer/ /Users/rhoge/sshfs/'
alias 7T='cd /Users/rhoge/Documents/7T'
alias symph='sudo killall -9 symphonyDaemon'
alias tunnel='ssh -L10548:roetgen.bic.mni.mcgill.ca:548 -f -N rhoge@roetgen.bic.mni.mcgill.ca'
alias slides='cd /Users/rhoge/Documents/Slides'
alias prisma='cd /Users/rhoge/Documents/Grants/Active/2015-06-01\ BIC\ PRISMA\ CFI'
alias battery='pmset -g batt'
alias lp='lp -d HP_Color_LaserJet_3600'
alias mu4e="$EMACS_PATH/emacsclient -e \(mu4e\) --alternate-editor=$EMACS_PATH/emacs"
alias e="$EMACS_PATH/emacsclient -c --alternate-editor=$EMACS_PATH/emacs"
alias e2="$EMACS_PATH/emacsclient --no-wait --alternate-editor=$EMACS_PATH/emacs"
alias mbs='mbsync -a ; emacsclient -e \(mu4e-update-index\)'
alias mbsm='mbsync McGill ; emacsclient -e \(mu4e-update-index\)'
alias mbsi='mbsync McGill-inbox ; emacsclient -e \(mu4e-update-index\)'
alias mbss='mbsync McGill-sentitems ; emacsclient -e \(mu4e-update-index\)'
alias mbsd='mbsync McGill-drafts ; emacsclient -e \(mu4e-update-index\)'
alias mbst='mbsync McGill-deleteditems ; emacsclient -e \(mu4e-update-index\)'
alias mytest='echo $EDITOR'

# SVN stuff
export SVN_EDITOR=/usr/bin/emacs
