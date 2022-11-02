# taskrabbit
Basic tests for TaskRabbit

Ruby 3.0.0

how to use this solution:

1. bundle install
1. cucumber

rerun failing:

`cucumber -f rerun --out rerun.txt
It will output locations of all failed scenarios to this file.

Then you can rerun them by using

`cucumber @rerun.txt


to run test with tags
`cucumber --tags "@web" 
