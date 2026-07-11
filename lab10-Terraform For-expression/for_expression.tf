locals {
  servers = [
    "web",
    "app",
    "db"
  ]
  SERVER = [
    for n in local.servers :
    "${upper(n)}-SERVER"
  ]
}


locals {
  number = [
   1,
   2,
   3,
   4,
   5
  ]
  numbers = [
    for n in local.number :
    "${10*(n)}"
  ]
}

locals {
  filter = [
   10,
   20,
   30,
   40,
   50
  ]
  SERVER_filter = [
    for n in local.filter :
    n
    if n>20
  ]
}