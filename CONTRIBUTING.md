# Contributing to WildFly Certifications

Welcome to the WildFly Certifications project! 

Contributions to this repository almost entirely come from WildFly maintainers who are part of the team doing tasks during a WildFly release. 
They perform the task of adding content to this repository showing compatibility evidence (i.e. TCK results) for the specifications that the WildFly release implements.

We do, however, welcome contributions from the community, if you find any problems with the content published here. This guide will walk you through the steps for working with project.

- [Legal](#legal)
- [Forking the Project](#forking-the-project)
- [Issues](#issues)
- [Setting up your Developer Environment](#setting-up-your-developer-environment)
- [Contributing Guidelines](#contributing-guidelines)
- [Community](#community)

## Legal

All contributions to this repository are licensed under the [Apache License](https://www.apache.org/licenses/LICENSE-2.0), version 2.0 or later, or, if another license is specified as governing the file or directory being modified, such other license.

All contributions are subject to the [Developer Certificate of Origin (DCO)](https://developercertificate.org/).
The DCO text is also included verbatim in the [dco.txt](dco.txt) file in the root directory of the repository.

### Compliance with Laws and Regulations

All contributions must comply with applicable laws and regulations, including U.S. export control and sanctions restrictions.
For background, see the Linux Foundation’s guidance:
[Navigating Global Regulations and Open Source: US OFAC Sanctions](https://www.linuxfoundation.org/blog/navigating-global-regulations-and-open-source-us-ofac-sanctions).


## Forking the Project
To contribute, you will first need to fork the [certifications](https://github.com/wildfly/certifications) repository.

This can be done by looking in the top-right corner of the repository page and clicking "Fork".

The next step is to clone your newly forked repository onto your local workspace. This can be done by going to your newly forked repository, which should be at `https://github.com/USERNAME/certifications`.

Then, there will be a green button that says "Code". Click on that and copy the URL.

Then, in your terminal, paste the following command:
```bash
git clone [URL]
```
Be sure to replace [URL] with the URL that you copied.

Now you have the repository on your computer!

## Issues

The WildFly Certifications project uses GitHub Issues to manage issues. All issues can be found [here](https://github.com/wildfly/certifications/issues).

Note, however, that no issues are filed for the primary work in this repository of adding compatibility evidence for a new WildFly release.

To create a new issue, comment on an existing issue, or assign an issue to yourself, you'll need to first [create a GitHub account](https://github.com/signup).

Once you have selected an issue you'd like to work on, make sure it's not already assigned to someone else.

Before beginning work on an issue, it's good to start a thread in the [wildfly-developers channel in Zulip](https://wildfly.zulipchat.com/#narrow/channel/174184-wildfly-developers) to let others know what you'll be doing.


## Setting up your Developer Environment
You will need:

* JDK
* Git
* A text editor

First `cd` to the directory where you cloned the project (eg: `cd certifications`)

Add a remote ref to upstream, for pulling future updates.
For example:

```
git remote add upstream https://github.com/wildfly/certifications
```

Checkout the branch that contains the compatibility information for the relevant specification set. For example, for MicroProfile 7.1 compatibily information:
```bash
git checkout MP7.1
```

It is recommended that you use a separate branch for every issue you work on. To keep things straightforward and memorable, you can name each branch using the GitHub issue number. This way, you can have multiple PRs open for different issues.
```bash
git checkout -b Issue_9999
```

This repository has no build; it is simply a content repository.

## Contributing Guidelines

When submitting a PR, please keep the following guidelines in mind:

1. In general, it's good practice to squash all of your commits into a single commit. For larger changes, it's ok to have multiple meaningful commits. If you need help with squashing your commits, feel free to ask us how to do this on your pull request. We're more than happy to help!

  1. Please include the GitHub issue you worked on in the title of your pull request and in your commit message. For example, for issue [999](https://github.com/wildfly/certifications/issues/999), the PR title and commit message should be `[Issue_999] Create a testcase which verifies behaviour of the foo`.

2. Please include the link to the JIRA issue you worked on in the description of the pull request. For example, if your PR adds a fix for [999](https://github.com/wildfly/certifications/issues/999), the PR description should contain a link to https://github.com/wildfly/certifications/issues/999.
