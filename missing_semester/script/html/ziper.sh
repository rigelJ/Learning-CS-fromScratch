#!/usr/bin/bash
find . -name "*.html" -print0 | xargs -0 tar czf tester.tar
