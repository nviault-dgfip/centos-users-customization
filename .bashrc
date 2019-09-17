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

#######################
#  fonctions utiles
#######################
# creation repertoire et positionnement dedans
mkcd ()
{
  mkdir -p -- "$1" && cd -P -- "$1"
}

# decompression en fonction du format
extract () {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1    ;;
           *.tar.gz)    tar xvzf $1    ;;
           *.bz2)       bunzip2 $1     ;;
           *.rar)       unrar x $1       ;;
           *.gz)        gunzip $1      ;;
           *.tar)       tar xvf $1     ;;
           *.tbz2)      tar xvjf $1    ;;
           *.tgz)       tar xvzf $1    ;;
           *.zip)       unzip $1       ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1        ;;
           *)           echo "Ne sait pas comment décompresser '$1'..." ;;
       esac
   else
       echo "'$1' n'est pas un fichier valide"
   fi
 }

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
