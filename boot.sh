#!/bin/bash
# Boot up github shell access for Windows WSL/Ubuntu.

if [ "$#" -lt 1 ]
then
echo  "Please insert at least one argument"
exit
fi

myArray=( "$@" )
private_key_location=${myArray[0]} 
verbose=${myArray[1]}

if [ ! -e $private_key_location ]; then
  echo "key $private_key_location not found"
  exit
fi

echo 'Starting...'

if [ "$verbose" = "-v" ]; then
  echo 'Booting up ssh-agent...'
fi

ssh_agent_running=$(ssh-agent -s)

if [ "$verbose" = "-v" ]; then
	echo 'ssh-agent started with output:' $ssh_agent_running
  echo 'Adding private key to ssh-agent...'
fi

ssh_add_result=$(ssh-add $private_key_location)

if [ "$verbose" = "-v" ]; then
  echo 'Command result: '$ssh_add_result
fi

echo 'Completed.'
