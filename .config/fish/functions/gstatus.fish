function gstatus -d 'Get untracked branches in the repo'
   git fetch --all -p; git branch -v | grep "gone"
end