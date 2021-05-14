/*  
GCP example Terraform test.

*/


provider "google" {
  project = "My Project 38496"
  region  = "us-central1"
  zone    = "us-central1-c"
 // credentials = file("tfaccess.json")
  /* {
  "type": "service_account",
  "project_id": "totemic-cursor-313719",
  "private_key_id": "3ea5c3029adebd1d5e3b7278323df56b3424ac4d",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCrnp2vc6V4U4mt\neaWDvOcgDhNRfxMGuZmMgL3tKAJ6ULcdgO52HPp9lGu95AbOfXMNEwDEU4Io/Q+g\n/pKkRCOq0HO6QzH4Avi6+pZonuDhggV9Bz+z2JQa6iGWQucX9V/uBh2y2JmNMPxI\niYkpmjS818gj0dhjICENn/S5GgO+GKp2eOZgF03fLM7ceXNTtWwqV3gDu2qZK2KP\nQ59TtUgrW3JHCs38EaU8O1MiF9QsPTd9QIQqR+D++BfBXR7zrf45ymc4+SjOvso+\n8Xwmcf0CqnPhEe7kw62jp5rbyr0NyIOCKLMidCzk2xR9B+aLAA3D/4qw3nnFq7GL\nmmBfnv8NAgMBAAECggEAAT2Xirfli5HhBifBtkrUieMIKTfnsY4AaedZWCBIqk0w\nka5HqwNpHSTIRZpjITV/cin/wKuQ3o57wTBt63GRp2+z0nYfY5lT5ngew7lYS1EH\nDKETiQ+I/IvSO9WWeZIcxCn3p34Q2BgxTq3t16bleDMAH6Ap9gd6rbBJEth5C/P7\nIseA8KkI0CC+IVjST83TYGCbZgRZILsfcNnBIaS8VQVNF+wmIMST8hv1QC0YQnZK\nH3iea2fHVMwwzz3rgMzY/w5P3Nx2RmoFrlbEFpvNKuXhFRQ/Sv7ODcIhxM/1bBPV\nxMAPevTLxSeUct0sPVSOnm42CivtOguDsN9DpxuKmQKBgQDvgeY+jd4IGBE7FBjR\nCS8C6t0VHpOPo68UoEUEl2wGSG7/iNg03oYcBZW4JBQFUxw8QfVtUDdSCAI9Cn3B\nzZzBy5rdN1W09wor1/yuvgZpEWcqYlJ3lkJ9XBLxdsfTKE00QbeMNJW0AlM7vyb+\nAla942S74tzTyrmgpET6UxLXRQKBgQC3b/jNSctSY4O6pBBNp8yyW7imX9JDekfu\nTXQk/Xj1SR3UkGfMFxWeuiTNlFIyPtOpoUrgzUJHmD+xJHGJVw0ofSZC/UZvc5Oa\n1Gji0fynJyOvpb8hQcDKYsTgAIPM1P8bmbIBxQ6T7hg0XVthkyxhCnCs0yh5jNmf\nN5pIQ0pBKQKBgDwC21MPLvPuO9sGtRUjbPEZMh4JlEWoaMUNR13YJwwH+C/09N+C\nZi39RD9oYs/WvDto93rVX5chRJZQ26PExiNUxc/p/oKiZ50GuFx8ZpTK9IONMUaf\nkrdga6qu7XC+J2IRmVD7GAuLjZlp0vZQVbWslV/yfwxePla+8j2atRzVAoGBAKIv\n/WK9IWlKFZl7H/MZLvJwCHYJ+OWyg1De6JcgCceOCzL7LtsTegkqegnOX1KPnCO6\nOXND6JtWsNHV8BDHiBnJdX/7YkB+hv55WfdaRLIh9/qAaNplwajv5TRNIDuGA70K\nionoCnifJoV+GaLPNojiazdTR9EYyP1ucxn7bPbpAoGATy5B5Q2Nysqfdgdojlgx\n+iY20/JC80IRMWkz/sp0LHXMSz6FfR7DI+1nL3AwOdelCXPOOwXx6lczLcjiAen0\nIdeyOVooKh/QUb1j04GdT7zH0TgGQ0pYJSo0cBMU0u8OtAS/jF978ZV4PaYB8i91\ncYTKDzcnwLxa+8Kx1OUu8rs=\n-----END PRIVATE KEY-----\n",
  "client_email": "tfaccess@totemic-cursor-313719.iam.gserviceaccount.com",
  "client_id": "105585266446398700362",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/tfaccess%40totemic-cursor-313719.iam.gserviceaccount.com"
}
*/
    
}


//  Create a VPC network.
resource "google_compute_network" "vpc_network" {
  name                    = "terraform-network"
  auto_create_subnetworks = "true"
}
