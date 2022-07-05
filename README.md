# zarf-pkg-vultron-demo
Zarf Big Bang package for demonstration to HNCD

## Quick start

```bash
zarf package create # Creates the package based on the zarf.yaml file
zarf init --components=k3s,zarf-injector,zarf-registry,zarf-seed-registry,zarf-agent,git-server,logging --confirm zarf-init-amd64.tar.zst # Initialize zarf and bootstrap a k3s cluster
zarf package deploy # deploy the package to the cluster
```

## Navigating this repository

```shell
.
├── README.md
├── infra # terraform files for automated deployment (currently not used)
├── kustomization 
│   └── bigbang #Custom Big Bang kubernetes manifests
├── scripts # helper and utility scripts
├── test 
│   └── eks # helper scripts to deploy eks
└── zarf.yaml # Zarf Package configuration file
```