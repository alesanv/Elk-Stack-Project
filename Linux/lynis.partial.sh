#!/bin/bash

#run lynis daily scans for the test groups:
# malware, authentication, networking, storage and filesystems
#saves results in /tmp/lynis.partial_scan.log


lynis audit system --tests-from-group malware,authentication,networking,storage,filesystems >> /tmp/lynis.partial_scan.log

