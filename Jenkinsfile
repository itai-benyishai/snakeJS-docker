#!/usr/bin/env groovy
node {
    def app

    stage('Clone repository') {
        //make sure we have the repository cloned to our workspace
        checkout scm
    }

    stage('Build image') {
        // This builds the actual image; synonymous to docker build on the command line
        app = docker.build("itaibenyishai/snakejs")
    }

    stage('Test image') {
        // some fake test

        app.inside {
            sh 'echo "Tests passed"'
        }
    }

    stage('Push image') {
        docker.withRegistry('https://registry.hub.docker.com', 'dockerhub-id') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
}
