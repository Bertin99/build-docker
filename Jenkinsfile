pipeline {
    agent any

    environment {
        IMAGE_NAME = 'my-ubuntu-ping-image'  // Nom de l'image Docker
        TAG = 'latest'  // Tag de l'image Docker
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Crée l'image Docker à partir du Dockerfile
                    sh "sudo -S docker build -t ${ubuntu:22.04}:${TAG} ."
                }
            }
        }

        stage('Test Docker Image') {
            steps {
                script {
                    // Lance un conteneur pour tester l'image
                    // Teste si la commande `ping` fonctionne
                    sh "sudo -S docker run --rm ${ubuntu:22.04}:${TAG} ping -c 4 8.8.8.8"
                }
            }
        }
    } 
}
