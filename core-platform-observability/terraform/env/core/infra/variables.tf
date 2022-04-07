###########################
# Global
###########################

variable "platform_scope" {
  type        = string
  description = "The target platform for the resource."
}

variable "resource_scope" {
  type        = string
  description = "The resource scope."
}

variable "scope_name" {
  type        = string
  description = "The full resource scope name, this will change based on the resource_scope input"
}

variable "domain" {
  type        = string
  description = "The business domain the resource is associated with."
}

variable "service" {
  type        = string
  description = "The service name within the domain."
}

variable "region" {
  type        = string
  description = "The Azure region full name."
}

variable "resource_tags" {
  type        = map(string)
  description = "Tag map with default values."
}

###########################
# Function app
##########################
variable "app_insights_ikey" {
  type        = string
  description = "Application insights instrumentation key"
}


