./run_replicaset.sh $1
./download_data.sh
./load_data_into_mongo.sh
./run_script $1
