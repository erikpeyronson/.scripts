#!/bin/bash

# Copies torrent files to remote host then remove file from local machine

SOURCE=$HOME/Downloads/torrents
DESTINATION=/storage/rtorrent/torrents
HOST=server

scp $SOURCE/* $HOST:$DESTINATION
rm $SOURCE/*
