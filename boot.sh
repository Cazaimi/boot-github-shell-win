# Boot up github shell access for Windows WSL.

#!/bin/bash

private_key_location=~/.ssh/github_rsa # Change this location to where your file is located.

verbose=$1

echo 'Starting...'

if [ "$1" = "-v" ]; then
  echo 'Booting up ssh-agent...'
fi

eval `ssh-agent -s`
# ssh_agent_running=$(ssh-agent -s)

if [ "$1" = "-v" ]; then
	echo 'ssh-agent started with output:' $ssh_agent_running
  echo 'Adding private key to ssh-agent...'
fi

ssh_add_result=$(ssh-add $private_key_location)

if [ "$1" = "-v" ]; then
	echo 'ssh-agent started with output:' $ssh_agent_running
  echo 'Adding private key to ssh-agent...'
  echo 'Command result: '$ssh_add_result
fi

echo 'Completed.'
