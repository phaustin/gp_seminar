#!/bin/bash -v
ipython nbconvert --to html *ipynb
rsync  --progress --stats -az *html  -e ssh piphome:/home/phil/public_html/Downloads/gp_seminar/
