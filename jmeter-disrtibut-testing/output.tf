
output "aws_ami" {
  value = data.aws_ami.get_latest_ubuntu22.id
}

output "jmeter_server_instances_id" {
  value = {
    for server in aws_instance.jmeter_server_instance :
    server.tags.Name => server.public_ip
  }
}
output "jmeter_client_instances_id" {
  value = "${aws_instance.jmeter_client_instance.tags.Name} = ${aws_instance.jmeter_client_instance.public_ip}"

}

output "jmeter_server_instances_ssh" {
  value = {
    for server in aws_instance.jmeter_server_instance :
    "${server.tags.Name} ssh conection string" => "ssh -i 'Test.pem' ubuntu@${server.public_dns}"
  }
}
output "jmeter_client_instances_ssh" {
  value = "${aws_instance.jmeter_client_instance.tags.Name} ssh conection string = ssh -i 'Test.pem' ubuntu@${aws_instance.jmeter_client_instance.public_dns}"
}
output "tls_private_key_value" {
  value     = tls_private_key.jmeter_instance_pem.private_key_pem
  sensitive = true
}

output "jmeter_execution_command" {
  value = "JVM_ARGS='${var.jvm_args}' nohup  jmeter -n -t test.jmx  -Dserver.rmi.ssl.keystore.file='/home/ubuntu/jmeter/bin/rmi_keystore.jks' -R ${local.jmeter_server_ips} -l data/log.jtl -j data/test.log -e -o data/out &"
}


output "jmeter_server_command" {
  value = "JVM_ARGS='${var.jvm_args}' nohup  /home/ubuntu/jmeter/bin/jmeter-server  -Dserver.rmi.ssl.keystore.file='/home/ubuntu/jmeter/bin/rmi_keystore.jks' -Dserver.rmi.localport=50000  -Dserver_port=1099 &"
}

