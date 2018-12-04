// Powered by Infostretch 

timestamps {

node () {

	stage ('umar - Checkout') {
 	 checkout([$class: 'GitSCM', branches: [[name: '*/develop']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'b195b761-b14e-4563-be14-a21b35a32121', url: 'https://github.com/mohdumar321/testbuildscript.git']]]) 
	}
	stage ('umar - Build') {
 	
// Unable to convert a build step referring to "hudson.plugins.ws__cleanup.PreBuildCleanup". Please verify and convert manually if required.
// Unable to convert a build step referring to "jenkins.plugins.shiningpanda.builders.PythonBuilder". Please verify and convert manually if required.		// Shell build step
sh """ 
git add .
git commit -m "updated" 
 """ 
	}
}
}