#!/bin/bash

EMAIL=$1

DATE=$(date)

echo "$EMAIL | $DATE" >> orders/orders.txt

bash scripts/send_received.sh "$EMAIL"

echo "bash $(pwd)/scripts/send_preparing.sh $EMAIL" | at now + 5 minutes

echo "bash $(pwd)/scripts/send_completed.sh $EMAIL" | at now + 10 minutes

echo "Order scheduled successfully"