#!/bin/bash

num=$(ls ./mods | wc -l)
sub="placeholder"

output=$(sed "s/$sub/$num/g" ./template.server.properties)

echo "$output" > ./server.properties
