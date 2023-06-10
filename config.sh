
echo "
alias update="sudo apt update && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y && sudo apt clean"
alias gp='git add . && git commit -m "up new post $time" && git push'
alias pk='sudo pkcon refresh && sudo pkcon update'
" >> ~/.bashrc
source ~/.bashrc


