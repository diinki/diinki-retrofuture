#!/bin/bash

# Reload/Open eww
eww kill
eww daemon

# Open widgets for monitor 1
eww open yearbox
eww open monthbox
eww open daybox
eww open userinfo

# Open widgets for monitor 2
eww open yearbox_monitor2
eww open monthbox_monitor2
eww open daybox_monitor2
