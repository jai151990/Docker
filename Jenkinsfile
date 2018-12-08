node {
    def app
    stage ('clone repository') {
        checkout scm
    }
    stage ('build'){
        sh 'mvn install'
    }
    stage ('build image') {
        app = docker.build("jaisriram111/shankar-img")
    }
    stage ('test image') {
        app.inside {
            sh 'echo "test passed"' }
    }
    stage ('docker container'){
        sh 'docker run -d --name dep jaisriram111/shankar-img /bin/bash'
    }
}
