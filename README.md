Harvest Git-Bridge
==================

Gradle scripts for mirroring Harvest SCM code changes into a Git repository.

Goal
----

* Gradle has been chosen as scripting language as we can provide all dependencies out of the box (JARs, Gradle) and a JVM should already be installed on the Teamscale server to run the scripts. 
* For now the scripts are no "real" Gradle plugins, but regular Gradle files that can be applied from any Gradle project. The scripts might be converted into a Gradle plugin once a certain marturity level has been reached, for now ease of simple editing (also at customer site) is more important.

Usage
-----

* Open env.bat and adjust your JAVA_HOME
* Open build.gradle and add your harvest details as well as a data directory and git root directory.
* In case you want full commit details in git, create a file authors.properties in the data directory mapping from harvest user name to Git author string:
```user=Full Name <user@domain.tld>``` - Make sure the file includes mappings for all Harvest users. If the script encounters a user without a mapping entry, it will use ```{harvest-user} <nomail@nodomain.com>```
* call update-git.bat manually or from a scheduled script
* The first import will take a long time, because the whole project history will be queried from Harvest and recreated in Git.

Important Facts
---------------

* Git commit times are chosen from the "Modified" entry in Harvest, but truncated to full minutes in order to group Harvest changes to more granular commits.
* Deletions in Harvest are currently only considered for files that have the "obsolete" tag (D). Deletions caused by "delete newest version" are currently not mirrored to the Git repository.
