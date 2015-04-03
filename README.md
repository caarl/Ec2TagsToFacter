# Ec2TagsToFacter

Script to make EC2 instance tags available as external Puppet facts

# Overview

Requires AWS SDK for .NET and the Windows Puppet Agent to be installed on the EC2 Windows instance.

# Getting Started

Take the Ec2TagsToFacter.ps1 script and place a copy into your facts directory (typically C:\ProgramData\PuppetLabs\facter\facts.d *note* this is a hidden directory by default)
See https://docs.puppetlabs.com/facter/2.4/custom_facts.html for further documentation on custom facter facts

Ensure your EC2 instance has a IAM role enabling access to describe EC2 instance tags.

# Usage

Once the script is in place and your instance has an appropriate IAM role instance tags will be available as Puppet facts prefixed with ec2tag_.

e.g. Tag name 'Role', tag value 'WebServer' will be show up as ec2tag_role => WebServer when running facter

