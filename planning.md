# Terraform Capability-Driven Learning Reference

This reference file serves as your single source of truth for the entire 6-day, 9-practice Terraform learning path. Whenever you feel lost or want to confirm what comes next, consult this document. It summarizes the folder structure, daily objectives, and key capabilities you’ll demonstrate.

---

## 📁 Folder Structure Overview

```
terraform-portfolio/
│
├── README.md              ← Root overview (high-level intro, how to navigate, clone instructions)
├── planning.md            ← High-level roadmap (9 practices, estimated hours, day-by-day schedule)
│
├── practice1_basics_and_core_workflow/
│   └── README.md          ← Fundamentals & Core Provisioning
│
├── practice2_parametrization_and_outputs/
│   └── README.md          ← Variables, Locals & Outputs
│
├── practice3_modularity_and_dependency_management/
│   └── README.md          ← Reusable Modules & Dependency Graphs
│
├── practice4_state_management_remote_backends_and_locking/
│   └── README.md          ← Environment & State Governance
│
├── practice5_data_sources_and_provisioners/
│   └── README.md          ← Data Integration & Bootstrap Provisioning
│
├── practice6_secrets_management_and_sensitive_data/
│   └── README.md          ← Secrets as First-Class Citizens
│
├── practice7_multi_environment_workspaces_and_workflow/
│   └── README.md          ← Workspaces, Environments & Remote Runs
│
├── practice8_collaboration_and_automation_ci_cd/
│   └── README.md          ← CI/CD Playbook & Pull-Request Workflows
│
├── practice9_policy_as_code_and_security_scan/
│   └── README.md          ← Policy, Compliance & Cost-Awareness
│
├── practice10_advanced_topics_terraform_cloud_and_testing/
│   └── README.md          ← Terraform Cloud + Automated Testing
│
└── practice11_real_world_multi_environment_project/
    └── README.md          ← End-to-End Project: Dev → Staging → Prod
```

> Note: All folders from `practice1_...` through `practice11_...` must exist. The numbering is sequential, but you’ll complete nine practices over six days; practice10 and practice11 both fall on Day 6.

---

## 🎯 Key Capabilities by Practice

Below is a summary of the main skills and outcomes each practice proves. Use this section to quickly recall why each practice exists.

