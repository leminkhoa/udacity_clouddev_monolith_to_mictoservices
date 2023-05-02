function tag_and_push () {
    docker image tag $1 ${DOCKER_USERNAME}/$1
    docker push ${DOCKER_USERNAME}/$1
}

tag_and_push 'udagram-api-feed:latest'
tag_and_push 'udagram-api-user:latest'
tag_and_push 'udagram-frontend:local'
tag_and_push 'reverseproxy:latest'
