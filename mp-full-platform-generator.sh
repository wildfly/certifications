#/bin/sh

set -euo pipefail

usage() {
  echo "USAGE: ./mp-full-platform-generator.sh MP_VERSION WFLY_VERSION TCK_RESULT_FILES..."
}

parseJDKVersions() {
  for file in "$@" 
  do
    echo -n "$(echo $file | sed "s/.*jdk-//" | sed "s/.adoc//") "
  done
}

parseFileName() {
  echo $1 | sed "s#.*/##"
}

parseJDKVersionSimple() {
  echo $1 | sed "s/.*jdk-//" | sed "s/.adoc//"
}

parseLinks() {
  local FILENAME=${1}
  shift 1

  for file in $@
  do
    tee -a "$FILENAME" <<EOF
- link:$(parseFileName $file)[Platform TCK Test Results JDK $(parseJDKVersionSimple $file)]
EOF
  done
}

if [ "$#" -lt 3 ]; then
  usage
  exit 1
fi

readonly MP_VERSION=${1}
readonly WFLY_VERSION=${2}
readonly FILE="$PWD/microprofile-${MP_VERSION}-full-certification.adoc"

shift 2

tee -a "${FILE}" <<EOF
= TCK Results
:ext-relative: {outfilesuffix}
:imagesdir: ../../images/

image:splash_wildflylogo_small.png[WildFly, align="center"]

[[introduction]]
== Introduction
As required by the https://www.eclipse.org/legal/tck.php[Eclipse Foundation Technology Compatibility Kit License], following is a summary of the TCK results for the release of https://github.com/eclipse/microprofile/releases/tag/${MP_VERSION}[MicroProfile ${MP_VERSION}].

=== WildFly Full Platform, Certification Summary
----
Date:  $(date)
Product Name:  WildFly
Product Version: WildFly ${WFLY_VERSION}
URL to product download page: https://wildfly.org/downloads

Product Description: An implementation of the Jakarta EE Full Platform, Web Profile, and MicroProfile Specifications
Java SE provider and Version tested with:  OpenJDK $(parseJDKVersions $@)
OS version: $(uname -sro)
----
Specification Name, Version and download URL:
https://download.eclipse.org/microprofile/microprofile-${MP_VERSION}/microprofile-spec-${MP_VERSION};.pdf[MicroProfile ${MP_VERSION}]

Public URL of TCK Results Summary:
https://github.com/wildfly/certifications/blob/MP$MP_VERSION/WildFly_$WFLY_VERSION/microprofile-$MP_VERSION/microprofile-full-platform.adoc[WildFly $WFLY_VERSION TCK results]

=== Platform TCK Test Results

EOF

parseLinks "$FILE" "$@"


