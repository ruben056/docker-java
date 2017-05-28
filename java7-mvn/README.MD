h2. What
This is dockerbuild file using java8 and maven
Using the -v option you must mount the source code of the project you want to build
Also pass the mvn command to run the project (or build it whatever you want to do)

h2. Remarks
Requires some files to be present in the root folder.
For instance
jdk-8u131-linux-x64.tar.gz
...
(later also maven en git)

these are added to the gitignore folder for obvious reasons.
Download them and add them to the project root folder...
