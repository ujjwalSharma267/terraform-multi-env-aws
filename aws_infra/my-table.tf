#DynamoDB table resource to create a DynamoDB table with the specified name, billing mode, and hash key.
resource "aws_dynamodb_table" "name" {    #Using the variable defined in variable.tf to set the table name
  name           = "${var.my-env}-my-multi-env-aws-infra-table"  #The name of the DynamoDB table
  billing_mode   = "PAY_PER_REQUEST"    # Setting the billing mode to on-demand (PAY_PER_REQUEST) which means you pay for the read and write requests you make to the table
  hash_key       = "id"                 #The primary key for the table, which is a string attribute named "id"
    attribute {                         #Defining the attribute for the hash key
        name = "id"                      #The name of the attribute, which is "id"
        type = "S"                       #The type of the attribute, which is a string (S)
    }
}
