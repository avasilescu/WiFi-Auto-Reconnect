# WiFi-Auto-Reconnect
Bash script that auto reconnects the WiFi if it cannot connect to various servers (google, bing, yahoo, etc).

Pings servers 4 times. If all servers fail ping response, wifi is restarted (turned off then back on). 

*NOTE: This script will use 'sudo' as 'ifup' requires 'sudo'. This may change in the future once a better way is figured out, but for now this is what it is.

## Setup
### Make script executable by root
`sudo chmod +x filename.sh`

### Create a cronjob
At the command line
`crontab -e`

Add the following line if you want to run the script once per hour at the top of the hour. See crontab for more details.
`0 * * * * /location/of/file.sh`
