# macchanger for Debian / Raspbian


### Preparation

1.) Install git and net-tools with the command 'apt install git net-tools' or 'apt-get install git net-tools'

### Manual

1.) Run 'git clone https://github.com/NukeOfTheShadow/macchanger.git' to download the repo.

2.) Run 'cp macchanger/macchanger.sh /etc/init.d/macchanger' to copy the script.

3.) Run 'chmod +x /etc/init.d/macchanger' so you can execute the script.

4.) Run 'update-rc.d acchanger defaults' to add the script to autostart.

5.) Reboot.

6.) You should now have a new MAC-Adress on the given Interface.
You can set the name of the interface in the macchanger script by changing the variable 'ifaces' to, for example, wlan0. There is support for multiple interfaces also. So you can change the variable 'ifaces' to a comma-seperated list. For example 'eth0 wlan0' and so on.
