variable "subscription_id" {
  default = "abc"
}


variable "location" {
  type        = string
  description = "The AZ region (e.g. uksouth)."
  default     = "uksouth"
}
variable "management_group_id" {
  type        = string
  description = "id of management group where policy is created and assigned"
}
