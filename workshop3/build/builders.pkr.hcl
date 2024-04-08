source digitalocean nginx_snapshot {
  api_token = var.do_token
  image = var.do_image
  size = var.do_size
  region = var.do_region
  snapshot_name = var.snapshot_name
  ssh_username = "root"
}

build {
  sources = [ "source.digitalocean.nginx_snapshot" ]

  provisioner ansible {
    playbook_file = "playbook.yaml"
    extra_arguments = [
      "--extra-vars",
      "code_server_archive=${var.code_server_archive} unpacked_directory=${var.unpacked_directory}"
    ]
    /*
    ansible_ssh_extra_args = [
      "-oHostKeyAlgorithms=+ssh-rsa -oPubkeyAcceptedKeyTypes=+ssh-rsa"
    ]
    */
  }
}