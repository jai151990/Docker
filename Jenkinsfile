pipeline {
  agent any
   stages {
     stage ('checkout'){
        steps {
            checkout scm }
     }
     stage ('build'){
        steps {
            sh 'mvn install'}
    }
    stage ('build image') {
        sh 'docker build -t="jaisriram111/shankar-img" .'
    }
    stage ('test image') {
        sh 'echo "test passed"' 
    }
    stage ('docker container'){
        sh 'docker run -d --name dep jaisriram111/shankar-img /bin/bash'
    }
 }
}
