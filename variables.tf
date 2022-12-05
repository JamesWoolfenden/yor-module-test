variable "project_id" {
  type = string
}

variable "id" {
  type = string
}

variable "secret" {
  type = string
}

variable "labels" {
  type    = map(string)
  default = {}
}

