#!/bin/sh

ssh-keygen -R web001
ssh-keygen -R 10.254.255.11

ssh-keygen -R web002
ssh-keygen -R 10.254.255.12

ssh-keygen -R db001
ssh-keygen -R 10.254.255.21

ssh-keygen -R db002
ssh-keygen -R 10.254.255.22

ssh-keyscan -H web001 >> ~/.ssh/known_hosts
ssh-keyscan -H web002 >> ~/.ssh/known_hosts
ssh-keyscan -H db001 >> ~/.ssh/known_hosts
ssh-keyscan -H db002 >> ~/.ssh/known_hosts

