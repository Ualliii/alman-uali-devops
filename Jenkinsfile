pipeline {
    agent any
    environment {
        STUDENT_NAME = 'Uali'
        STUDENT_SURNAME = 'Alman'
        STUDENT_GROUP = 'IT2-2308'
        STUDENT_ID = '41503'
    }
    stages {
        stage('Checkout') {
            steps { echo 'Checking out code...' }
        }
        stage('Build & Test') {
            steps {
                echo "Student: ${env.STUDENT_NAME} ${env.STUDENT_SURNAME}"
                echo "Group: ${env.STUDENT_GROUP}, ID: ${env.STUDENT_ID}"
            }
        }
        stage('Docker Build') {
            steps { sh 'docker build -t alman-uali-devops .' }
        }
        stage('Docker Run') {
            steps {
                sh 'docker rm -f alman-uali-container || true'
                sh 'docker run --rm --name alman-uali-container alman-uali-devops'
            }
        }
    }
}
