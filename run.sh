#!/bin/bash

echo "Running 1x provider version..."
docker run -it --rm -e OP_CONNECT_HOST -e OP_CONNECT_TOKEN -v $(pwd):/app -w /app/1x  hashicorp/terraform:1.11.1 init
docker run -it --rm -e OP_CONNECT_HOST -e OP_CONNECT_TOKEN -v $(pwd):/app -w /app/1x  hashicorp/terraform:1.11.1 apply --auto-approve
docker run -it --rm -e OP_CONNECT_HOST -e OP_CONNECT_TOKEN -v $(pwd):/app -w /app/1x  hashicorp/terraform:1.11.1 destroy --auto-approve

echo "Running 2x provider version..."
docker run -it --rm -e OP_CONNECT_HOST -e OP_CONNECT_TOKEN -v $(pwd):/app -w /app/2x  hashicorp/terraform:1.11.1 init
docker run -it --rm -e OP_CONNECT_HOST -e OP_CONNECT_TOKEN -v $(pwd):/app -w /app/2x  hashicorp/terraform:1.11.1 apply --auto-approve
docker run -it --rm -e OP_CONNECT_HOST -e OP_CONNECT_TOKEN -v $(pwd):/app -w /app/2x  hashicorp/terraform:1.11.1 destroy --auto-approve
