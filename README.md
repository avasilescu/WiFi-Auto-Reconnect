# WiFi-Auto-Reconnect
Bash script that auto reconnects the WiFi if it cannot connect to various servers (google, bing, yahoo, etc).

Pings servers 4 times. All servers must fail ping response, wifi is turned off and on. 

## Setup
### Make script executable
`chmod +x filename.sh`

### Create a cronjob
At the command line
`crontab -e`

Add the following line if you want to run the script once per hour at the top of the hour
`0 * * * * /location/of/file.sh`
