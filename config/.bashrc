#!/bin/bash
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

export PATH=/usr/local/bin:$PATH
export PATH=/home/isucon/.local/ruby/bin:$PATH
export PATH=/home/isucon/.local/node/bin:$PATH
export PATH=/home/isucon/.local/python3/bin:$PATH
export PATH=/home/isucon/.local/perl/bin:$PATH
export PATH=/home/isucon/.local/php/bin:$PATH
export PATH=/home/isucon/.local/php/sbin:$PATH
export PATH=/home/isucon/.local/go/bin:$PATH
export GOROOT=/home/isucon/.local/go
export GOPATH=/home/isucon/webapp/go
export PATH=/home/isucon/.local/scala/bin:$PATH

export LC_ALL=C.UTF-8
export LANG=C.UTF-8

alias ll='ls -al'

export REPO=$HOME/webapp

export PATH=$REPO/bin:$PATH
alias mycon='mysql -h localhost -P 3306 -u root isucon5q'
alias mypro='myprofiler -host=localhost -user=root -limit=30 -dump=$HOME/logs/mysql/rawquery.sql.`date +%Y-%m-%d_%H-%M-%S`'
alias summary='python $REPO/bin/summary_log.py $HOME/logs/nginx/`ls $HOME/logs/nginx | tail -1`'
