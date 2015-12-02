# docker-machine-on-aws

This script sets up a docker machine on AWS with a static IP and DNS entry.

To run this script, you need:-

- on AWS:-
  - a VPC with a public subnet
  - a hosted zone set up that you can add a resource record to.
  - a user with EC2 and Route53 permissions
- on your machine:-
  - docker-machine: https://www.docker.com/docker-toolbox
  - aws cli: https://aws.amazon.com/cli/
  - jq: https://stedolan.github.io/jq/

Before running, make sure you have the following environment variables:-

```
export AWS_SECRET_ACCESS_KEY=your-secret-access-key
export AWS_ACCESS_KEY_ID=your-access-key-id
export AWS_REGION=your-region-id (I use eu-west-1) 
export AWS_DEFAULT_REGION=$AWS_REGION
export AWS_VPC_ID=your-vpc-id
```

Currently you have to edit the domain at the top of the script to choose a domain you already have set up on route53.