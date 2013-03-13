#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias dotfiles-update='curl https://raw.github.com/lucapuca/dotfiles/master/bootstrap.sh -L -o - | sh'
#PS1='[\u@\h \W]\$ '

### GIT PROMPT
source ~/.git-prompt.sh
source ~/.git-completion.bash
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
###

for file in /etc/profile.d/*.sh; do
	source "$file"
done

#ultimate
#alias onebip='cd ~/lavoro/onebip/subscription-engine/ --color=auto'
alias onebip='cd ~/lavoro/onebip/subscription-engine/ --color=auto; ctags -R ~/lavoro/onebip/subscription-engine/*;'
alias cmsite='cd ~/lavoro/onebip/cmsite/ --color=auto; ctags -R ~/lavoro/onebip/cmsite/*;'
alias atest='~/lavoro/onebip/subscription-engine/script/test.sh'
alias tests='~/lavoro/onebip/subscription-engine/script/tests.sh'
alias simulated='~/lavoro/onebip/subscription-engine/script/tests-simulated.sh'
alias gpull='git pull; git submodule update'
alias gst='git status'

#legacy
#alias onebip='cd ~/lavoro/onebip/subeng-dsl-billing/ --color=auto'
#alias tests='~/lavoro/onebip/subeng-dsl-billing/script/tests.sh'
#alias test='~/lavoro/onebip/subeng-dsl-billing/script/test.sh'

alias sdiff='svn diff --force | cdiff'
alias ack='ack -i -Q --'

export EDITOR="vim"

export GEM_HOME=~/.gem/ruby/1.9.3/
export PATH=$PATH:/home/luca/.gem/ruby/1.9.3/bin
