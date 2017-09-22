Teamscale Gradle
================

Gradle scripts for mirroring Harvest SCM code changes into a Git repository.

Goal
----

* Gradle has been chosen as scripting language as we can provide all dependencies out of the box (JARs, Gradle) and a JVM should already be installed on the Teamscale server to run the scripts. 
* For now the scripts are no "real" Gradle plugins, but regular Gradle files that can be applied from any Gradle project.
  The scripts might be converted into a Gradle plugin once a certain marturity level has been reached, for now ease of simple editing (also at customer site) is more important.
