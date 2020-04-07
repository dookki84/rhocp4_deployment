#!/usr/bin/expect

spawn openssl req -newkey rsa:4096 -nodes -sha256 -keyout domain.key -x509 -days 365 -out domain.crt

expect "(.*)Country Name(.*):"
send -- "KR\r"

expect "(.*)State or Province Name(.*):"
send -- "SEOUL\r"

expect "(.*)Locality Name(.*):"
send -- "SEOUL\r"

expect "(.*)Organization Name(.*):"
send -- "Red Hat\r"

expect "(.*)Organizational Unit Name(.*):"
send -- "GPTE\r"

expect "(.*)Common Name(.*):"
send -- "utilityvm.example.com\r"

expect "(.*)Email Address(.*):"
send -- "dekim@redhat.com\r"

interact

