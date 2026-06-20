#!/bin/bash

EMAIL=$1

echo "

Your delicious pizza is ready!

Thank you for ordering with PizzaHub.

Enjoy your meal.

" | mail -s "Order Completed" "$EMAIL"