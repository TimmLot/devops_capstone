pipeline {
     environment {
        registry = "timmlot/capstone"
        registryCredential = ‘dockerhub’
     }
     agent any
     stages {
         stage('Lint') {
              steps {
                  sh 'hadolint Dockerfile'
                  sh 'tidy -q -e *.html'
              }
         }
         stage('Build') {
              steps {
                  sh 'docker build --tag=timmlot/capstone .'
              }
         }
         stage('Upload image to Docker') {
              steps {
                  docker.withRegistry( '', registryCredential ) {
                  sh 'docker push timmlot/capstone'
                  }
              }
         }
         stage('Upload to AWS') {
              steps {
                  withAWS(region:'us-west-2',credentials:'jenkins') {
                  sh 'echo "Uploading content with AWS creds"'
                      s3Upload(pathStyleAccessEnabled: true, payloadSigningEnabled: true, file:'index.html', bucket:'jenkins-bucket-001')
                  }
              }
         }
     }
}
