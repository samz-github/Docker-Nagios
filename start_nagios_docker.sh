mkdir -p /opt/nagios/{etc,var}
mkdir -p /opt/nagiosgraph/{etc,var,rrd}
mkdir -p /opt/Custom-Nagios-Plugins

docker run -d --name nagios4.4.3  \
  -v /opt/nagios/etc/:/opt/nagios/etc/ \
  -v /opt/nagios/var:/opt/nagios/var/ \
  -v /opt/Custom-Nagios-Plugins:/opt/Custom-Nagios-Plugins \
  -v /opt/nagiosgraph/var:/opt/nagiosgraph/var \
  -v /opt/nagiosgraph/etc:/opt/nagiosgraph/etc \
  -v /opt/nagiosgraph/rrd:/opt/nagiosgraph/rrd \
    -p 0.0.0.0:90:80 nagios:4.4.3

