#!/bin/bash



EMAIL=$1


if [ -z "$EMAIL" ]
then
    echo "Usage: $0 <email-address>"
    exit 1
fi
DATE=$(date)



echo "$EMAIL | $DATE" >> orders.txt

bash send_received.sh "$EMAIL"

echo "bash $(pwd)/send_preparing.sh $EMAIL" | at now + 5 minutes

echo "bash $(pwd)/send_completed.sh $EMAIL" | at now + 10 minutes

echo "Order scheduled successfully"
