#!/bin/bash

bash ./script > temp
cp temp pom.xml
rm temp
