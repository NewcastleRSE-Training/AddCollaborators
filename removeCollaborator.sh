#!/bin/sh

gh api --method DELETE -H "Accept: application/vnd.github+json2" /repos/NclRSE-Training/countries/collaborators/${1}

