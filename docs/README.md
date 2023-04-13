<p align="center">
  <img width="500" src="images/gaia_logo_with_title.png">
</p>

Gaia is a Terraform UI for your Terraform modules, and self-service infrastructure.

## What is it?

Gaia is a web application to import and run your Terraform modules.
It features :
* importing modules from source code (Github/Gitlab)
* validation of Terraform variables values (mandatory variables, regex-based validation)
* setting up default values or masking variables for your users
* running modules (plan/apply/destroy) in one click and managing Terraform state
* team management

## Documentation

Go to [docs.gaia-app.io](https://docs.gaia-app.io) for the full documentation.

## Screenshots

The module edition view allows you to edit module details, such as variables and their validation.

![module edition view](https://github.com/gaia-app/gaia/raw/main/assets/screenshot-gaia-module.png)

The stack view helps you to input your variable values, and shows job results and latest output values.

![stack edition view](https://github.com/gaia-app/gaia/raw/main/assets/screenshot-gaia-stack.png)

The job view shows you the Terraform workflow, and the logs of the `plan` and `apply` logs

![job view](https://github.com/gaia-app/gaia/raw/main/assets/screenshot-gaia-job.png)

## Requirements

Gaia needs :
* a docker daemon (used to run Terraform itself)
* and a MongoDb database (to store its data)
    * we currently support MongoDb 4.0 only

## Quick start

See the documentation at [https://docs.gaia-app.io/](https://docs.gaia-app.io/getting-started/quick-start/) for quick-start instructions.

## Script for creating and cleanup a gaia-app local environment

* To create a local gaia local example, first be into in scripts dir
* Now, execute '$bash build.sh'
* To clean your environment, do '$bash cleanup.sh'

## Examples

*  git clone git@github.com:roger-amorim-dv/gaia-example.git
*  cd scripts
*  $bash build.sh -> for creating a local environment
*  $bash cleanup.sh -> for creating a local environment
