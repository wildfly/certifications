# WildFly Certifications

Evidence of compatibility with open standards by WildFly projects, particularly the WildFly Application Server.

## Repository Structure

This repository maintains a branch for each relevant set of standards, with a distinct branch for each major or minor version of those standards.
So, you'll see branches like these:

* EE11 -- for Jakarta EE 11 compatibility evidence
* EE10 -- for Jakarta EE 10 compatibility evidence
* MP7.1 -- for MicroProfile 7.1 platform compatibility evidence
* MP7.0 -- for MicroProfile 7.1 platform compatibility evidence

Within each branch there will be a directory for each release that the WildFly project certifies as compatible with the relevant standards.

## Notes

### MicroProfile 6.0 and 6.1

WildFly did not produce compatible implementations of the complete MicroProfile 6.0 platform or the MicroProfile 6.1 platform, as we did not provide an implementation of MicroProfile Metrics.
However in our MP6.0 and MP6.1 branches we do publish compatibility evidence for the other MicroProfile platform specifications that we did implement. 
The name of those branches should not be taken as implying full MicroProfile Platform compatibility; it is simply a shorthand used to describe the version of the collection of specifications we implemented.

### WildFly Preview

In most cases this repository will not include compatibility evidence for WildFly Preview, since strict standards compliance is not a core goal of WildFly Preview.

We may at times publish compatibility evidence for WildFly Preview, particularly for cases where a particular release was the first WildFly Preview release to meet all of the compatibility requirements for a set of standards.

### Default branch

The default branch in this repository will change over time as the particular set of standards WildFly wishes to highlight changes. 
Typically the default branch will be the one for the latest set of Jakarta EE standards implemented by standard WildFly.