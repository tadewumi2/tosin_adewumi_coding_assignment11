# React Development Environment with Docker

This project demonstrates how to set up a React development environment using Docker containers. The application displays a simple "Codin 1" heading and runs on localhost:7775

## Prerequisites

Before you begin, ensure you have the following installed on your system:

- Docker Desktop- Download from docker.com
- Git(optional)- For version control

# Project Structure

project-folder/
|-- Dockerfile
|-- README.md
|--package.json
|-- public/
| '**index.html
|**src/
|-- App.js
|--App.css
|\_\_ index.js

# Setup Instructions

## Step 1: Create the React Application

If you haven't created the React app yet, follow these steps:

1. Create a new React application:

```bash
npx create-react-app tosin_adewumi_coding_assignment11
cd tosin_adewumi_coding_assignment11
```

2. Modify the App.js file to display "Codin 1":

```javascript
function App() {
  return (
    <div className="App">
      <h1>Codin 1</h1>
    </div>
  );
}
export default App;
```

# Step 2: Build the Docker Image

1. Navigate to your project directory(where the Dockerfile is located)
2. Build the Docker image with the required name:

```bash
docker build -t tosin_adewumi_coding_assignment11 .
```

# Step 3: Run the Docker Container

1. Run the container with port mapping:

```
bash
docker run -p 7775:7775 --name tosin_adewumi_coding_assignment11 tosin_adewumi_coding_assignment11
```

# Step 4: Access the Application

1. Open your web browser and navigate to:

```
http://localhost:7775
```

```
http://127.0.0.1:7775
```

2. You should see a webpage displaying the "Codin 1" heading.

# Docker Commands Refrence

## Useful Commands for Development

- List running containers:

```bash
docker ps
```

- List all containers (including stopped):

```bash
docker ps -a
```

- Stop the Container:

```bash
docker stop tosin_adewumi_coding_assignment11
```

- Remove the container:

```bash
docker rm tosin_adewumi_coding_assignment11
```

- Remove the image:

```bash
docker rmi tosin_adewumi_coding_assignment11
```

- View container logs:

```bash
docker logs tosin_adewumi_coding_assignment11
```

Development Workflow
For active development, you might want to use volume mounting to see changes without rebuilding:

```bash
dockerrun -p 7775:7775 -v $(pwd):/tosin_adewumi_site --name tosin_adewumi_coding_assignment11 tosin_adewumi_coding_assignment11
```

Troubleshooting
Common Issues and Solutions

1. Port already in use:

- Error:

```bind: address already in use

```

- Solution: Remove the existing container first:

```bash
docker rm tosin_adewumi_coding_assignment11

3. Permission denied:
* Solution: Make sure Docker Desktop is running and you have proper permissions
4. Build fails:
* Check that all files are in the correct location
* Ensure Dockerfile syntax is correct
* Check Docker Desktop is running
```
"# DockerAssignment" 
