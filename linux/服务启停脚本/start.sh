#!/bin/bash

nohup ./server &
echo $!> server.pid