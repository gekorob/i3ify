#!/usr/bin/env sh

echo $(rfkill list | grep 'Soft.*:\s*no' | wc -l)
