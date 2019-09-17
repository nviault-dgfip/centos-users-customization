# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

## Donner des droits d'execution
alias chx='chmod 755'
## Donner des droits de lectureal
alias chr='chmod 644'

## Afficher temperature CPU
alias cputemp='sensors | grep Core'

## affichage utilisation memoire 
alias meminfo='free -m -l -t'
 
## affichage des process les plus consommateurs de memoire
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
 
## affichage des process les plus consommateurs de cpu 
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
 
## infos sur CPU ##
alias cpuinfo='lscpu'

## Mise a jour des paquets yum 
alias update='yum update'
alias updatey='yum -y update'

## decompression d'une archive
alias untar='tar -zxvf '

## demarrage serveur web
alias www='python -m SimpleHTTPServer 8000'
# alias www='python3 -m http.server 8000' pour python3

# Git quick update
alias gac="git add . && git commit -a -m "

# recherche dans historique de commandes
alias hs='history | grep'

# effaçage complet de fichiers/repertoires
alias rms='shred -uz'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
