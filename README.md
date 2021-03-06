# Macchanger for Debian distros.


### Preparation

1.) Do nothing. At least under Debian everything should be installed by default.


### Manual

All of these commands needs to be executed with root permissions. You either log in as root or running all commands with 'sudo' at the beginning.

1.) Run `wget https://github.com/NukeOfTheShadow/macchanger/blob/master/macchanger.sh`

2.) Run `chmod +x macchanger.sh` so you can execute the script.

3.) Edit the 'ifaces' variable for your needs like `ifaces=(enp0s25 wlan0)`

4.) Run the script with `./macchanger.sh`

#### The following steps are optional and only required if you want to change the mac adress on every startup / reboot. If you want to change the mac adress manually you can just simply execute the script with the command 'bash macchanger.sh'

3.) Run 'cp macchanger.sh /etc/init.d/macchanger' to copy the script to the service folder.

4.) Run 'update-rc.d macchanger defaults' to add the script to autostart.

5.) Reboot.

6.) You should now have a new MAC-Adress on the given Interfaces.
You can set the name of the interfaces in the macchanger script by changing the variable 'ifaces' to, for example, wlan0. There also is support for multiple interfaces. So you can change the variable 'ifaces' to a space-seperated list. For example 'eth0 wlan0' and so on.


### Removing from autostart

To remove the script from autostart you only have to run the following command as root: `update-rc.d -f macchanger remove`.
