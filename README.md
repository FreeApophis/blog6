# blog6

Simple Rails 6 Blog

## Setup Environment Variables

With systemd

Add Environment Variable in:
/etc/systemd/system/nginx.service.d/override.conf

if file does not exist:
systemctl edit nginx

[Service]
Environment="BLOG6_DATABASE_PASSWORD=<PASSWORD>"

Reload Service:
systemctl edit nginx.service
service nginx restart
