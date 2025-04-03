#!/bin/bash

echo ""
echo "====================================="
echo "🖥️  SYSTEM HARDWARE & ENVIRONMENT REPORT"
echo "====================================="

# CPU Info
echo -e "\n🧠 CPU Info:"
lscpu | grep -E 'Model name|Socket|Thread|Core|CPU\(s\)'

# RAM Info
echo -e "\n💽 Memory Info:"
free -h

# GPU Info (Requires NVIDIA drivers installed)
echo -e "\n🎮 GPU Info:"
nvidia-smi --query-gpu=name,driver_version,memory.total,memory.used --format=csv,noheader || echo "NVIDIA GPU not detected or drivers not installed."

# Storage Info
echo -e "\n💾 Storage Devices:"
lsblk -o NAME,SIZE,TYPE,MOUNTPOINT,FSTYPE | grep -v loop

# Mounted Filesystems
echo -e "\n📦 Mounted Filesystems:"
df -h | grep -v tmpfs

# OS Info
echo -e "\n🐧 OS & Kernel:"
lsb_release -a 2>/dev/null
uname -r

# Python & CUDA
echo -e "\n⚙️ Python & CUDA:"
which python
python --version
nvcc --version 2>/dev/null || echo "CUDA (nvcc) not found. Only nvidia-smi is available."

# Virtual Environment
echo -e "\n🔒 Active Virtual Environment:"
echo "${VIRTUAL_ENV:-None}"

# Optional: Show project directories if you're inside one
echo -e "\n📁 Project Directory Tree (Top-Level):"
ls -d */ 2>/dev/null || echo "No folders in current directory."

echo ""
echo "Report complete."
