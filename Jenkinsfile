pipeline {
    environment {
        FOO = "BAR"
        RT_ACCESS_KEY = credentials('RT_ACCESS_KEY')
    }

    agent { label "master" }

    stages {
        stage("test") {
            steps {
                sh 'echo "FOO is $FOO"'
                sh 'echo -- $RT_ACCESS_KEY --'
                sh 'env'
            }
        }
    }
}
