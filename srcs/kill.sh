#!bin/bash
#use deployement name as first arguments and process name as a second
kubectl exec deploy/$1 -- pkill $2