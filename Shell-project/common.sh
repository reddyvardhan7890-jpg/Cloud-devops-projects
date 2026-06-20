#!/bin/bash

LOGFILE=orders/logs.txt

LOG(){

echo "$(date) : $1" >> $LOGFILE

}