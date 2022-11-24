terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "aws-one-click"
    #key            = "$($env:env)/($env:tfstat_loc)"
    key            = "codepipeline/dev/foundation/vpc.tfstate"
    region         = "ap=south-1"
    #Replace this with your DynamoDB table name!
    #dynamodb_table = "$($env:dynamo_db)"
    encrypt        = true
  }
}
