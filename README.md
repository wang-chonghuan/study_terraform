# study_terraform
notes and code about terraform

https://www.educative.io/courses/terraform-beginner-master-aws

### Basic commands
- `terraform init`: Initializes the Terraform working directory and installs the necessary plug-ins.
- `terraform plan`: creates an execution plan showing the changes that will be performed.
- `terraform apply`: Applies changes to achieve the desired infrastructure state.
- `terraform destroy`: Destroys all resources managed by Terraform.

### Workspace management
- `terraform workspace list`: Lists all workspaces.
- `terraform workspace new [NAME]`: Creates a new workspace.
- `terraform workspace select [NAME]`: switches to the specified workspace.
- `terraform workspace show`: Displays the currently selected workspace.
- `terraform workspace delete [NAME]`: Deletes the specified workspace (cannot delete the current workspace).

### State management
- `terraform state list`: lists all resources tracked by Terraform in the current workspace.
- `terraform state show [ADDRESS]`: shows the state of a specific resource.
- `terraform state rm [ADDRESS]`: Removes a resource from the Terraform state.
- `terraform state mv [SOURCE] [DESTINATION]`: Moves a resource in the Terraform state.

### Advanced commands
- `terraform validate`: Validates a configuration file.
- `terraform fmt`: Automatically formats configuration files to conform to a standard format.
- `terraform import [ADDRESS] [ID]`: Import existing resources into Terraform management.
- `terraform refresh`: Updates the Terraform status file to match the actual resources.
- `terraform output`: displays the values of output variables.
- `terraform taint [ADDRESS]`: marks a resource as tainted so that it can be rebuilt in the next application.
- `terraform untaint [ADDRESS]`: removes the contaminated state of a resource.
- `terraform graph`: generate a visual resource dependency graph.
- `terraform version`: Displays the current version of Terraform.
- `terraform console`: opens a REPL (Read-Eval-Print-Loop) console that interacts with the Terraform state.

Additional commands
terraform providers: lists all providers and their versions used in the current configuration.
terraform providers lock: Write a dependency lock file to lock the provider dependencies for the current configuration.
terraform force-unlock [LOCK_ID]: manually unlocks the Terraform state. Used when the Terraform state is incorrectly locked.
terraform debug: Provides debugging and diagnostic functionality to help find the cause of a problem if it occurs.
