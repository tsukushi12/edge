#!/bin/sh
RAILS_ROOT=/home/vagrant/project/edge
RAILS_ENV=production
PID=${RAILS_ROOT}/tmp/pids/server.pid
SERVICE=bbs
key="SECRET_KEY_BASE=9929e99aed06d694c533f760a33cde37eb4fbf6c240a919a9f50ddb12c7790343536000c83a2a171891e0069074c1a8a51d79a982bf65475e95e3c068589a752"
config="RAILS_SERVE_STATIC_FILES=1"

start()
{
  if [ -e ${PID} ]; then
    echo "${SERVICE} already started"
    exit 1
  fi
  echo "start ${SERVICE}"
  export ${key}
  export ${config}
  ${RAILS_ROOT}/bin/rails s -b 0.0.0.0 -p 80 -e ${RAILS_ENV} -d
}
stop()
{
  if [ ! -e ${PID} ]; then
    echo "${SERVICE} not started"
    exit 1
  fi
  echo "stop ${SERVICE}"
  kill -QUIT `cat ${PID}`
}
restart()
{
  if [ -e ${PID} ]; then
    stop
    sleep 3
  fi
  start
}

case "$1" in
  start)
    start
    ;;
  stop)
    stop
    ;;
  restart)
    restart
    ;;
  *)
    echo "Syntax Error: release [start|stop|restart]"
    ;;
esac
