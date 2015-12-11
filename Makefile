CWD = $(PWD)

.PHONY deploy-default-vpc
deploy-default-vpc:
	aws cloudformation update-stack --stack-name default-vpc --template-body file://$(CWD)/default-vpc-template.json

.PHONY deploy-custom-vpc
deploy-custom-vpc:
	aws cloudformation update-stack --stack-name custom-vpc --template-body file://$(CWD)/custom-vpc-template.json

.PHONY deploy-dynamodb-datapipeline
deploy-dynamodb-datapipeline:
	aws cloudformation update-stack --stack-name ddb-datapipeline --template-body file://$(CWD)/dynamodb-datapipline-template.json

.PHONY deploy-single-instance
deploy-single-instance:
	aws cloudformation update-stack --stack-name single-instance --template-body file://$(CWD)/single-instance-template.json

.PHONY deploy-cloudwatch-logs
deploy-cloudwatch-logs:
	aws cloudformation update-stack --stack-name cloudwatch-logs --template-body file://$(CWD)/cloudwatch-logs-template.json
	
.PHONY deploy-docker-instance
deploy-docker-instance:
	aws cloudformation update-stack --stack-name docker-instance --template-body file://$(CWD)/docker-instance-template.json

.PHONY deploy-docker-instance
deploy-docker-instance:
	aws cloudformation update-stack --stack-name docker-instance --template-body file://$(CWD)/docker-autoscaling-template.json