# Practice 3: Modularity and Dependency Management

## Objective

This practice focuses on making your Terraform configurations more organized, reusable, and maintainable by using modules and understanding how Terraform manages resource dependencies.

## Key Capabilities

*   Build and version modules; control resource creation order.

## Deliverables

*   Create reusable modules (e.g., `modules/network` for VPC, `modules/compute` for EC2).
*   Call modules from a root module configuration.
*   Demonstrate understanding of implicit and explicit dependencies using `depends_on`.

## Steps

1.  **Create Module Directories:** Inside `practice3_modularity_and_dependency_management/`, create a `modules/` directory. Inside `modules/`, create subdirectories for your modules (e.g., `network/` and `compute/`).
2.  **Define Module Configurations:** In each module directory (`modules/network/`, `modules/compute/`), create the necessary `.tf` files (`main.tf`, `variables.tf`, `outputs.tf`) to define the resources for that module (e.g., a VPC in `network/`, an EC2 instance in `compute/`). Use variables and outputs within the modules.
3.  **Create a Root Module:** In the `practice3_modularity_and_dependency_management/` directory, create a `main.tf` file. This will be your root module.
4.  **Call Modules from Root Module:** In the root `main.tf`, use `module` blocks to call the modules you created in step 2. Pass necessary input variables to the modules.
5.  **Manage Dependencies:** Observe how Terraform handles implicit dependencies between resources and modules. Explicitly define dependencies using the `depends_on` argument where necessary to ensure resources are created in the correct order.
6.  **Apply the Configuration:** Run `terraform init` (from the root module directory), `terraform plan`, and `terraform apply`. Terraform will process the root module and call the child modules.
7.  **Clean Up:** Destroy the created resources using `terraform destroy` from the root module directory.

## Example Code Structure

```
practice3_modularity_and_dependency_management/
├── main.tf
└── modules/
    ├── compute/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    └── network/
        ├── main.tf
        ├── variables.tf
        └── outputs.tf
```

Include example `.tf` files in the root and module directories to demonstrate calling modules and managing dependencies. 