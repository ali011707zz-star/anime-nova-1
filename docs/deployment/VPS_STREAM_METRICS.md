# VPS stream metrics

This Nginx snippet adds sampled timing and cache measurements without changing
the playback path. It is installed as
`/etc/nginx/conf.d/nova-stream-metrics.conf`, which the live VPS Nginx includes
inside its `http` block.

The sample log contains only a fixed route label, status, response bytes,
request/upstream time, and Nginx cache status. It does not contain client IPs,
request paths, query strings, referrers, or user agents. Five percent of
matching requests are sampled.

The live VPS does not have `logrotate`; the metrics file is therefore kept in
`/run` (tmpfs), not on disk. It is cleared on reboot. The main access log still
provides unsampled request counts and status codes.

The repository's root `nginx.conf` is for a separate container topology and is
not the VPS configuration. Do not copy it over the VPS configuration.

To validate after installing or changing the snippet:

```sh
nginx -t && systemctl reload nginx
```

To roll back, remove only `nova-stream-metrics.conf`, then run the same
validation and graceful reload. No API process restart is required.