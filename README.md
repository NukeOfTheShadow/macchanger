# Macchanger for Debian distros.


### Preparation

1.) Install git and net-tools with the command 'sudo apt install git net-tools' or 'sudo apt-get install git net-tools'

### Manual

All of these commands needs to be executed with root permissions. You either log in as root or running all commands with 'sudo' at the beginning.

1.) Run 'git clone https://github.com/NukeOfTheShadow/macchanger.git' to download the repo.

2.) Run 'cp macchanger/macchanger.sh /etc/init.d/macchanger' to copy the script.

3.) Run 'chmod +x /etc/init.d/macchanger' so you can execute the script.

4.) Run 'update-rc.d acchanger defaults' to add the script to autostart.

5.) Reboot.

6.) You should now have a new MAC-Adress on the given Interfaces.
You can set the name of the interfaces in the macchanger script by changing the variable 'ifaces' to, for example, wlan0. There is also support for multiple interfaces. So you can change the variable 'ifaces' to a comma-seperated list. For example 'eth0 wlan0' and so on.
