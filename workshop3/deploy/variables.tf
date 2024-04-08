variable ssh_pub_key {
   description = "Name of ssh key in Digital Ocean"
   type = string
   default = "Jan"
}
variable ssh_priv_key {
   description = "Path to private key"
   type = string
   sensitive = true
}

variable do_size {
   description = "Size of the Digital Ocean drop let to be created"
   type = string
   default = "s-1vcpu-2gb"
}

variable do_region {
   description = "Region to spin up the Digital Ocean droplet"
   type = string
   default = "sgp1"
}

variable do_token {
   description = "The API token generated in Digital Ocean"
   type = string
   sensitive = true
}

variable code_server_password {
   description = "Password of the code server to log in"
   type = string
   sensitive = true
}