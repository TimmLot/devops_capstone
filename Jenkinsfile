pipeline {
     agent any
     stages {
         stage('Lint') {
              steps {
                  sh 'hadolint Dockerfile'
                  sh 'tidy -q -e *.html'
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
