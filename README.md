###

Provision ElasticBeanstalk, CodeBuild, CodePipeline using Terraform.

---

### Pre-requisite

- Terraform v0.12.4

- AWS Account

- AWS CLI

### How To Test This

- Clone this repository.

- In the project's root folder, create a file called `terraform.tfvars`. Populate the file with the contents of `terraform.tfvars.example`. Provide the correct values.

- Configure AWS credentials on your terminal using AWS CLI.

- Run `terraform apply` to create infra and to deploy the application.

- A url to access the application will be printed on the terminal. Copy and paste it on your browser.

- To destroy the entire infra, run `terraform destroy`.

---

<img width="1467" alt="Screen Shot 2019-07-12 at 20 42 03" src="https://user-images.githubusercontent.com/24464034/61147851-1ef02a00-a4e6-11e9-9ae4-acd1ea67d7be.png">

---

<img width="1543" alt="Screen Shot 2019-07-12 at 20 42 26" src="https://user-images.githubusercontent.com/24464034/61147878-2fa0a000-a4e6-11e9-8d4f-3d13216e4a62.png">

---

<img width="1475" alt="Screen Shot 2019-07-12 at 20 42 55" src="https://user-images.githubusercontent.com/24464034/61147954-5c54b780-a4e6-11e9-9b8b-429c3b1cc0bf.png">

