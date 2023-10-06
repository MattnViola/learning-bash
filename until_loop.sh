#!/bin/bash

counter=3
until [ $counter -lt 3 ]; do
    let counter-=1
    echo $counter
done