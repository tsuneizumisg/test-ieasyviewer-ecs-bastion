#!/bin/bash -x
LOGIN_USER="exist"
while :
do
    sleep 900
    LOGIN_USER_NUMBER=$(ps -ef | grep ssm-session-worker | grep -v grep | wc -l)
    echo LOGIN_USER_NUMBER:${LOGIN_USER_NUMBER} 

    if [ "$LOGIN_USER_NUMBER" -ne 0 ]; then
        LOGIN_USER="exist"
    else
        if [ "$LOGIN_USER" = "no exist" ]; then
            exit 0
        else
            LOGIN_USER="no exist"
        fi
    fi
done
