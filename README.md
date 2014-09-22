ezDNS
=====

Distributed Authoritative DNS

This application provides DNS for a homogenous cluster of nodes all running multiple applications.
- Support for machines coming and going
- Simple DNS based randomized load distribution
- Easy programatic addition and deletion of domain records

Future Work:
- Monitor the load of a given node and return A records in order from least busy to most busy
- Current backend presumes couchbase, migrating to ecto would be nice.
