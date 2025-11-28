variable "blueprint_id" {
  type        = string
  description = <<-EOF
    {
      "description": "Blueprint ID where the configlet will be applied",
      "display_name": "Blueprint ID",
      "validators": [
        {
          "args": {
            "pattern": "^[a-zA-Z0-9_-]+$"
          },
          "error": "The Blueprint ID must be a valid identifier",
          "type": "string_pattern"
        }
      ]
    }
  EOF
}

variable "name" {
  type        = string
  default     = "ECMP Hashing Fix"
  description = <<-EOF
    {
      "description": "Name of the Configlet when imported into the Blueprint",
      "display_name": "Configlet Name",
      "validators": [
        {
          "args": {
            "min_length": 1,
            "max_length": 255
          },
          "error": "The Configlet Name must be between 1 and 255 characters",
          "type": "string_length"
        }
      ]
    }
  EOF
}
 
