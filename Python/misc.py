

# Top 10 biggest/largest files modified in last 24 hours.

# df command to find out which volume has full.
# powershell
# @Get-ChildItem -re -in * |
#  ?{ -not $_.PSIsContainer } |
#  where-object {$_.mode -notmatch "d"} | 
#  where-object {$_.lastwritetime -gt [datetime]::parse("11/01/2021")} | 
#  sort Length -descending |
#  select -first 10
# bash, linux commands
#sudo find / -mtime -24 -type f -exec du -h {} + | sort -r -n | head -10
#for i in ls -alR; do 
#done
