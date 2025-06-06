# Practice 5: Data Sources and Provisioners

## Objective

This practice explores how to fetch information from outside your Terraform configuration using data sources and how to execute scripts on local or remote resources after they are created using provisioners.

## Key Capabilities

*   Use `data` sources (e.g., AWS AMI).
*   Bootstrap servers via `local-exec` and `remote-exec` provisioners.

## Deliverables

*   `data.tf` file demonstrating the use of a data source.
*   `main.tf` with a resource using `local-exec` and `remote-exec` provisioners.
*   A simple bootstrap script (`bootstrap.sh`).

## Steps

1.  **Define a Data Source:** Create a `data.tf` file and define a data source to fetch information (e.g., `aws_ami` to find the latest AMI ID for a specific OS).
2.  **Use Data Source Output:** In your `main.tf`, reference the data source's output (e.g., the AMI ID) when defining a resource like an `aws_instance`.
3.  **Add `local-exec` Provisioner:** To the resource definition in `main.tf`, add a `local-exec` provisioner to run a script on the machine where `terraform apply` is executed (e.g., to display a message or save information locally).
4.  **Add `remote-exec` Provisioner:** Add a `remote-exec` provisioner to the resource definition to run a script on the created resource itself (e.g., to install software, configure the system). This requires network connectivity and credentials/SSH key setup.
5.  **Create Bootstrap Script:** Create the script file (e.g., `bootstrap.sh`) that the provisioners will execute.
6.  **Apply the Configuration:** Run `terraform init`, `terraform plan`, and `terraform apply`. Observe the output from the provisioners.
7.  **Clean Up:** Run `terraform destroy`.

## Example Code Structure

```
practice5_data_sources_and_provisioners/
├── main.tf          # Resource(s) with provisioners
├── data.tf          # Data source definitions
├── bootstrap.sh     # Script to be executed by provisioners
└── variables.tf     # Optional variables
└── outputs.tf       # Optional outputs
```

Include example `.tf` files and a sample `bootstrap.sh` script. 