1. **practice1\_basics\_and\_core\_workflow/**

   * **Capability**: Write your first Terraform configuration, run `init`, `plan`, `apply`, and `destroy`.
   * **Deliverable**: Simple resource (e.g., S3 or null\_resource) with full CLI workflow documented.

2. **practice2\_parametrization\_and\_outputs/**

   * **Capability**: Design reusable code using `variable`, `locals`, and `output`.
   * **Deliverable**: Variables for region/tags, `locals` for computed values, outputs for resource attributes.

3. **practice3\_modularity\_and\_dependency\_management/**

   * **Capability**: Build and version modules; control resource creation order.
   * **Deliverable**: `modules/network` (VPC), `modules/compute` (EC2), root module demonstrating implicit vs. explicit `depends_on`.

4. **practice4\_state\_management\_remote\_backends\_and\_locking/**

   * **Capability**: Configure remote backends (S3/DynamoDB or Terraform Cloud), migrate local state, prevent race conditions.
   * **Deliverable**: `backend_s3.tf`, initialization script, documentation of state governance.

5. **practice5\_data\_sources\_and\_provisioners/**

   * **Capability**: Use `data` sources (e.g., AWS AMI), bootstrap servers via `local-exec` and `remote-exec` provisioners.
   * **Deliverable**: `data_aws_ami.tf`, `provision_local_exec.tf`, `bootstrap.sh` script for server configuration.

6. **practice6\_secrets\_management\_and\_sensitive\_data/**

   * **Capability**: Integrate Vault and AWS SSM to store and consume secrets securely; mark sensitive outputs.
   * **Deliverable**: Vault policy, `vault_provider.tf`, `aws_ssm_parameter.tf`, documentation of secure handling.

7. **practice7\_multi\_environment\_workspaces\_and\_workflow/**

   * **Capability**: Manage multiple environments (dev, staging, prod) via workspaces or folder-based backends; delegate remote runs.
   * **Deliverable**: Separate `backend.tf` files per environment, `README.md` describing workspace flow, sample resources for environment promotion.

8. **practice8\_collaboration\_and\_automation\_ci\_cd/**

   * **Capability**: Set up a true pull-request workflow with GitHub Actions: `terraform fmt`, `validate`, plan artifact, gated apply.
   * **Deliverable**: `.github/workflows/terraform-ci.yml`, documentation of PR checks and plan uploads.

9. **practice9\_policy\_as\_code\_and\_security\_scan/**

   * **Capability**: Enforce policy as code (Sentinel or OPA), run security scanners (`tfsec`, Checkov), generate cost estimates (Infracost).
   * **Deliverable**: `tfsec_config.hcl`, sentinel/OPA policies, Infracost config, `run_security_checks.sh` script.

10. **practice10\_advanced\_topics\_terraform\_cloud\_and\_testing/**

    * **Capability**: Use Terraform Cloud for remote state, remote runs, policy enforcement, and private module registry; write automated tests (Terratest).
    * **Deliverable**: `terraform_cloud_backend.tf`, Sentinel (or OPA) policies, Terratest suite demonstrating resource validation.

11. **practice11\_real\_world\_multi\_environment\_project/**

    * **Capability**: Orchestrate a production-grade, multi-environment (dev→staging→prod) project end-to-end, using all previous capabilities.
    * **Deliverable**: Complete folder structure (`modules/`, `dev/`, `staging/`, `prod/`), scripts for setup/promotion/teardown, final documented project.

---

## 📅 Day-by-Day Schedule & Focus Areas

Each day, you’ll complete one or two practices. The focus is on **demonstrating real-world capabilities**—not just ticking off exercises. Use the “Key Capabilities” section above to see why each practice matters.

| Day   | Date         | Practice Folder(s)                                                                                                            | Focus & Deliverables                                                                                                                                                                                                                                                                                    | Estimated Hours       |
| ----- | ------------ | ----------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------- |
| **1** | June 3, 2025 | • practice1\_basics\_and\_core\_workflow/  <br> • practice2\_parametrization\_and\_outputs/                                   | - Prove you can write a simple Terraform config, run the full CLI workflow, and safely destroy resources.  <br> - Show you can parameterize code via `variable`, `locals`, and `output`.                                                                                                                | 3 hrs + 2 hrs = 5 hrs |
| **2** | June 4, 2025 | • practice3\_modularity\_and\_dependency\_management/                                                                         | - Build two modules (`network` and `compute`), wire them together, and demonstrate resource dependency control.                                                                                                                                                                                         | 4 hrs                 |
| **3** | June 5, 2025 | • practice4\_state\_management\_remote\_backends\_and\_locking/  <br> • practice5\_data\_sources\_and\_provisioners/          | - Configure and migrate state to a remote backend (S3/DynamoDB or Terraform Cloud).  <br> - Use data sources (e.g., latest AMI lookup) and provisioners (bootstrap servers).                                                                                                                            | 3 hrs + 3 hrs = 6 hrs |
| **4** | June 6, 2025 | • practice6\_secrets\_management\_and\_sensitive\_data/  <br> • practice7\_multi\_environment\_workspaces\_and\_workflow/     | - Integrate Vault & AWS SSM for secrets, ensure no sensitive data is exposed.  <br> - Establish dev/staging/prod separation via workspaces or folder-based backends; document remote run delegation.                                                                                                    | 4 hrs                 |
| **5** | June 7, 2025 | • practice8\_collaboration\_and\_automation\_ci\_cd/  <br> • practice9\_policy\_as\_code\_and\_security\_scan/                | - Implement a robust CI/CD pull-request workflow: formatting, validation, plan artifact, gated merge to apply.  <br> - Enforce policy-as-code (Sentinel/OPA), run tfsec/Checkov, and generate Infracost previews.                                                                                       | 3 hrs + 3 hrs = 6 hrs |
| **6** | June 8, 2025 | • practice10\_advanced\_topics\_terraform\_cloud\_and\_testing/  <br> • practice11\_real\_world\_multi\_environment\_project/ | - Leverage Terraform Cloud features: remote runs, workspaces, policy enforcement, private module registry.  <br> - Write automated tests (Terratest) to validate your modules.  <br> - Build an end-to-end, multi-environment project (dev→staging→prod), and provide scripts to promote and tear down. | 4 hrs + 5 hrs = 9 hrs |

> **Total Estimated Time:** 35 hours
> **Note:** Practice9 and Practice10 each introduce additional complexity. Day 6 is heavier because you’re combining advanced Terraform Cloud features, automated testing, and a full capstone project.

---

## ✅ How to Use This Reference

1. **Before You Begin a Practice Folder**

   * Re-read the “Key Capabilities” for that folder. Know what you’re demonstrating.
   * Open the folder’s `README.md` and ensure prerequisites are met (e.g., AWS credentials configured, Vault running, Terraform Cloud login).

2. **After Completing a Practice Folder**

   * Check off the folder name in your local checklist (e.g., place a ✔️ next to it).
   * Confirm you’ve met every bullet in the “Key Capabilities” section—only then move to the next practice.

3. **If You Ever Feel Lost or Off-Track**

   * Return to this reference immediately.
   * Revisit the “Folder Structure Overview” to ensure you’re in the right practice folder.
   * Re-examine the “Key Capabilities” for that folder to remember the end goal.
   * Re-check the Day-by-Day schedule to see which practice(s) you should be working on today.

4. **When Recruiting or Interviewing**

   * Point recruiters to this document to show the full scope: “Here is my roadmap—six days, nine practices, covering every major Terraform dimension.”
   * Emphasize the “Key Capabilities” section so they immediately see your skill set.

---

## 🔑 Final “Skills & Capabilities” Cheat Sheet

Below is a condensed view of every skill you will prove by completing all nine practice folders. Use this to quickly recall any concept or to reference in a resume/interview.

* **Terraform CLI & Core Concepts**

  * Install & configure Terraform (v1.4+).
  * `terraform init`, `plan`, `apply`, `destroy`.
  * Understand state files and how Terraform manages the dependency graph.

* **Parameterization & Abstraction**

  * Define `variable`, `locals`, and `output`.
  * Pass variables via CLI flags, `*.tfvars` files, or environment variables.
  * Enforce types and validation rules for inputs.

* **Modularity & Reusability**

  * Create local modules (`network`, `compute`, `database`, `application`).
  * Version modules (pin to a Git tag or registry version).
  * Use implicit vs. explicit dependencies (`depends_on`).

* **State Management & Collaboration**

  * Configure remote backends (AWS S3 + DynamoDB, Azure Storage, or Terraform Cloud).
  * Migrate local state to remote.
  * Manage multiple environments (dev/staging/prod) via separate workspaces or backend keys.
  * Delegate runs to Terraform Cloud (remote plan/apply).

* **Data Integration & Provisioners**

  * Fetch dynamic values with `data` blocks (AMIs, existing resources).
  * Bootstrap servers with `local-exec` and `remote-exec` provisioners (e.g., install Nginx).
  * Control resource lifecycle with meta-arguments (`create_before_destroy`, `ignore_changes`).

* **Secrets Management & Sensitive Data**

  * Integrate Vault provider: authenticate, read secrets.
  * Use AWS SSM Parameter Store (`SecureString`) for secrets.
  * Mark outputs and variables as `sensitive = true`.
  * Follow best practices: don’t store credentials in Git—use environment variables or Vault.

* **CI/CD & Pull-Request Workflows**

  * Configure GitHub Actions (or GitLab CI) to run `terraform fmt`, `validate`, `plan` on PRs.
  * Upload plan artifacts for review.
  * Gate merges until plan is approved.
  * Automate `terraform apply` on push to a protected branch (e.g., `main` or tagged release).

* **Policy as Code & Security Scanning**

  * Write Sentinel (Terraform Cloud) or OPA policies to enforce rules (e.g., tags, no public SGs).
  * Run `tfsec`, `Checkov`, or `terrascan` locally and in CI.
  * Generate cost estimates with Infracost and include them in PR comments.

* **Terraform Cloud Advanced Features & Automated Testing**

  * Authenticate and run remote Terraform Cloud workspaces via CLI.
  * Use private module registry to share modules across repos.
  * Create automated tests (Terratest or Kitchen-Terraform) that spin up real resources, validate properties, and tear down.

* **End-to-End Multi-Environment Project**

  * Production-ready modules for VPC, subnets, IGW, NAT Gateway, EC2/ASG or EKS, RDS (Multi-AZ), and application deployment (Docker, ALB).
  * Separate `dev`, `staging`, and `prod` configurations, each with its own `backend.tf`.
  * Scripts to automate workspace creation (`setup_workspaces.sh`), promotion (`promote_to_staging.sh`), and cleanup (`teardown_all.sh`).

---

Keep this file open in your editor or print it out. Whenever you complete a folder or feel uncertain, return here first to confirm:

* **Which folder am I in?**
* **What capability should I demonstrate?**
* **What is the exact deliverable?**

Use this as your ground truth, so you never diverge from the plan again.
