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
               				 sh "cd hello-world-war"
					 sh "docker build -t vikasyatnalli/hello:1.0 ."
            					}
       					 }
		
				stage('Publish') {
            				steps {
						sh "docker login -u vikasyatnalli -p myparentsvikas_1"
						sh "docker push vikasyatnalli/hello:1.0"
            					}
       					 } 
				/*stage('Deploy') {
            				steps {
						sh "pwd"
						sh "ls" 
						sh "whoami"
						echo "test"
               				 sh "cp /home/slave3/workspace/pipeline1/target/hello-world-war-1.0.0.war /opt/apache-tomcat-9.0.62/webapps/"
            					}
       					 } */
   				 }
}
