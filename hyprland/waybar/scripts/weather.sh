#!/bin/bash

city="Nis"

weather=$(curl --silent --max-time 5 "wttr.in/${city}?format=%C+%t")

echo "󰖙 $weather"
