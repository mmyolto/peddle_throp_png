#!/bin/sh
# Builds the live site (index.html) and the claude.ai preview (preview.html) from src/body.html.
# Run with: sh build.sh
cd "$(dirname "$0")"
FB='<iframe class="fb-frame" title="Peddle Thorp Architects PNG on Facebook" loading="lazy" src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fpeddlethorparchitectspng%2F\&tabs=timeline\&width=380\&height=520\&small_header=true\&adapt_container_width=true\&hide_cover=false" allow="encrypted-media"></iframe>'
{
  printf '<!doctype html>\n<html lang="en">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n<meta name="description" content="Peddle Thorp Architects PNG: architecture, interiors and planning from Port Moresby for over thirty years.">\n'
  awk '/<header class="site-head">/{exit} {print}' src/body.html
  printf '</head>\n<body>\n'
  awk 'f{print} /<header class="site-head">/{f=1; print}' src/body.html | sed "s|<!--FB-EMBED-->|$FB|"
  printf '</body>\n</html>\n'
} > index.html
python3 tools-inline.py
