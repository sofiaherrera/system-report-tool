# 🖥️ system-report-tool

A lightweight script for generating a detailed hardware and environment report of your Linux system. This tool is useful for auditing system specs, debugging compatibility issues, and documenting setups across dev environments.

---

## 📋 Features

- CPU, GPU, Memory, and Storage info
- OS version and kernel details
- Mounted drives and partitions
- NVIDIA driver and CUDA (if applicable)
- Output saved to a timestamped file for record-keeping

---

## 🧰 Requirements

- ✅ Linux (Ubuntu/Debian-based systems recommended)
- ✅ Bash/Zsh-compatible shell
- ✅ Basic tools available by default:
  - `lscpu`, `lsblk`, `lsb_release`, `nvidia-smi` (for NVIDIA GPU)
  - `df`, `free`, `uname`, `date`

---

## 🚀 Usage

1. **Clone the repository**:

```bash
git clone https://github.com/sofiaherrera/system-report-tool.git
cd system-report-tool

    Make the script executable (if needed):

chmod +x system_report.sh

    Run the script:

./system_report.sh

    Find the output:
    A file named like system_report_2025-04-02_18-45-30.txt will appear in the same directory with full system specs.

📁 Example Output

System Report - 2025-04-02 18:45:30
------------------------------------
CPU: AMD Ryzen 5 5600X 6-Core Processor
Memory: 32GB
GPU: NVIDIA GeForce RTX 2060
Storage Devices:
- NVMe (Boot)
- WD Blue SSD
- Seagate External SSD (Backup)

OS: Ubuntu 22.04.4 LTS
Kernel: 6.5.0-26-generic
...

🔒 Security & Privacy

This tool does not collect, upload, or transmit any data. All output is stored locally and privately. Use and share reports at your discretion.

📦 License

MIT License

✨ Maintainer

Sofia Herrera
Architecting secure, intelligent AI systems — tutella.ai
