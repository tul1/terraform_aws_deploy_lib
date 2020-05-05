[
  {
    "essential": true,
    "memory": 256,
    "name": "myapp",
    "cpu": 256,
    "image": "${REPOSITORY_URL}:${APP_VERSION}",
    "workingDirectory": "/app",
    "command": ["npm", "start"],
    "environment": [
      {
        "name": "ECS_IMAGE_PULL_BEHAVIOR",
        "value": "always"
      }
    ],
    "portMappings": [
        {
            "containerPort": 3000,
            "hostPort": 3000
        }
    ]
  }
]

