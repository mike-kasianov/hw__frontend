node {
    checkout scm
    
    stage('Build Docker image and Run tests') {
        sh 'make test_inside_docker'
    }
}