terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "$($env:s3_bucket)"
    #key            = "$($env:env)/($env:tfstat_loc)"
    key            = "excel/$($env:env)/foundation/$($env:tfstat_loc)"
    region         = "$($env:region)"
    #Replace this with your DynamoDB table name!
    #dynamodb_table = "$($env:dynamo_db)"
    encrypt        = true
  }
}