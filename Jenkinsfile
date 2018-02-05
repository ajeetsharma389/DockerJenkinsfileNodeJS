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
         echo "Building Docker image"
         sh 'docker run -d -v /var/run/docker.sock:/var/run/docker.sock jenkinsci/blueocean'
         app = docker.build("ajeetsharma/nodeapp:101")    
         app.run('-p 49160:8080')
        
    }

    stage('Push image') {
         /*Finally, we'll push the image with two tags:
         * First, the incremental build number from Jenkins
         * Second, the 'latest' tag.
         * Pushing multiple tags is cheap, as all the layers are reused.
 			echo 'Pushing image ${shortCommit}'
                withDockerRegistry([credentialsId: 'ajeetdocker', url: 'https://hub.docker.com/']) {
                	app.push("${shortCommit}")
        			app.push('latest')
                }*/
                
        def DOCKER_REGISTRY_URI="https://hub.docker.com/"
        withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'ajeetdocker', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD']]) 
        {
					sh "docker login --password=${PASSWORD} --username=${USERNAME} ${DOCKER_REGISTRY_URI}"
					app.push("${shortCommit}")
        			app.push('latest')
		}
        	
      }
}