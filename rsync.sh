#!/bin/sh
RAILS_ROOT=/home/vagrant/project/edge
RAILS_ENV=production
DB_FILE=${RAILS_ROOT}/db/${RAILS_ENV}.sqlite3
SSH=

rsync -az  "ssh -i ~.ssh/id_rsa" ${DB_FILE} ${SSH}
