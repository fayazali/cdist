#!/bin/sh
# in the template, use cat << eof (here document) to output the text
# and use standard shell variables in the template
# output everything in the template script to stdout
cat << EOF
server {
  listen                          8080;
  server_name                     $SERVERNAME;
  root                            $ROOT;

  access_log /var/log/nginx/$SERVERNAME_access.log
  error_log /var/log/nginx/$SERVERNAME_error.log
}
EOF
