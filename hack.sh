#!/usr/bin/env bash
# Hacker-style terminal demo (safe, local, for looks only)
# Make executable: chmod +x hack.sh
# Run: ./hack.sh

sleep_time=0.04

typewrite() {
  text="$1"
  delay=${2:-$sleep_time}
  for (( i=0; i<${#text}; i++ )); do
    printf "%s" "${text:$i:1}"
    sleep $delay
  done
  printf "\n"
}

clear
# banner
if command -v figlet >/dev/null 2>&1; then
  figlet -f slant "LEET" | (command -v lolcat >/dev/null 2>&1 && lolcat || cat)
else
  echo "=== LEET ==="
fi

sleep 0.6

typewrite "Initializing terminal aesthetics..." 0.03
sleep 0.6

# fake "scan"
typewrite "[*] Scanning local host interfaces..."
for i in {1..6}; do
  printf " - eth$i... " ; sleep 0.18; printf "OK\n"
done

sleep 0.4
typewrite "[*] Fetching system profile..."
if command -v neofetch >/dev/null 2>&1; then
  neofetch --stdout | (command -v lolcat >/dev/null 2>&1 && lolcat || cat)
else
  uname -a | (command -v lolcat >/dev/null 2>&1 && lolcat || cat)
fi

sleep 0.6
typewrite "[*] Deploying vibes..." 0.02
sleep 0.6

# fake progress bar
progress_bar() {
  total=$1
  for ((i=0;i<=total;i++)); do
    percent=$(( 100 * i / total ))
    bar=$(printf "%0.s#" $(seq 1 $((i/2))))
    printf "\r[%3d%%] %-50s" "$percent" "$bar"
    sleep 0.06
  done
  printf "\n"
}
progress_bar 100

sleep 0.4
if command -v cowsay >/dev/null 2>&1; then
  echo "All systems nominal. Keep coding." | cowsay | (command -v lolcat >/dev/null 2>&1 && lolcat || cat)
else
  echo "All systems nominal. Keep coding."
fi

sleep 0.8
typewrite "Tip: Replace assets/terminal-demo.gif with your own screen recording for README flair." 0.01
echo
