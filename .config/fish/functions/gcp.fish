function gcp -d 'Commit and push to git'
    git commit -m $argv
    git push
end