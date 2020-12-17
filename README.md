[![New Relic Experimental header](https://github.com/newrelic/opensource-website/raw/master/src/images/categories/Experimental.png)](https://opensource.newrelic.com/oss-category/#new-relic-experimental)

# Terraform Alerts Package for APM, Browser, and Infrastructure

This package contains Terraform resource declarations for a set of alert conditions, to be deployed in alert policies specified by you. You can also override any alert attributes, e.g. critical thresholds, warning thresholds, filters, etc.

Terraform will deploy and manage these alert policies and conditions so that any configuration drift, e.g. caused by someone modifying one of the alert conditions on the UI, can be remediated by Terraform.

## Installation

Terraform must first be installed on your machine.
(see
[Terraform Installation](https://learn.hashicorp.com/terraform/getting-started/install.html)).

## Configuration

The provided sample `sample_main.tf` should be placed at the same directory level as `sample_alerts`. In `sample_main.tf`, you will have to declare a `module` for each alert policy that you want Terraform to create (do NOT create the alert policies manually on the New Relic UI). In every module declaration, you will need to specify at minimum the alert policy name, at least one notification channel ID, an Admin API key, a region for the data center for which the New Relic account is configured, and the New Relic account ID where the alert policy should be created in. You will also need to specify `sample_alerts` as the source. While not strictly required, you should specify entity IDs (APM apps, APM key transactions, Browser apps) to target. If you do not specify any entity IDs, then only NRQL alerts conditions and Infrastructure alert conditions will be created. Terraform will create an alert policy for every module you declared in `sample_main.tf`. In addition, Terraform will also create a set of alert conditions in those alert policies. You do not have to declare any alert condition since they have already been declared in `sample_alerts`. However, you can override the attributes of those conditions if you so choose as illustrated in `sample_main.tf`. Note that all attributes in `vars.tf` in `sample_alerts` can be overridden in the same manner. If you modify `vars.tf` in `sample_alerts`, your changes will be applied to all modules that use `sample_alerts` as the source. If you want to add new alert conditions, you will have to modify `vars.tf`.

After configuring sample_main.tf, run the following command:
```bash
$ terraform init
```

## Execution

Preview the configuration changes that Terraform will perform.
```bash
$ terraform plan
```
Execute those configuration changes. Terraform will ask you to review and approve the changes before applying.
```bash
$ terraform apply
```
Destroy all configurations under Terraform management
```bash
$ terraform destroy
```

For more Terraform commands:
(see
[Terraform Commands](https://www.terraform.io/docs/commands/)).

## Known Issues
* Changesets produced by `terraform plan` or `terraform apply` sometimes contain re-ordering of elements in an entities list. Sorting the elements in ascending/descending order seems to address the issue.

## Support

New Relic has open-sourced this project. This project is provided AS-IS WITHOUT WARRANTY OR DEDICATED SUPPORT. Issues and contributions should be reported to the project here on GitHub. We encourage you to bring your experiences and questions to the [Explorers Hub](https://discuss.newrelic.com) where our community members collaborate on solutions and new ideas.

## Contributing
We encourage your contributions to improve terraform-alert-examples! Keep in mind when you submit your pull request, you'll need to sign the CLA via the click-through using CLA-Assistant. You only have to sign the CLA one time per project.
If you have any questions, or to execute our corporate CLA, required if your contribution is on behalf of a company,  please drop us an email at opensource@newrelic.com.

**A note about vulnerabilities**

As noted in our [security policy](../../security/policy), New Relic is committed to the privacy and security of our customers and their data. We believe that providing coordinated disclosure by security researchers and engaging with the security community are important means to achieve our security goals.

If you believe you have found a security vulnerability in this project or any of New Relic's products or websites, we welcome and greatly appreciate you reporting it to New Relic through [HackerOne](https://hackerone.com/newrelic).

## License
terraform-alert-examples is licensed under the [Apache 2.0](http://apache.org/licenses/LICENSE-2.0.txt) License.
