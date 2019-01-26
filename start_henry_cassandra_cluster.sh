#!/bin/bash

ansible cassandra -a "rm -fr /var/lib/cassandra/"

ansible cassandra -a "mkdir -p /var/lib/cassandra/data"
ansible cassandra -a "mkdir -p /var/lib/cassandra/saved_caches"
ansible cassandra -a "mkdir -p /var/lib/cassandra/hints"
ansible cassandra -a "mkdir -p /var/lib/cassandra/commitlog"
ansible cassandra -a "mkdir -p /var/lib/cassandra/logs"
ansible cassandra -a "mkdir -p /var/lib/cassandra/cdc_raw"
ansible cassandra -a "mkdir -p /var/lib/cassandra/full_query_log"
ansible cassandra -a "ln -s /opt/share/git.repo/cassandra.git/bin /var/lib/cassandra/bin"
ansible cassandra -a "ln -s /opt/share/git.repo/cassandra.git/lib /var/lib/cassandra/lib"
ansible cassandra -a "ln -s /opt/share/git.repo/cassandra.git/build /var/lib/cassandra/build"
ansible cassandra -a "ln -s /opt/share/git.repo/cassandra.git/conf /var/lib/cassandra/conf"

#ansible cassandra -a "cassandra -R"

