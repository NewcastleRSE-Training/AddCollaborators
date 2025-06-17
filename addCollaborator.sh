#!/bin/sh

gh api --method PUT -H "Accept: application/vnd.github+json2" /repos/NclRSE-Training/countries/collaborators/${1} -f permission='write'

