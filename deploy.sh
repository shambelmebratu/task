#!/bin/bash
rsync -avz --exclude '.git/' $SOURCE $EC2_USER@$IP:$DESTINATION
