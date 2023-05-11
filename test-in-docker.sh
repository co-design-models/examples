#!/bin/bash

mcdp-load-libraries -o out  -c "-rparmake n=4" || true
compmake out/compmake -c "ls; stats; details failed; why failed"
comptests-to-junit --fail-if-failed out/compmake --output "out/comptests/junit/junit.xml" --output-txt "out/comptests/junit/summary.txt" --known-failures known_failures.yaml
