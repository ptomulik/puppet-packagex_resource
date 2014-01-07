# ptomulik-packagex\_resource

[![Build Status](https://travis-ci.org/ptomulik/puppet-packagex_resource.png?branch=master)](https://travis-ci.org/ptomulik/puppet-packagex_resource)

#### Table of Contents

0. [Caution](#caution)
1. [Overview](#overview)
2. [Module Description](#module-description)
3. [Setup](#setup)
    * [What packagex affects](#what-packagex-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with packagex](#beginning-with-packagex)
4. [Usage](#usage)
5. [Resolved issues](#resolved-issues)
6. [Known incompatibilities](#known-incompatibilities)
7. [Limitations](#limitations)
8. [Development](#development)

## Caution

This is an experimental module. It may be substantially changed, renamed or
removed at all without a notice. Do not use in production.

## Overview

This is an enhanced version of puppet *package* resource. Providers for this
resource type are developed as separate modules. Currently I've developed
[portsx](https://github.com/ptomulik/puppet-packagex_portsx) provider, which is
an enhanced and bug-fixed version of puppet's *ports* provider.

## Module Description

The module re-implements puppet package resource adding some crucial features
to it and its providers. Currently new features include:

  * *build_options* - a property (ensurable) that allows defining additional
    options for package.

The *build_options* are independent of the well known *install_options* and
*uninstall_options*. The definition of *build_options* is generally
provider-specific. Whereas *install_options* and *uninstall_options* are just
parameters (not ensurable), the *build_options* is a fully featured property,
that is the options may be ensured on a package. See
[portsx](https://github.com/ptomulik/puppet-packagex_portsx) provider for a
concrete example of build options implementation.

## Setup

### What packagex affects

* installs, upgrades, reinstalls and uninstalls packages.

### Setup Requirements

You may need to enable **pluginsync** in your `puppet.conf`.

### Beginning with packagex

Its usage is essentially same as for the original *package* resource. 

## Usage

Its usage is essentially same as for the original *package* resource. 

## Limitations

Currently nothing special.

## Development
The project is held at github:
* [https://github.com/ptomulik/puppet-packagex_resource](https://github.com/ptomulik/puppet-packagex_resource)
Issue reports, patches, pull requests are welcome!
