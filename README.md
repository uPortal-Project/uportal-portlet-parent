# uPortal Portlet Parent ![Maven Central](https://maven-badges.herokuapp.com/maven-central/org.apereo.uportal.parent/uportal-portlet-parent/badge.svg?style=flat)
uPortal-project parent Maven POM for portlet projects.

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
- cobertura-maven-plugin
- maven-pmd-plugin
- maven-changelog-plugin
- taglist-maven-plugin
- findbugs-maven-plugin
- maven-javadoc-plugin
- jdepend-maven-plugin

## Revisions

### Version 42
Replaces Apereo Parent, which was at version 41 when this replacement went into effect.