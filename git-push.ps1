write-host "Adding files..."
git add .
write-host "Committing..."
git commit -m "Initialize project files"
$commit_status = $LASTEXITCODE

write-host "Setting remote..."
git remote remove origin 2>$null
git remote add origin https://github.com/adityars07/The-Time-Traveler.git

write-host "Fetching..."
git fetch origin
$fetch_status = $LASTEXITCODE

write-host "Branch setup..."
git branch -M main

if ($fetch_status -eq 0) {
    write-host "Pulling remote main with rebase..."
    git pull origin main --rebase
}

write-host "Pushing to remote..."
git push -u origin main
