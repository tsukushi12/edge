#!/bin/sh
RAILS_ROOT=/home/vagrant/project/edge
RAILS_ENV=production
DB_FILE=${RAILS_ROOT}/db/${RAILS_ENV}.sqlite3
SSH=
HOST=`hostname`

rsync -az -e "ssh -i ~/.ssh/id_rsa" ${DB_FILE} ${SSH}:~/${HOST}.sqlite3
