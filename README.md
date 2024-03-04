Centreon Integration:

### Stream connector installation

1\. Connect to your Centreon central server through SSH with a root user.

2\. Install the needed dependencies:\
yum install -y lua-curl epel-release make gcc

3\. Install the lua packet manager called luarocks:\
yum install luarocks

4\. Install the needed lua modules:\
luarocks install centreon-stream-connectors-lib\
luarocks install luatz 

5\. If the 4th step fails, run the following command and try again:

yum install lua-devel

6\. Download the Stream Connector:

wget -O /usr/share/centreon-broker/lua/zenduty_lua_script.lua [https://raw.githubusercontent.com/centreon/centreon-stream-connector-scripts/master/centreon-certified/pagerduty/pagerduty-events-apiv2.lua

](https://raw.githubusercontent.com/centreon/centreon-stream-connector-scripts/master/centreon-certified/pagerduty/pagerduty-events-apiv2.lua)

7\. Configure the right permissions:\
chmod 644 /usr/share/centreon-broker/lua/zenduty_lua_script.lua

### Stream connector configuration

1\. Connect to the Centreonweb interface with an admin account.

2\. Go to Configuration -> Pollers and select Broker Configuration.

3\. Click on the central-broker-master broker configuration.

4\. Go to the Output tab and add a new Generic - Stream connector output.

5\. Give it a name and set up the stream connector path /usr/share/centreon-broker/lua/zenduty_lua_script.lua[ ](https://raw.githubusercontent.com/centreon/centreon-stream-connector-scripts/master/centreon-certified/pagerduty/pagerduty-events-apiv2.lua)

6\. Add a new string parameter called zenduty_integration_key with the integration key copied earlier as a value.![]

7\. Save your configuration

8\. Go to the Configuration -> Pollers menu and select Pollers.

9\. Select the Central poller and click the Export Configuration button.

10\. Select the 4 first checkboxes and click the Export button.

11\. Go to Administration, select Platform Status then select Broker Statistics and check that Zenduty is appearing as connected in that list.

12\. Go to configuration -> select hosts. Select Centreon-Central then select notifications, go to the notification period and select 24x7.

Note: 

Whenever making changes in Centreon-central or services, you will need to again export the configurations.

13\. Your Centreon integration is now complete!
