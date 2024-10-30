variable "tf_state_bucket" {
    description = "Name of S3 bucket in AWS for storing TF state"
    default = "devops-recipe-app-tf-state-2"
}

variable "tf_state_lock_table" {
    description = "Name of the DynamoDB in AWS for storing TF state"
    default = "devops-recipe-app-api-tf-lock"
}

variable "project" {
    description = "Project name for tagging resourecs"
    default = "recipe-app-api"
}

variable "contact" {
    description = "Contact name for tagging resources"
    default = "seunghee.dev@gmail.com"
}