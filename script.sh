mysqldump --defaults-extra-file=./.wp.cnf -p wpdb > /mnt/backup/wp.sql

rsync –av --delete /path/to/source /home/mark/rsync/daily
rsync –av --delete /home/mark/rsync/daily /home/mark/rsync/weekly
tar -cvjf /home/mark/rsync/monthly/monthly_$(date +%Y%m%d).tar.bz2 /home/rsync/daily/
