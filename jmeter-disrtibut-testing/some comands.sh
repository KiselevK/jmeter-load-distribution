#  apache-jmeter-${JMETER_VERSION}/bin/ ./jmeter-server \
#     -Dserver.rmi.localport=50000 \
#     -Dserver_port=1099 \
#     -Jserver.rmi.ssl.disable=true

#     JVM_ARGS="-Xms102m -Xmx102m" ./jmeter-server \
#     -Dserver.rmi.localport=50000 \
#     -Dserver.rmi.localhostname=35.159.68.213
#     -Dserver_port=1099 \
#     -Jserver.rmi.ssl.disable=true
#  JVM_ARGS="-Xms102m -Xmx102m" ./jmeter-server -Djava.rmi.server.hostname=35.159.68.213 -Dserver_port=1099
# #     ssh -i "myKey.pem" ubuntu@ec2-35-174-14-30.compute-1.amazonaws.com



JVM_ARGS="-Xms102m -Xmx102m" ./jmeter-server  -Dserver.rmi.localport=50000  -Dserver_port=1099 
JVM_ARGS="-Xms102m -Xmx102m" jmeter -n -t test.jmx -R 172.31.30.196  -l data/log.jtl -j data/test.log -e -o data/out

# #     tar -xvzf apache-jmeter-${JMETER_VERSION}.tgz --strip-components=1 -C'jmeter'

# ssh -i "myKey.pem" ubuntu@ec2-35-174-14-30.compute-1.amazonaws.com

# 172.31.1.201
# JVM_ARGS="-Xms102m -Xmx102m"  ./jmeter -n -t test.jmx -R 35.159.68.213 -Dclient.rmi.localhostname=54.91.214.238 -l data/log.jtl -j data/test.log -e -o data/out


# # scp -i "Test.pem"  '/Users/kyrylokyselov/Documents/terraform/jmeter-load-distribution/modules/jmeter-instance/test.jmx' ubuntu@ec2-35-174-14-30.compute-1.amazonaws.com:/home/ubuntu/apache-jmeter-5.6.3/bin

# # -i "Test.pem" 

# sudo scp -i "Test.pem" /apache-jmeter-5.6.3/bin/rmi_keystore.jks ubuntu@ec2-35-159-68-213.eu-central-1.compute.amazonaws.com:/apache-jmeter-5.6.3/bin
# scp -i "Test.pem" '/Users/kyrylokyselov/Documents/terraform/jmeter-load-distribution/modules/jmeter-instance/test.jmx' ubuntu@ec2-54-91-214-238.compute-1.amazonaws.com:/apache-jmeter-5.6.3/bin


# JVM_ARGS="-Djava.rmi.server.hostname=35.159.68.213 -Xms102m -Xmx102m" ./jmeter-server -Dserver.rmi.localport=50000 -Dserver_port=11000


scp -i ~/.ssh/Test.pem  /home/ubuntu/jmeter/bin/rmi_keystore.jks ubuntu@ec2-3-89-254-57.compute-1.amazonaws.com:/home/ubuntu/jmeter/bin/rmi_keystore.jks 


ssh -i 'Test.pem' ubuntu@ec2-3-89-254-57.compute-1.amazonaws.com

chmod 644 /home/ubuntu/jmeter/bin/rmi_keystore.jks