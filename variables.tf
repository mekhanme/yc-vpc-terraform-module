variable "token" {
  type   = string
}

variable "cloud_id" {
  type   = string
}

variable "folder_id" {
  type   = string
}

variable "subnets" {
  type   = object({
    a   = object({
      name    = string
      zone    = string
      block   = string
    })
    b   = object({
      name    = string
      zone    = string
      block   = string
    })
    c   = object({
      name    = string
      zone    = string
      block   = string
    })
  })
}

variable "network" {
  type   = object({
    name   = string
  })
}
