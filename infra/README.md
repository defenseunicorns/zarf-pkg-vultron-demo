# terraform infra

WARNING!!!: This is not yet functional, terraform in place was copied to this directory (as an example).


## Elastic node requirements

- sysctl vm.max_map_count=262144 is required for Elasticsearch to work solution described [here](https://www.elastic.co/guide/en/elasticsearch/reference/current/vm-max-map-count.html) and [here](https://stackoverflow.com/questions/51445846/elasticsearch-max-virtual-memory-areas-vm-max-map-count-65530-is-too-low-inc)
