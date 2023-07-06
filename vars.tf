variable "name" {
  description = "the role name"
  type        = string
}

variable "description" {
  description = "the role description"
  type        = string
}

variable "assume_policy" {
  description = "value of the assume policy"
  type        = string
}

variable "policy" {
  description = "value of the policy"
  type        = string
}

variable "policy_name" {
  description = "value of the policy name"
  type        = string
}