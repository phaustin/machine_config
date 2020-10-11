#!/bin/bash -v
NB_USER=jovyan;
NB_UID=2005;
SHELL=/bin/bash ;
# Create jovyan user, permissions, add conda init to startup script
echo "Creating ${NB_USER} user...";
groupadd --gid ${NB_UID} ${NB_USER} ;
useradd --create-home --gid ${NB_UID} --no-log-init --uid ${NB_UID} ${NB_USER};
usermod -a -G ${NB_USER} phil
