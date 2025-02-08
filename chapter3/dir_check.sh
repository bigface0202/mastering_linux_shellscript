#!/bin/bash
github=~/github
if [ -d "$github" ]
then
    echo "${github} exist"
else
    echo "${github} does not exist"
fi