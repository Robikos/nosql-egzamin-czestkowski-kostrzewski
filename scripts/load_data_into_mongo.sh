if [ $1 == "1" ]; then
  $ip = "139.59.177.113"
  $port = "27001"
else
  $ip = "139.59.185.228"
  $port = "27002"
fi

mongoimport
  --host mongo-replset/$ip:$port
  --drop
  -d markets
  -c markets
  --writeConcern 1
  --jsonArray
  --file dataset.json
