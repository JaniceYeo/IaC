variable instance_count {
   description = "Number of docker containers to be created"
   type = number
   default = 3
}

variable ssh_pub_key {
   description = "Name of the ssh key in Digital Ocean"
   type = string
   default = "Jan"
}

variable ssh_priv_key {
   description = "Path to private key"
   type = string
   sensitive = true
}

variable docker_host {
   description = "Name of the Docker Host of the Digital Ocean droplet"
   type = string
   default = "aipc"
}

variable do_image {
   description = "Image to use for creating the droplet"
   type = string
   default = "ubuntu-20-04-x64"
}

variable do_size {
   description = "Size of the Digital Ocean droplet to be created"
   type = string
   default = "s-1vcpu-1gb"
}

variable do_region {
   description = "Region to spin up the Digital Ocean droplet"
   type = string
   default = "sgp1"
}

variable do_token {
   description = "API token generated in Digital Ocean"
   type = string
   sensitive = true
}