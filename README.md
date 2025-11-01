# 🧠 System Health Monitor (Bash Script)

A **beginner-friendly Linux project** that checks and reports key system health metrics such as **CPU load, memory usage, and processor capacity** using simple Bash commands.  
Perfect for students and DevOps beginners who want to practice Linux monitoring and shell scripting skills.

---

## 🚀 Features

- 🧮 **CPU Health Check** – Displays current CPU load averages (1m, 5m, 10m)
- 💾 **Memory Status** – Shows free and used RAM
- ⚙️ **Processor Utilization** – Compares load average with available CPU cores
- 🔎 **Automatic Overload Detection** – Alerts when CPU is overloaded
- 🧰 **Error-Safe Execution** – Uses `set -eo pipefail` for reliable command handling

---

## 🧑‍💻 How It Works

The script collects system data using tools like:
- `top` – for CPU and memory stats  
- `awk` and `grep` – for text parsing  
- `nproc` – to count CPU cores  
- `bc` – to handle floating-point comparisons  

---

## 📦 Usage

### 1️⃣ Clone the repository
```bash
git clone https://github.com/your-username/system-health-monitor.git
cd system-health-monitor


2️⃣ Make the script executable
chmod +x system_health.sh


3️⃣ Run the script
./system_health.sh


🌱 Future Improvements (v2 Ideas)

Add CPU temperature and battery status (using sensors)

Include disk health and network connectivity

Save results to a log file

Add email or Telegram alerts for overloads


🧑‍🎓 Author

Ankit Khatkar
💼 Aspiring DevOps Engineer | 📘 Linux & Cloud Enthusiast
📅 Version: v1.0 — October 2025

