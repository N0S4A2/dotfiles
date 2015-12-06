#!/usr/bin/env python
from subprocess import check_output

def get_pass():
    return check_output("pass FastMail | head -n 1", shell=True).rstrip()
