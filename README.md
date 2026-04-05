# 🚀 2048 Game Deployment using Docker & AWS Elastic Beanstalk

## 📌 Project Overview

This project demonstrates how to containerize a web application (2048 Game) using Docker and deploy it on AWS Elastic Beanstalk.

---

## 🛠️ Tech Stack

* Docker
* AWS Elastic Beanstalk
* IAM
* Nginx
* Ubuntu

---

## 📂 Project Structure

```
2048/
│── Dockerfile
│── README.md
```

---

## 🐳 Docker Setup

### Build Docker Image

```bash
docker build -t 2048-game .
```

### Run Container (Optional)

```bash
docker run -d -p 80:80 2048-game
```

---

## ☁️ AWS Deployment

### Steps:

1. Created Elastic Beanstalk environment
2. Configured IAM roles (Service Role + EC2 Role)
3. Selected Docker platform
4. Uploaded project files
5. Deployed application

---

## 🌍 Application URL

```
http://2048-game-env.eba-k2majypx.ap-south-1.elasticbeanstalk.com/
```

---

## ⚠️ Challenges Faced & Fixes

### ❌ Docker Engine Error

**Issue:**

```bash
dockerDesktopLinuxEngine not found
```

**Solution:**

* Started Docker Desktop
* Restarted WSL

---

### ❌ Invalid ZIP File Error

**Issue:**

```bash
unzip: cannot find zipfile directory
```

**Cause:**

* Used incorrect GitHub `.git` URL instead of ZIP

**Fix:**

```bash
curl -L -o master.zip https://github.com/gabrielecirulli/2048/archive/refs/heads/master.zip
```

**Additional Fix:**

* Extracted `2048-master` folder and moved files to `/var/www/html`

---

## 💡 Key Learnings

* Docker containerization
* AWS Elastic Beanstalk deployment
* IAM role configuration
* Debugging real-world errors

---

## 🚀 Future Improvements

* Add CI/CD pipeline
* Deploy using Kubernetes
* Add HTTPS with custom domain

---

## 👩‍💻 Author

Meghaa
