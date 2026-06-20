#!/bin/bash

EMAIL=$1

echo "

Hello,

Your pizza order has been received successfully.

Thank you for choosing PizzaHub.

" | mail -s "Pizza Order Received" "$EMAIL"