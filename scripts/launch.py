#!/usr/bin/env python
#
## Docker Launch Script
## for Kali Linux Rolling.

import sys
import os

def bashrc():
	os.system("echo 'source /usr/share/powerline/bindings/bash/powerline.sh' >> /root/.bashrc");

def bash():
	os.execl('/bin/bash','');

bashrc()
bash()
