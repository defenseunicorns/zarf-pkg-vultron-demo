#!/bin/sh

zarf init --components=k3s,zarf-injector,zarf-registry,zarf-seed-registry,zarf-agent,git-server,logging --confirm zarf-init-amd64.tar.zst
sleep 15
zarf package deploy