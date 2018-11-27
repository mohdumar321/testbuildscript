#!/bin/bash

var1=$(sed -n '/<packaging>jar<\/packaging>/q;p' ./test | sed '0,/^<artifactId>my-application1<\/artifactId>$/d' | grep -oPm1 "(?<=<version>)[^<]+")
orig_val=$var1
var1=$(echo "$var1 + 1" | bc -l)
cat test | tr '\n' '\r' | sed "s/$orig_val<\/version>\r<packaging>/$var1<\/version>\r<packaging>/g" | tr '\r' '\n' | head
