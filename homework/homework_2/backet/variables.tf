#=========== main ==============
variable "cloud_id" {
  description = "The cloud ID"
  type        = string
}
variable "folder_id" {
  description = "The folder ID"
  type        = string
}
variable "default_zone" {
	description = "The default zone"
  type        = string
  default     = "ru-central1-b"
}
variable "zone" {
	description = "The default zone"
  type        = string
  default     = "ru-central1-b"
}
  