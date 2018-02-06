node {
    def app

    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */
		echo "Pulling code from repo"
        checkout scm
        shortCommit = sh(returnStdout: true, script: 'git rev-parse --short HEAD').trim()
    }

     stage('Build image') {
        /* This builds the actual image; synonymous to
         * docker build on the command line */
         echo "Building Docker image----"
         sh 'docker run -d -v /var/run/docker.sock:/var/run/docker.sock jenkinsci/blueocean'
         steps{
         	app = docker.build("ajeetsharma/nodeapp:101")    
         	app.run('-p 49160:8080')
         }
        
    }

    stage('Push image') {

				docker.withRegistry('https://hub.docker.com/', 'Docker Hub') {

        			/* Push the container to the custom Registry */
        			app.push()
   					}
        	
      }
}