#!/bin/bash

current_cov=$(curl -s https://gitlab.com/api/v4/projects/${CI_PROJECT_ID}/pipelines/${CI_PIPELINE_ID} | jq '.coverage')
current_cov=$(echo "$current_cov" | awk -F[\"\.] '{print $2}')
echo "On current pipline nr. $CI_PIPELINE_ID - the current coverage value = $current_cov"

master_pipe_id=`curl -s https://gitlab.com/api/v4/projects/${CI_PROJECT_ID}/pipelines\?ref\=master\&status\=success | jq '.[0] | .id'`
master_cov=`curl -s https://gitlab.com/api/v4/projects/${CI_PROJECT_ID}/pipelines/${master_pipe_id} | jq '.coverage'`

echo "Master coverage value = $master_cov"
master_cov=$(echo "$master_cov" | awk -F[\"\.] '{print $2}')
echo "Exact master coverage value = $master_cov"

if [ "$current_cov" -ge "$master_cov" ]
then
  echo "Current pipeline's coverage >= master's pipeline coverage"
else
  echo "Current pipeline's coverage < master's pipeline coverage"
  exit 1
fi
