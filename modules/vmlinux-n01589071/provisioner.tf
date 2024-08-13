resource "null_resource" "linux_provisioner" {
  for_each   = var.linux_vm_names
  depends_on = [azurerm_linux_virtual_machine.virtual_machine]

  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = var.admin_username
      private_key = file(var.private_key_path)
      host        = azurerm_public_ip.public_ip[each.key].fqdn
    }

    inline = [
      "sleep 30",
      "echo 'The hostname of this VM is:' $(hostname)"
    ]
  }
}

resource "null_resource" "ansible_playbook" {
  depends_on = [null_resource.linux_provisioner]

  provisioner "local-exec" {
    command = "ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i ~/automation/ansible/hosts ~/automation/ansible/ansible_project/n01589071-playbook.yml -u ${var.admin_username} --private-key ${var.private_key_path}"
  }
}
