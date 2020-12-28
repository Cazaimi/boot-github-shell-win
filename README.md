# Connect to Github on Windows WSL/Ubuntu

I wrote this shell script, because each time I opened Windows WSL, I had to manually start the `ssh-agent` and add my github private key to it, so that I may access Github using the shell 😤. 

Well now, you can have this, do that for you! 🎊🎊🎊

## Set up

1. Either download or clone this repo
2. Run `boot.sh` with location of ssh private key as argument
3. Copy the path to the `boot.sh` file by
   1. `cd boot-github-shell-win`
   2. Copy output of `pwd`
4. Make the file executable by `chmod u+x boot.sh`
5. In case you want this to execute each time you log in, add the following to either your `~/.profile` or `~/.bash_login` file:
   1. `source <path-to-boot-sh-from-step-2.2>`

*Et Voila!* 🥐🗼

## Options

You may opt to print details around the execution by calling the script with additional flag `-v` like so: `bash boot.sh <private-key-location> -v`