#!/bin/bash
# This assumes there is already an ubuntu:latest container running called resume-builder.
# If deployed with ansible, this should already be the case. If not, this command will work:
## sudo docker run -i -d  -v '/root/Dylan-Resume:/source' -v '/var/www/files.dylanmtaylor.com/html:/destination' --name resume-builder --restart always ubuntu:latest

# First we isntall texlive build dependencies if they're not there already.
sudo docker exec -t resume-builder bash -c 'apt-get update && export DEBIAN_FRONTEND=noninteractive && apt-get install -y texlive-xetex texlive-fonts-recommended texlive-font-utils'

sudo docker exec -t resume-builder bash -c 'cd /source &&  xelatex --output-directory=/destination dylan-resume.tex; ls -lah /destination/'
