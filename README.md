easycron
========

This is a utility for modifying a user's crontab

Easycron's  main  usage  is  to  add processes to the user's crontab without having to know the format that crontab accepts. It also has a delete, and list option.

For example: ```easycron 30min './example.sh'``` adds the ```./example.sh``` process to the crontab to run every 30 min.

Options:
* -d **delete option takes a search term and deletes the line where it finds the term. usage:** ```easycron -d 'process_to_delete'```
* -l **concatinates the crontab file to the command line.**

To install easycron in your path using the INSTALL script, run: 
```
sudo ./INSTALL
```
