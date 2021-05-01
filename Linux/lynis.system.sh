#!/bin/bash

#running lynis command to run a full system scan

lynis audit system >> /tmp/lynis.system_scan.log

