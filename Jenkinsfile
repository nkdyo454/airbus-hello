pipeline {

environment {
registry = "8962/docker-airbus"
registryCredential = 'docker-airbus_id'
dockerImage = ''
}

agent any

stages {
stage('Cloning our Git') {
steps {
git 'https://github.com/nkdyo454/airbus-hello.git'  //cloning github repository
}
}

stage('Building our image') {
steps{
script {
dockerImage = docker.build registry + ":$BUILD_NUMBER" //building docker image from docker hub
}
}
}

stage('Run Docker image and Curl localhost') {
steps{
script {

    sh 'sudo docker run -it -p 4200:8081 docker-airbus' 
//it'll give output that "Airbus is listening 8081 port" 
//which we define in main.js file also we are exposing 4200 as host port from and 8081 as Container port.

  //we’ll open another terminal and we’ll enter the following command

    curl '-X GET http://localhost:4200'   //Output will be "Hello Welcome to Airbus"

}
}
}

stage('Post notification to Teams/Slack communication Channel') {
steps{
script {
	def notifySlack(text, channel, attachments) {
    def slackURL = '[SLACK_WEBHOOK_URL]'

    def payload = JsonOutput.toJson([text: text,
        channel: channel,
        username: "Jenkins",
        attachments: attachments
    ])

   sh "curl -X POST http://localhost:4200' -d "{'text':'Notification msg'}" <slackURL>"
}
}
}}

}
}
