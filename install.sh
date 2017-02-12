#!/bin/bash

# Dependencies

aptitude update
aptitude install tor hostapd isc-dhcp-server

# Router configuration

[ -d /etc/onion_router ] && rm -rf /etc/onion_router
cp -r etc/onion_router /etc/

[ -f /usr/bin/onion-router ] && rm /usr/bin/onion-router
cp usr/bin/onion-router /usr/bin/
chmod 555 /usr/bin/onion-router
