#  EDIT BASHRC
#  This scripts add my own aliases to end of file ~/.bashrc
#  For reload config typing source ~/.bashrc
version="1"
#creating backup of ~/.bashrc
if [ -f ~/.bashrc_backup ] 
then
   echo "the bashrc_backup  exist"
else
   cp ~/.bashrc ~/.bashrc_backup
   echo "the bashrc_backup  created"
fi


echo -e '#========================== VARENIK BASH v.'$version' ==============================' >> ~/.bashrc

#==================== TMUX ======================================================================================================
echo "Adding thmux aliases"
# SEE ALL SESSION -- tls
echo -e '# tmux \n alias tls="echo all_sessions_of_tmux && tmux ls"' >> ~/.bashrc
# KILL ALL SESSION -- tks
echo -e '# Kill all session \n alias tks="echo kill_all_session && tls && pkill -f tmux"' >> ~/.bashrc

#==================== VIRTUAL ENVIRONMANT =======================================================================================
echo "Adding virtul environment aliases"
# CREATE VIRTUAL ENVIRONMENT  -- cv
echo -e '# create a virtual environment \n alias cv="echo please_wait_creating_venv && virtualenv --python=python3 venv"' >> ~/.bashrc
# ACTIVATE VIRTUAL ENVIRONMENT -- av
echo -e '#activating a virtual environment \n alias av="echo please_wait_activating_venv && source ./venv/bin/activate"' >> ~/.bashrc
# CREATE ANA ACTIVATE VIRTUAL ENVIRONMENT -- cav
echo -e '#cerate a virtual environment and activate \n alias cav="echo please_wait_creating_venv_and_activating && cv && source ./venv/bin/activate"' >> ~/.bashrc

#=============== MONITORING TMUX ===============================================================================================
echo -e '# tmux-monitoring system \n alias monitoring="~/.varenik_bash/tmux-monitoring/monitoring.sh"' >> ~/.bashrc

