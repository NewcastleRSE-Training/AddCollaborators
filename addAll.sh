#!/bin/sh

while read line
do
  ./addCollaborator ${line}
done < collaborators.txt
