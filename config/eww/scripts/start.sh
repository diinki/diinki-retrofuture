#!/bin/bash

# Reload/Open eww
eww daemon --restart

# Open widgets for monitor 1
eww open yearbox
eww open monthbox
eww open daybox
eww open userinfo
