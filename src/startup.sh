CONF_FILE=`find /data/ezvis -name *.json | head -1`
REPOSITORY=${CONF_FILE%.*}

if [[ -z "$REPOSITORY" ]]
then
  echo "No repository found in /data/ezvis"
  exit 1
fi

if [[ -z "$MONGO_PORT_27017_TCP_ADDR" || -z "$MONGO_PORT_27017_TCP_PORT" ]]
then
	ezvis $REPOSITORY --port 3000
else
	ezvis $REPOSITORY --port 3000 --connexionURI "mongodb://$MONGO_PORT_27017_TCP_ADDR:$MONGO_PORT_27017_TCP_PORT/castor"
fi
