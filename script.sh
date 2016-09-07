#!/bin/bash

wget https://github.com/Microsoft/OMS-Agent-for-Linux/releases/download/OMSAgent_GA_v1.2.0-25/omsagent-1.2.0-25.universal.x64.sh -O /tmp/omsagent.x64.sh
sudo sh /tmp/omsagent.x64.sh --upgrade -w c35e28bd-b2cb-4413-acb2-cf2da22186b6 -s qBVv4pXXcVgY+9uX3JEVV1b2MsFNFnlFKCZzxwGw0meTebCNyMYqWM8dXSHYj/WODQPIN4mM490BCrsG88sLZA==


sudo wget https://raw.githubusercontent.com/duoxu/darfo/master/hbase.workernode.conf -O /etc/opt/microsoft/omsagent/conf/omsagent.d/hbase.workernode.conf

sudo wget https://raw.githubusercontent.com/duoxu/darfo/master/filter_hdinsight.rb -O /opt/microsoft/omsagent/plugin/filter_hdinsight.rb

sudo wget https://raw.githubusercontent.com/duoxu/darfo/master/hdinsightmanifestreader.rb -O  /opt/microsoft/omsagent/bin/hdinsightmanifestreader.rb
sudo wget https://raw.githubusercontent.com/duoxu/darfo/master/omsagent
sudo cp omsagent /etc/sudoers.d/
sudo sh ~/.bashrc
sudo service omsagent restart
