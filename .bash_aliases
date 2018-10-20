alias aa='docker run -it --rm -v $(pwd):/mnt alpine'
alias a='docker run -it --rm -v $HOME:/home/$(whoami) -w /home/$(whoami) alpine-$(whoami)'
alias cloud-torrent='docker run -it --rm -p 3000:3000 -u $(id-u):$(id -u) -v $HOME/Downloads:/downloads jpillora/cloud-torrent'
