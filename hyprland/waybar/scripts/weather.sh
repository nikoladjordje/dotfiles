#!/bin/bash

city="Nis"

weather=$(curl -s "wttr.in/${city}?format=%C+%t")

echo "󰖙 $weather"
