vsso() {
   aws-sso-util login --profile $1 && awsume $1
}
