Teamscale Gradle
================

Gradle scripts for uploading files to Teamscale via the Web API.
The main aim of this package is (at the moment) to support Test Gap Analysis.
It may/will be extended in the future to upload other reports as well

Goal
----

* Gradle has been chosen as scripting language as we can provide all dependencies out of the box (JARs, Gradle) and a JVM should already be installed on the Teamscale server to run the scripts. 
* For now the scripts are no "real" Gradle plugins, but regular Gradle files that can be applied from any Gradle project.
  The scripts might be converted into a Gradle plugin once a certain marturity level has been reached, for now ease of simple editing (also at customer site) is more important.
* Clear separation between standard logic (upload, inbox/archive mechanisms) and customer logic is already in place and should be adhered to.
  It is, however, a good idea to extract reusable (anonymized) snippets in the documentation that solve specific problems (e.g. extracting information from build logs, etc)

