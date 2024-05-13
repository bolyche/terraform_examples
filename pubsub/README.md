# Terraform Inputs / Outputs examples

This is example code to go along with the blogpost: https://bolyche.github.io/Terraform-modules/

The directory `basic_resources` has a file called `all.tf` which contains all resources used. The `modularised` directory has the relevant examples.

Please note that things like tfvars and variables aren't used throughout in order to shorten the example code. 

The main examples here are to show:
* Multiple topics being created in `ex_2_multiple_topics` and their outputs passed through to a second module (subscriptions)
* Multiple subscriptions being created on a topic using map variables
* Outputs being configurable for further downstream usage, combining both variables and module outputs