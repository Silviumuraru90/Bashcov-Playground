# Bashcov Playground

Bash jobs unit tested via Bashcov lib and having `INDIVIDUAL` results, but also a `MERGED` result across the unit tests

![](Media/bash_readme.jpeg)

## Project features
- Latest Linux ARM 64 running with Ruby 2.6.3; and latest: Bashcov (working on Simplecov engine), Bundler for Gems (Simplecov and Rake)
- Individual Bashcov coverages on multiple unit tests
- Merged coverage of all unit tests
- Coverage badge on the project working on 'master' branch
- Ability to automatically fail MRs based on lower coverage than what's on 'master'