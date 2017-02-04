#!/bin/sh

git daemon --verbose --enable=receive-pack --base-path=/git --export-all

