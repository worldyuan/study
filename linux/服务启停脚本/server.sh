#!/bin/bash

APP_NAME=okx
RUN_PREFIX=

usage() {
  echo "$0 [start|stop|restart|status]"
}

is_exist(){
  pid=`ps -ef|grep $APP_NAME|grep -v grep|awk '{print $2}' `
  if [ -z "${pid}" ]; then
    return 1
  else
    return 0
  fi
}

start(){
  is_exist
  if [ $? -eq "0" ]; then
    echo "${APP_NAME} is already running. pid=${pid}."
  else
    echo "${RUN_PREFIX}${APP_NAME}"
    nohup $RUN_PREFIX ./$APP_NAME &
  fi
}

stop(){
  is_exist
  if [ $? -eq "0" ]; then
    kill -9 $pid
  else
    echo "${APP_NAME} is NOT running."
  fi
}

status(){
  is_exist
  if [ $? -eq "0" ]; then
    echo "${APP_NAME} is running.Pid id ${pid}"
  else
    ehoc "${APP_NAME} is NOT running."
  fi
}

restart(){
  stop
  start
}

case "$1" in
  "start")
    start
    ;;
  "stop")
    stop
    ;;
  "status")
    status
    ;;
  "restart")
    restart
    ;;
  *)
    usage
    ;;
esac
