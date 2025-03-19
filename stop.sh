#!/bin/bash

killall -s SIGKILL java
fuser -k 12345/tcp
