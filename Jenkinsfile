pipeline {
	agent { label 'slave1' }
    			stages {
        			stage('Checkout') {
            				steps {
					sh "rm -rf /home/slave1/workspace/pipeline3/hello-world-war"	
               				 sh "git clone https://github.com/vikasyatnalli/hello-world-war.git"
            					}
       					 }
				stage('Build') {
            				steps {
               				 sh "mvn clean package"
            					}
       					 }
				stage('Publish') {
            				steps {
						sh "docker login -u poojashreesrinivasan -p tanvitanush@1820"
						sh "docker push  poojashreesrinivasan/hello:1.0"
            					}
       					 } 
				/*stage('Deploy') {
            				steps {
						sh "pwd"
						sh "ls"
						sh "whoami"
               				 sh "cp /home/slave1/workspace/pipeline3/target/hello-world-war-1.0.0.war /opt/apache-tomcat-9.0.62/webapps/"
            					}
       					 }*/
   				 }
		}
