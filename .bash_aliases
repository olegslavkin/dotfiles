alias aa='docker run -it --rm -v $(pwd):/mnt alpine'
alias a='docker run -it --rm -v $HOME:/home/$(whoami) -w /home/$(whoami) alpine-$(whoami)'
alias centos='docker run -it --rm -v $HOME:/home/$(whoami) -w /home/$(whoami) centos-$(whoami)'

alias cloud-torrent='docker run -it --rm -p 3000:3000 -u $(id -u):$(id -u) -v $HOME/Downloads:/downloads jpillora/cloud-torrent'
alias qemu-system-x86_64='docker run -it --rm --device /dev/kvm alpine-qemu-system-x86_64 qemu-system-x86_64'
alias ctags='docker run -it --rm alpine-ctags ctags'
