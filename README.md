easycron
========

This is a utility for modifying a user's crontab

Easycron's  main  usage  is  to  add processes to the user's crontab without having to know the format that crontab accepts. It also has a delete, and list option.

Options:
* -d **delete option takes a search term and deletes the line where it finds the term.**
* -l **concatinates the crontab file to the command line.**


Usage: ```easycron 30min './example.sh'``` adds the ```./example.sh``` process to the crontab to run every 30 min.


to install, run: 
```
sudo ./INSTALL
```
