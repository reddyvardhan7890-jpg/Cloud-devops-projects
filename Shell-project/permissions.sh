#!/bin/bash

echo "updating the permissions of the files"

chmod -R 755 website

chmod 644 orders/orders

Chmod +x scripts/*.sh

echo "permissions updated successfully"
