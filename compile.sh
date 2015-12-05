#!/usr/bin/env bash
for i in *.tex; do
    lualatex --shell-escape "$i" && lualatex --shell-escape "$i"
done
exit 0;
