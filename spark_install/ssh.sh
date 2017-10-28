#!/bin/bash
ssh-keygen -t rsa   
ssh-copy-id -i ~/.ssh/id_rsa.pub spark@master
ssh-copy-id -i ~/.ssh/id_rsa.pub spark@slave01
ssh-copy-id -i ~/.ssh/id_rsa.pub spark@slave02
ssh-copy-id -i ~/.ssh/id_rsa.pub spark@slave03
ssh-copy-id -i ~/.ssh/id_rsa.pub spark@slave04
chmod 0600 ~/.ssh/authorized_keys
