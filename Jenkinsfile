node {
    def app

    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */
		echo "Pulling code from repo"
        //checkout scm
        //shortCommit = sh(returnStdout: true, script: 'git rev-parse --short HEAD').trim()
    }

     stage('Build image') {
        /* This builds the actual image; synonymous to
         * docker build on the command line */
         echo "Building Docker image----"
         sh 'docker run -d -v /var/run/docker.sock:/var/run/docker.sock jenkinsci/blueocean'
		 sleep 40
        
         	app = docker.build("ajeetdocker/npm:latest")    
         	app.run('-p 49160:8080')
        
    }

    stage('Push image') {
                      def exampleImg = docker.image('ajeetdocker/npm:latest')
            
                        exampleImg.push()
                     

        	
      }
}