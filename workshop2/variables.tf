variable ssh_pub_key {
   description = "Name of ssh key in Digital Ocean"
   type = string
   default = "Jan"
}

variable ssh_priv_key {
   description = "Path to private key"
   type = string
}

variable do_image {
   description = "Image for the Digital Ocean droplet"
   type = string
   default = "ubuntu-20-04-x64"
}

variable do_size {
   description = "Size of the Digital Ocean droplet to be created"
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

variable code_server_archive {
   description = "Location to download code-server"
   type = string
   default = "https://github.com/coder/code-server/releases/download/v4.22.1/code-server-4.22.1-linux-amd64.tar.gz"
}
variable unpacked_directory {
   description = "Directory to unpack code-server zip file"
   type = string
   default = "code-server-4.22.1-linux-amd64"
}

variable code_server_password {
   description = "Password to the code server"
   type = string
   sensitive =  true
}