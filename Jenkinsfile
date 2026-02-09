pipeline {
    agent any

    parameters {
    string(name: 'SELENIUM_BROWSER', defaultValue:'CHROME')
    string(name: 'PLAN_DE_TEST', defaultValue:'POEI2-702')
    }

    stages {

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
        stage('importResults') {
                    steps {
                        bat 'curl -H "Content-Type: application/json" -X POST -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0ZW5hbnQiOiJiNmNhZGQwNS1lMzQxLTNmMTctYjU1Zi00OTM0MTI4MWQ4MmEiLCJhY2NvdW50SWQiOiI3MTIwMjA6ZjY5MGZhNzItZDEwZi00ZDA3LWI1MzUtZjZmMTEyNWFjMmIxIiwiaXNYZWEiOmZhbHNlLCJpYXQiOjE3NzA2MzU2OTMsImV4cCI6MTc3MDcyMjA5MywiYXVkIjoiQjBGM0UyQ0RFQzkwNDc3NTlDRkI5RTdFRTQ1QkZGMzgiLCJpc3MiOiJjb20ueHBhbmRpdC5wbHVnaW5zLnhyYXkiLCJzdWIiOiJCMEYzRTJDREVDOTA0Nzc1OUNGQjlFN0VFNDVCRkYzOCJ9.HNIIv68ZQUyT58ytuHTeYSfloS6rBn8Qe05avXuZcp0" --data @"target/cucumber.json" https://xray.cloud.getxray.app/api/v1/import/execution/cucumber'
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