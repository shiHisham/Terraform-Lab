# Practice 2: Parametrization and Outputs

## Objective

In this practice, you will learn how to make your Terraform code reusable and dynamic using input variables, local values, and output values. This is crucial for creating flexible configurations that can be easily adapted to different environments or use cases.

## Key Capabilities

*   Design reusable code using `variable`, `locals`, and `output`.

## Deliverables

*   Define variables for parameters like region, environment, or resource tags.
*   Use `locals` for computed values based on variables or other data.
*   Define outputs to expose important resource attributes from your configuration.

## Steps

1.  **Define Input Variables:** Create a `variables.tf` file and define input variables for configuration parameters (e.g., `region`, `environment`, `instance_type`). Specify data types and optional default values.
2.  **Use Variables in Resources:** Update your resource configurations (e.g., in `main.tf`) to use the defined input variables.
3.  **Define Local Values:** Create a `locals.tf` file and define local values for computed data (e.g., a combined tag map, a generated name based on environment).
4.  **Use Local Values in Resources:** Use the defined local values in your resource configurations.
5.  **Define Output Values:** Create an `outputs.tf` file and define output values to expose important information about the created resources (e.g., public IP address, S3 bucket name, instance ID).
6.  **Apply the Configuration:** Run `terraform init`, `terraform plan`, and `terraform apply`. Provide values for the input variables.
7.  **Inspect Outputs:** After a successful `apply`, view the output values using `terraform output`.
8.  **Clean Up:** Destroy the created resources using `terraform destroy`, again providing necessary variable values.

## Example Code Structure

```
practice2_parametrization_and_outputs/
├── main.tf
├── variables.tf
├── locals.tf
└── outputs.tf
```

Include example `.tf` files in this directory demonstrating the use of variables, locals, and outputs. 