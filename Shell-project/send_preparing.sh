#!/bin/bash

EMAIL=$1

echo "

Good News!

Your pizza is currently being prepared by our chef.

Please wait a few minutes.

" | mail -s "Pizza Preparing" "$EMAIL"