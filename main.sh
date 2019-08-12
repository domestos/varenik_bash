# clone folder varenik_bash from github  to ~/.varenik_bash
# https://github.com/domestos/varenik_bash

case $1 in
# INSTALL
install)
    echo Instaling ...
    if [ -f ~/.bashrc_backup ]; then
        echo "MAIN :: Looks like varenik_bash was installed. Now You can only update or delete it"
    else  
        cp -R ./varenik_bash  ~/.varenik_bash
        echo "MAIN :: The folde varenik_bash was copied to  ~/.varenik_bash"
        cd ~/.varenik_bash/config/ && ./edit_bashrc.sh && source ~/.bashrc
        echo "MAIN :: The file ~/.bashrc was edited"

    fi
    # COPY THE tmuc.config
    if [ -f ~/.tmux.conf ]; then
        echo ""
    else
         cp ~/.varenik_bash/config/tmux.conf ~/.tmux.conf
    fi
;;
#UPDATE
update)
echo updating

;;
#DELETE
delete)
echo deleting
  if [ -f ~/.bashrc_backup ] 
        then
        echo "return the original file bashrc"
        cp ~/.bashrc_backup ~/.bashrc
        echo "delete ~/.bashrc_backup file"
        rm ~/.bashrc_backup
        echo "delete folder ~/.varenik_bash"
        rm -r ~/.varenik_bash
        source ~/.bashrc
    else
        echo "WARNING ::  looks like the ~/.bashrc_backup was not found..... "
    fi

    # DELETE  tmuc.config
    if [ -f ~/.tmux.conf ]; then
        rm ~/.tmux.conf
    else
        echo "WARNING ::  looks like the ~/.tmux.conf was not found..... "
    fi
;;
#SOMETHING ELSE
*)
echo "don\'t know the command. Please use: install or update or delete" 
;;
esac

