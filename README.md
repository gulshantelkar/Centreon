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

![](https://lh7-us.googleusercontent.com/zgiJt7rWA6A__HBcuFDjL8xVRBOwIEd6HAVUjTghzyuWUTorqeMpT_B-8F_HqzZseBHo4ItFa7OGjqJDV42VwFhMbvSSSqDiM1UtzALVaEnnD_K12gpIj_NBgdMFuCrugtlJ5VgGSFbmK2KdJadTZoY)

3\. Click on the central-broker-master broker configuration.

4\. Go to the Output tab and add a new Generic - Stream connector output.

![](https://lh7-us.googleusercontent.com/Rtc76sB-67c1mzKEnxPEWCc8zDPU5v8uA-ZVn9UttAWJ_-wy24qAPJ3Zw0OygGWKPI-5sixkT-9nZ8lgEMsc0YMjQkLfFB0-6o8CN51pUzDbWbW1uNHCIGA9fnsfcsombF47ut811sFUetmm5r2356M)

5\. Give it a name and set up the stream connector path /usr/share/centreon-broker/lua/zenduty_lua_script.lua[ ](https://raw.githubusercontent.com/centreon/centreon-stream-connector-scripts/master/centreon-certified/pagerduty/pagerduty-events-apiv2.lua)

6\. Add a new string parameter called zenduty_integration_key with the integration key copied earlier as a value.![](https://lh7-us.googleusercontent.com/7VcTTvJ2qlpJa3a6DDoHvfUD980DV4WE7JTfsUnQLT3g_yOx5Vx8k79fexPU03Oc7NL693B2Q3Io6vYiX08xJwG_j28n1xhpt9vzHZ2z4L-c9rGvgJ_3-mOztIS20ImjnKlkqXwfn1zOtEbV_2fDmMU)

7\. Save your configuration

8\. Go to the Configuration -> Pollers menu and select Pollers.

![](https://lh7-us.googleusercontent.com/3TLR8LGz_nJmQEjNguptpIUj49OglyfX3z17eDjP81mRCpSkQRGGtEuxlj0InY3Iy1-Shsd6Fma9NbXm9psNnsbkSP6zZbIKaEIH5hmZxmK8B3VinsZRzjkomYPfTHYY02zB4-IrmLq3XcDFjQvepA4)

9\. Select the Central poller and click the Export Configuration button.

10\. Select the 4 first checkboxes and click the Export button.

![](https://lh7-us.googleusercontent.com/ve4om_p69JL1p4jv7uHNyQI8Nu1Bd6XZ8apb-Va1gLPAWhGT_6OwwYCnFwcbVdHbyvwQCCNDwHvbGlNW2lHT5ThH2NIdJl2OWe1jjHVso3iD57_QBz5F4trnKeZ0Iv9mhMt2hruNQSG0PEdwbZVtNrk)

11\. Go to Administration, select Platform Status then select Broker Statistics and check that Zenduty is appearing as connected in that list.

![](https://lh7-us.googleusercontent.com/hZ-t7kh57LNf77_BTnqmJlzyK1uA17slSPO2CgNO0RJcvK7fOKX3IsTO3jvSwL2Ld3breCmLsilwr5fxpijr7Wr7jYdT-IosPhe6YsuzebhwYxotj14Z65-vJOjIwXBWZtkJt7g1SKx4olRGBgdl8_8)

12\. Go to configuration -> select hosts. Select Centreon-Central then select notifications, go to the notification period and select 24x7.

![](https://lh7-us.googleusercontent.com/OLj8iuhToekkOoHK0kXERak6ltkNt8xZ32AC6JXrRb1AEBmEiraTNP8JIIYVCMyRRHMs-Lgoh28WPYlFUkELGKmkxZ6Yfh1xsCZ2KyjDR2YZ80Ffz9mRMTvMFh_bZVQnGRWtTOK7YyaTZityy3MyWqQ)

![](https://lh7-us.googleusercontent.com/FL2ZlDLx7422wVJ8FoDfFCktdx1U3GlP1VHelnageq-vZy2TR3I9PX2-4AwC-KsdHopiXq9vbcISL920gPpn3nOSqcCiuwjmn7fhfD9avhT-tnPR5KxOLKOcaK97rG6masI7NqbVV_dAKK6MGnk0Dng)

Note: 

Whenever making changes in Centreon-central or services, you will need to again export the configurations.

13\. Your Centreon integration is now complete!
