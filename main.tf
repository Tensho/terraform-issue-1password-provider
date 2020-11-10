terraform {
  required_version = "~> 0.13.5"

  required_providers {
    onepassword = {
      source  = "milosbackonja/1password"
      version = "~> 1.1.0"
    }
  }
}

provider onepassword {
  subdomain = "grammarly"
}

data onepassword_item_login abc {
  # ACTION: Uncomment explicit provider reference to eliminate the issue.
  # provider = onepassword

  vault = "Private"
  name  = "ABC"
}

output check {
  value = data.onepassword_item_login.abc.password
}
