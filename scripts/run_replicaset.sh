if [ ! -d "./mongo-replset/" ]; then
  mkdir mongo-replset
fi

mongod --port $(27000 + $1)
       --replSet mongo-replset
       --dbpath ./mongo-replset/
       --bind_ip localhost
