mongod --port $1 --replSet mongo-replset --dbpath /mongo-replset/ --fork --logpath /log/mongodb.log
mongo /scripts/conf_replicaset.sh
