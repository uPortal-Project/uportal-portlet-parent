# uPortal Portlet Parent ![Maven Central](https://maven-badges.herokuapp.com/maven-central/org.apereo.uportal.parent/uportal-portlet-parent/badge.svg?style=flat)
uPortal-project parent Maven POM for portlet projects.

## Usage

Add the following into your target project's pom.xml:

```xml
<parent>
    <groupId>org.jasig.portlet</groupId>
    <artifactId>uportal-portlet-parent</artifactId>
    <version>[[pom parent version]]</version>
</parent>
```

For available releases, see: https://mvnrepository.com/artifact/org.jasig.portlet/uportal-portlet-parent

## Local Testing

This project follows the standard Maven install flow, which includes snapshot builds.
It is straight forward to test local changes to the parent pom by running:
```shell
~$ mvn clean install
```
and then in your target project, select the version to be the SNAPSHOT version of the
local build. The snapshot version number is logged near the end of the `install` command.

## Release

To release this parent pom into maven central, run:
```shell
~$ mvn clean release
```

## Defaults
- organization details
- Apache 2 license
- Source encoding
- Java version

## Dependencies (provided or in /shared/lib)
- tomcat-servlet-api
- tomcat-jsp-api
- tomcat-el-api
- tomcat-websocket-api
- tomcat-jaspic-api
- portlet-api
- pluto-taglib

## Plugins
- maven-compiler-plugin
- maven-jar-plugin
- maven-war-plugin
  - sometimes reconfigured for custom war names, overlays
- maven-ear-plugin (may not be needed)
- maven-release-plugin
- license-maven-plugin
  - sometimes reconfigured to avoid adding license headers to files
- maven-jasig-legal-plugin
- notice-maven-plugin

## Reporting Plugins
- maven-checkstyle-plugin
- maven-jxr-plugin
- maven-project-info-reports-plugin
- maven-surefire-report-plugin
- maven-pmd-plugin
- maven-changelog-plugin
- maven-javadoc-plugin
- cobertura-maven-plugin
- taglist-maven-plugin
- findbugs-maven-plugin
- jdepend-maven-plugin
- maven-enforcer-plugin


## Tips

### Display Goals

Use `mvn help:describe -Dplugin=[shortname|FQN]` to display goals with descriptions.
For example `mvn help:describe -Dplugin=jar`
or `mvn help:describe -Dplugin=org.apache.maven.plugins:maven-jar-plugin`.
To display goal parameters, add `-Ddetail` to the above commands.

### References

- [https://maven.apache.org/plugins/index.html]
- [https://www.mojohaus.org/plugins.html]
- [https://mycila.carbou.me/license-maven-plugin/]
- [https://github.com/Jasig/maven-jasig-legal-plugin]
- [https://github.com/Jasig/maven-notice-plugin]

## Revisions

### Version 42
Replaces Apereo Parent, which was at version 41 when this replacement went into effect.