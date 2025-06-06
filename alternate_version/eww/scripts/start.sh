#!/bin/bash

# Reload/Open eww
eww kill
eww daemon

# Open widgets for monitor 1
eww open yearbox
eww open monthbox
eww open daybox
eww open userinfo
