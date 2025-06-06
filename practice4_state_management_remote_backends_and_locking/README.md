# Practice 4: State Management, Remote Backends, and Locking

## Objective

This practice focuses on managing Terraform state effectively, especially in collaborative environments. You will learn how to configure remote backends to store state securely and centrally, and understand the importance of state locking to prevent concurrent modifications.

## Key Capabilities

*   Configure remote backends (S3/DynamoDB or Terraform Cloud).
*   Migrate local state to remote.
*   Prevent race conditions using state locking.

## Deliverables

*   `backend.tf` file configured for a remote backend.
*   Documentation of the state migration process.
*   Demonstration of state locking.

## Steps

1.  **Choose a Remote Backend:** Select a remote backend supported by Terraform (e.g., AWS S3 with DynamoDB for locking, Azure Storage Container, Terraform Cloud). This README will use AWS S3/DynamoDB as an example.
2.  **Configure `backend.tf`:** Create a `backend.tf` file in the root of the practice directory. Configure the chosen backend, specifying the bucket name, key path, region, and DynamoDB table for locking.
3.  **Initialize Backend:** Run `terraform init`. If you have existing local state, Terraform will prompt you to migrate it to the new remote backend. Confirm the migration.
4.  **Verify State Location:** After `init`, verify that your `terraform.tfstate` file is no longer local (or is very small) and that the state is stored in the remote backend.
5.  **Demonstrate State Locking:** Attempt to run `terraform apply` from two separate terminal sessions simultaneously (or use a tool that simulates concurrent runs). Observe how state locking prevents one of the operations from proceeding until the other is complete.
6.  **Apply and Destroy:** Run `terraform plan` and `terraform apply` to create resources using the remote state. Finally, run `terraform destroy` to clean up, confirming that the state in the remote backend is updated.

## Example Code Structure

```
practice4_state_management_remote_backends_and_locking/
├── main.tf          # Example resource(s) to manage
├── variables.tf     # Optional variables
├── outputs.tf       # Optional outputs
└── backend.tf       # Backend configuration
```

Include example `.tf` files demonstrating a simple resource managed with the remote backend. 