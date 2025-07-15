# 🧪 Dev Lab in Docker

A Docker-based development environment preconfigured with:

- 🐧 Ubuntu
- 🔵 Node.js + npm
- ☕ Java (OpenJDK 17)
- 🦫 Go (golang-go)
- 🐳 Docker (Docker-in-Docker enabled)
- 📁 Volume for persistent workspace
- 🌐 Port mappings for local app testing (React, Vite, Spring Boot, etc.)

---

## 📦 Setup

### 1. Clone this repository
```bash
git clone https://github.com/<your-username>/dev-lab.git
cd dev-lab
```

### 2. Build and run the container
```bash
docker compose up --build -d
```

### 3. Enter the container
```bash
docker exec -it dev-lab-container bash
```

Your working directory is `/home/devuser/workspace`.

## 🧑‍💻 What's Inside

| Language | Command | Notes |
|----------|---------|-------|
| Node.js | `node`, `npm` | Use for React, Next.js, etc. |
| Java | `javac`, `java` | OpenJDK 17 preinstalled |
| Go | `go` | Use `go run main.go`, etc. |
| Docker | `docker` | Docker-in-Docker enabled |

## 🔁 Volumes and Ports

### 📁 Volumes
* Your host `workspace/` is mounted to `/home/devuser/workspace` inside the container.

### 🌐 Ports Exposed

| Host Port | Container Port | Use Case |
|-----------|----------------|----------|
| 3000 | 3000 | React, Next.js |
| 5173 | 5173 | Vite |
| 8080 | 8080 | Java Spring Boot |
| 8000 | 8000 | Go, FastAPI |
| 4200 | 4200 | Angular |
| 5000 | 5000 | Express/Flask |
| 9090 | 9090 | Admin dashboards |

## 🚀 Example Usage

Inside the container:

```bash
cd ~/workspace
npx create-react-app my-app
cd my-app
npm start  # Open http://localhost:3000
```
