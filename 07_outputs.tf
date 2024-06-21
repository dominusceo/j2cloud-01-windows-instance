
##############################
## Create VM Image - Output ##
##############################

output "win_admin_user" {
  value = data.oci_core_instance_credentials.credential.username
}

output "win_admin_password" {
  sensitive = false
  value     = data.oci_core_instance_credentials.credential.password
}

output "win_public_ip" {
  value = oci_core_instance.windows.public_ip
}

################
# Image output #
################
output "windows-2019-latest-image-name" {
  value = data.oci_core_images.windows-2019.images.0.display_name
}

output "windows-2019-latest-image-id" {
  value = data.oci_core_images.windows-2019.images.0.id
}