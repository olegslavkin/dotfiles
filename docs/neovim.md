# ENVs
```
$ uname -a
Linux sllaptop 4.20.6-042006-generic #201901310331 SMP Thu Jan 31 08:33:33 UTC 2019 x86_64 x86_64 x86_64 GNU/Linux

$ lsb_release -a
No LSB modules are available.
Distributor ID: Ubuntu
Description:    Ubuntu 18.04.2 LTS
Release:        18.04
Codename:       bionic

$ flatpak --version
Flatpak 1.0.8
```

# Install Flatpack
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install -y flathub io.neovim.nvim

# Test run
flatpack run io.neovim.nvim
