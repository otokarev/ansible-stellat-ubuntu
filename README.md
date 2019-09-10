```
Download this: https://s3.amazonaws.com/stellar002-core-backups/pubnet/core-backup-1558118725.tar
1) wipe your core-db and wipe your buckets dir.
2) copy contents of core-fs.gz into your buckets dir 
3) run sudo -u postgres pg_restore -n public -j <num-cores -2> -c -d stellar core-db/ (you might have to change permissions on backup files and alter the db name / role name in your core config or in the db. this backup (from SDF) uses stellar username and stellar db name).
4) wait for a few hours until backup is complete (I recommend to disattach the pg_restore process from your terminal and run in background)
5) restart stellar-core with only SDF history and only SDF in your quorum.

Much faster than running a complete catchup.
```

```shell script
wget https://s3.amazonaws.com/stellar002-core-backups/pubnet/core-backup-1558118725.tar
tar tf core-backup-1558118725.tar
pv ./core-backup-1558118725.tar | tar xp -C ./

systemctl stop stellar-core

# correcte stellar configs
vim /etc/stellar/stellar-core.cfg

# unzip buckets archives
rm /var/lib/stellar/buckets/*
pv ./core-fs.tar | tar xp -C /var/lib/stellar/buckets/

# restore stellar db
chown postgres:postgres -R core-db/
sudo -u postgres -H  nohup pg_restore -n public -j 2 -c -d stellar /root/core-db/

systemctl start stellar-core
systemctl status stellar-core
journalctl -n100 -fu stellar-core
stellar-core-cmd info

###
# HORIZON
# recreate horizon db schema
###
# stop horizon service
systemctl disable stellar-horizon
systemctl stop stellar-horizon
# ??? drop horizon db, create bank one
su - stellar -c psql
# init db
stellar-horizon-cmd db init

# Allow non-root process to bind to port 80
sudo setcap CAP_NET_BIND_SERVICE=+eip /usr/bin/stellar-horizon
# launch horizon service
systemctl enable stellar-horizon
systemctl start stellar-horizon
systemctl status stellar-horizon

```