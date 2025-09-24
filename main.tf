resource "random_pet" "my_pet" {
  prefix    = "Miss"
  separator = "."
  length    = "1"
}
resource "local_file" "my_pet" {
  filename = "${path.module}/pets.txt"
  content  = "I Love Pets - ${random_pet.my_pet.id}"
}
