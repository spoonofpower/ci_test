pipeline {
    environment {
        RT_ACCESS_KEY = credentials('RT_ACCESS_KEY')
        RT_SECRET_KEY = credentials('RT_SECRET_KEY')
    }

    agent { label "master" }

    stages {
        stage("test") {
            steps {
                sh 'env'
                sh 'git status'
                sh 'git log'
                echo env.BRANCH_NAME
                echo env.CHANGE_ID
            }
        }
    }
}
