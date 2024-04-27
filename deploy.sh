#!/bin/bash
rsync -avz --exclude '.git/' --exclude '.gitattributes' --exclude '.gitignore' -e "ssh -i $PRIVATE_KEY" $SOURCE $EC2_USER@$IP:$DESTINATION
