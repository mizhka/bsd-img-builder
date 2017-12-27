#!/bin/sh

# Prerequisites:
#   - fetch jenkins.war to same folder
#   - start it, init suggested plugins
#   - create job, target to jenkinsfile


JAVA_ARGS="${JAVA_ARGS} -Xmx256m"							# Maximum heap size
JAVA_ARGS="${JAVA_ARGS} -Dorg.jenkinsci.plugins.gitclient.Git.timeOut=300" 		# Git timeout to 5 hours 
JENKINS_ARGS="${JENKINS_ARGS} --httpPort=7120"						# HTTP port for GUI

JENKINS_HOME=/repo/img-builder/.jenkins JAVA_VERSION=1.8 exec java ${JAVA_ARGS} -jar jenkins.war ${JENKINS_ARGS}

