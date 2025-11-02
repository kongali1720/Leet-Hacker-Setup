# 🖤 Leet Hacker Setup — Terminal Aesthetics & Fun

[![Repo Size](https://img.shields.io/github/repo-size/USERNAME/leet-hacker-setup?color=blue)](https://github.com/USERNAME/leet-hacker-setup)
[![Last Commit](https://img.shields.io/github/last-commit/USERNAME/leet-hacker-setup?color=green)](https://github.com/USERNAME/leet-hacker-setup)
[![License](https://img.shields.io/github/license/USERNAME/leet-hacker-setup?color=orange)](LICENSE)
[![Platform](https://img.shields.io/badge/platform-linux%20%7C%20wsl-lightgrey)](#)
[![Made with ❤️](https://img.shields.io/badge/made%20with-%E2%9D%A4-red)](#)

<p align="center">
  <!-- Put a terminal demo GIF in assets/terminal-demo.gif -->
  <img src="assets/terminal-demo.gif" alt="Terminal demo" width="720" />
</p>

---

## 🔥 What is this?
**Leet Hacker Setup** is a playful, aesthetic repository that makes your terminal look and feel like a hacker movie scene — useful for demo videos, presentations, & just flexing your dotfiles.  
It contains a tiny, **safe** terminal simulator, quick setup script, and recommended tweaks to get your environment looking 🔥 in ~5 minutes.

> **For education and entertainment only.** No real hacking tools or offensive instructions included.

---

## 🚀 Quickstart — Setup in 5 minutes

Open a terminal and run:

```bash
# 1. Clone repo
git clone https://github.com/kongali1720/Leet-Hacker-Setup
cd Leet-Hacker-Setup

# 2. Make install script executable & run it
chmod +x install.sh
./install.sh

# 3. Run the hacker demo
chmod +x hack.sh
./hack.sh
```

install.sh will attempt to install a small set of harmless packages (if available): figlet, toilet, lolcat, cowsay, neofetch, tmux.
On WSL/Ubuntu run it with sudo if required.

** 🧩 What’s inside**
```bash
leet-hacker-setup/
├─ assets/
│  └─ terminal-demo.gif          # (Add your demo GIF here)
├─ install.sh                    # Install dependencies (safe & non-invasive)
├─ hack.sh                       # Demo script: terminal animation + typewriter
├─ README.md
├─ LICENSE
├─ CONTRIBUTING.md
└─ .gitignore
```

## 🛠 Files explained (enhanced)

### 🔧 `install.sh`
Safe installer yang mencoba memasang tools visual (jika tersedia) — **hanya** untuk efek tampilan, **tidak** mengubah dotfiles atau konfigurasi shell.

**Tools yang dicoba diinstall**
- `figlet` / `toilet` — membuat ASCII banners besar (headline keren)
- `lolcat` — memberi efek rainbow pada output teks
- `cowsay` — “talking cow” (fun message)
- `neofetch` — menampilkan info sistem bergaya
- `fortune` — menampilkan quote/kutipan acak (opsional, lucu untuk README)

**Contoh penggunaan singkat (setelah install):**
```bash
figlet "LEET" | lolcat
neofetch --stdout | lolcat
fortune | cowsay | lolcat
```

---

## 🔒 Kenapa Aman

Repo ini didesain untuk **tampilan & edukasi** — bukan untuk operasi berbahaya. Berikut alasan kenapa alat ini aman dipakai:

- ✅ **Tidak mengubah file konfigurasi**  
  Skrip installer **tidak** memodifikasi `~/.bashrc`, `~/.zshrc`, atau file konfigurasi lain. Semua perubahan bersifat sementara atau berupa paket yang terinstal.

- ✅ **Hanya memasang paket opsional**  
  `install.sh` hanya mencoba menginstal alat-alat estetika (figlet, lolcat, cowsay, dll.) — semua bersifat opsional. Jika paket tidak tersedia, script akan melewatinya tanpa menghentikan proses.

- ✅ **Tahan kesalahan (failsafe)**  
  Bila paket tidak ditemukan oleh package manager, installer **tidak gagal** — ia terus dan memberi pesan instruksi untuk instalasi manual.

> 🔎 *Tip:* Jalankan `install.sh` sebagai non-root dulu untuk melihat apa yang dilakukan, lalu ulangi dengan `sudo` bila perlu.

---

## 💻 `hack.sh` — What it does (Safe demo)

`hack.sh` adalah script demo **aman & lokal** yang menampilkan efek visual untuk keperluan demo/rekaman:

**Yang ditampilkan**
- ✏️ Typewriter effect — teks “diketik” satu per satu  
- 🔍 Fake scan / progress bar — simulasi proses (visual only)  
- 🖥 System summary via `neofetch` (fallback `uname -a`)  
- 🐮 Fancy finish message (via `cowsay` + `lolcat`)

**Feature highlights**
- ⏱ Delay / kecepatan mudah disesuaikan (`sleep_time` di bagian atas)  
- 🔒 Berjalan sepenuhnya offline — **tidak** memindai jaringan atau mengakses host lain  
- 🎬 Ideal untuk merekam demo GIF/video pendek

> ❗ Jangan berharap script ini meretas apa pun — ini murni estetika dan showmanship.

---

## ✍️ Customize it (quick tips & snippets)

Biar tampil lebih personal, coba trik ini:

### 1) Ganti banner
Ubah teks `figlet`:
```bash
figlet -f slant "YOUR_HANDLE" | lolcat
```
### 2) Ubah kecepatan ketik

Di hack.sh:
```bash
sleep_time=0.04   # lebih kecil = lebih cepat, lebih besar = lebih lambat
```

### 3) Sesuaikan fake-scan

Ganti atau tambahkan langkah:
```bash
for target in "wlan0" "eth0" "docker0"; do
  printf " - $target... " ; sleep 0.18; printf "OK\n"
done
```

### 4) Tambah efek ASCII

Contoh dengan toilet
```bash
toilet -f mono12 --gay "LEET MODE"
```

### 5) Buat GIF untuk README (recommended workflow)

  * Rekam terminal dengan asciinema:
```bash
asciinema rec demo.cast --command="./hack.sh"
```

  * Convert ke SVG (svg-term) lalu ke GIF (imagemagick) atau pakai asciinema2gif:
```bash
svg-term --in demo.cast --out demo.svg --width 80
# convert svg -> gif
convert -density 150 demo.svg -resize 720x demo.gif
```
💡 Kalau mau hasil mudah: rekam layar (OBS) dan crop area terminal, lalu konvert ke GIF.


### ⚠️ Safety & Ethics (must-read)

Kami menekankan **keamanan dan etika** penggunaan:

- 🧾 **Kosmetik & edukatif** — repo ini hanya untuk tampilan, demo, dan pembelajaran. Tidak berisi exploit atau instruksi ofensif.  
- 🚫 **Jangan** gunakan script atau trik ini untuk mensimulasikan serangan nyata terhadap sistem atau jaringan yang bukan milikmu.  
- 🛑 Jika menambahkan tools yang lebih “powerful” (scanner, pentest utilities, dll.), **sertakan peringatan jelas** dan dokumentasi etis yang menjelaskan batas penggunaan.  
- 📚 **Selalu minta izin** sebelum menjalankan tools pada jaringan, server, atau perangkat yang bukan milikmu.

---

### 🙏 Contribute (how to help)

Bantu kembangkan repo ini supaya makin menarik dan bermanfaat:

- ✨ **Tambah efek terminal** — paket font ASCII, color palettes, banner styles.  
- 🎞 **Buat workflow rekam → konversi**: `asciinema` → `svg-term` → `gif` agar mudah buat README demo.  
- 🖥 **Tambahkan varian OS** — panduan instalasi untuk macOS (Homebrew), Arch (pacman), WSL/Ubuntu (apt).  
- 🧩 **Buat presets**: tema “cyberpunk”, tema “minimal”, theme untuk livestream.  
- 📄 Ikuti panduan di `CONTRIBUTING.md` untuk submit PR, gunakan branch fitur, dan sertakan screenshot/GIF.

---

### 📎 Credits & Resources

**Utils**
- `figlet`, `toilet`, `lolcat`, `cowsay`, `neofetch`, `fortune`

**Recording & conversion**
- `asciinema`, `svg-term`, `asciinema2gif` (atau workflow OBS → gif)

**Pembelajaran**
- Tutorial terminal art, ASCII animation, dan terminal recording (searchable via web)

---

<div align="center">

## ✅ Gaspol Coding Squad Indonesia! 🚀💻
> Belajar sambil praktek langsung.<br>
> Run it, understand it.<br>
> Mini project Python yang gak bikin ngantuk!  
</div>

---

<div align="center">

## ☕ Traktir Kopi & Nasi Padang  

<strong>Dukung terus biar semangat bikin karya edukatif lainnya...</strong><br>
💡 ☕ <a href="https://www.paypal.com/paypalme/bungtempong99" target="_blank">Buy Me a Coffee via PayPal</a>

</div>

---

<div align="center">

## ❤️ INITIATING HUMANITY MODE... for Down Syndrome

<table align="center">
  <tr><th>Target</th><td>Anak-anak Pejuang Down Syndrome</td></tr>
  <tr><th>Status</th><td>Butuh Dukungan</td></tr>
  <tr><th>Aksi</th><td>Buka Hati + Klik Link = Senyum Baru</td></tr>
</table>

<p><em>Mereka bukan berbeda. Mereka hadir untuk mengajarkan kita arti cinta sejati dan kesabaran.</em></p>

<a href="https://mydonation4ds.github.io/" target="_blank">
  <img src="https://img.shields.io/badge/SUPPORT--NOW-%23FF6600?style=for-the-badge&logo=heart&logoColor=white" alt="Support Now">
</a>

</div>

---

<div align="center">

## 💳 Dukungan Pembayaran DONASI

<p>
  <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Visa_Logo.png/120px-Visa_Logo.png" alt="Visa" width="80">
  &nbsp;&nbsp;
  <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Mastercard-logo.svg/120px-Mastercard-logo.svg.png" alt="Mastercard" width="80">
  &nbsp;&nbsp;
  <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/39/PayPal_logo.svg/120px-PayPal_logo.svg.png" alt="PayPal" width="80">
</p>

</div>

---

<div align="center">

Kalau project ini bermanfaat, kasih ⭐ ya dan share ke temen-temenmu!<br>
Follow <a href="https://twitter.com/kongali1720" target="_blank">@kongali1720</a> buat update seru lainnya 🔥  

<a href="https://twitter.com/kongali1720" target="_blank">
  <img src="https://img.shields.io/twitter/follow/kongali1720?style=social" alt="Twitter Follow Badge">
</a>

</div>







