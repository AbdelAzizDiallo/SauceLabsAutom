pipeline {
    agent any

    stages {
        stage('importFeatures') {
            steps {
            bat 'curl -H "Content-Type: application/json" -X POST -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0ZW5hbnQiOiJiNmNhZGQwNS1lMzQxLTNmMTctYjU1Zi00OTM0MTI4MWQ4MmEiLCJhY2NvdW50SWQiOiI3MTIwMjA6ZjY5MGZhNzItZDEwZi00ZDA3LWI1MzUtZjZmMTEyNWFjMmIxIiwiaXNYZWEiOmZhbHNlLCJpYXQiOjE3NzAyMjAwNjMsImV4cCI6MTc3MDMwNjQ2MywiYXVkIjoiQjBGM0UyQ0RFQzkwNDc3NTlDRkI5RTdFRTQ1QkZGMzgiLCJpc3MiOiJjb20ueHBhbmRpdC5wbHVnaW5zLnhyYXkiLCJzdWIiOiJCMEYzRTJDREVDOTA0Nzc1OUNGQjlFN0VFNDVCRkYzOCJ9.ymWUcG18HYRry1IKfzvtGELozNRXkiaoWc3UJcfQ7V8"  --data @"cucumber.json" https://xray.cloud.getxray.app/api/v1/import/execution/cucumber'
        }
        stage('Checkout') {
            steps {
                // Si ton projet n'est PAS sur Git, on saute cette étape
                echo 'Projet local - pas de checkout Git'
            }
        }

        stage('Build & Test') {
            steps {
                echo 'Execution des tests Cucumber via Maven...'
                    bat 'mvn clean test'
            }
        }
    }

    post {

        success {
            echo 'Tests exécutés avec succès 🎉'
        }

        failure {
            echo 'Des tests ont échoué ❌'
        }
    }
}