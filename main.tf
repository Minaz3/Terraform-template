resource "local_file" "my_pet" {
  filename = "${path.module}/pets.txt"
  content  = "I Love Pets"
}

resource "random_pet" "my_pet" {
  prefix    = "Miss"
  separator = "."
  length    = "1"
}
