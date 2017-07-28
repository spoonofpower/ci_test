pipeline {
    properties([pipelineTriggers([pollSCM('H/5 * * * *')])])

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
                echo env.BRANCH_NAME
                echo env.CHANGE_ID
            }
        }
    }
}
