name: Docker Image CI

on:
  push:
    paths:
      - 'Dockerfile'  # 监听 Dockerfile 的变化

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
    - name: Checkout repository
      uses: actions/checkout@v2

    - name: Login to Docker Hub
      uses: docker/login-action@v2
      with:
        username: ${{ secrets.DOCKER_HUB_USERNAME }}
        password: ${{ secrets.DOCKER_HUB_PASSWORD }}

    - name: Build and push Docker image
      run: |
        docker build -t yourusername/yourimage:latest .
        docker push yourusername/yourimage:latest
