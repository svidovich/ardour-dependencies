#!/usr/bin/env bash
if [ ${USER} != "root"  ]; then
  echo "Run this script as root, i.e. sudo post-provision.sh"
  exit 1
fi
usermod -a -G audio ${SUDO_USER}
echo "@audio           -       rtprio          99" >> /etc/security/limits.conf
