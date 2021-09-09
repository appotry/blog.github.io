#!/bin/bash
set -e

docker run -it --rm \
    --volume="$PWD:/srv/jekyll" --name="jekyll" \
    -p 7000:4000 jekyll/jekyll \
    jekyll serve
    
# docker run -it --rm --volume="$PWD:/srv/jekyll" --name="jekyll" -p 8800:4000 jekyll/jekyll jekyll serve

# grep -nr "linux" ./*