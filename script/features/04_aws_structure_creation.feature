Feature: Creating AWS structure for usage with MongoDB
 # Enter feature description here

	@create
	@mongodb_tf
	@aws_structure_tf
	Scenario: Create AWS structure for MongoDB
		Given customer name for AWS is flugel-test
		And terraform bucket name for AWS is terraform-state
		And AWS region for AWS is eu-west-2
		And terraform region for S3 is us-west-2
		And namespace for AWS is cluster_test
		And project name for AWS is aws-vpc
		And public key path for AWS is ~/.ssh/id_rsa.pub
		And terraform backend is set to S3 bucket
		And VPC with name cluster_test is doesn't exist
		When terraform config for AWS is initialized
		And terraform config for AWS is planned
		And terraform config for AWS is applied
		Then VPC with name cluster_test is exists

