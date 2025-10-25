# fwidata.sh

`fwidata.sh` is a Bash utility that generates a companion script called **`fwidata`**.  
The generated script embeds a live snapshot of your system information (via [neofetch](https://github.com/dylanaraps/neofetch)) along with metadata headers, versioning, and helpful command‑line switches.

This project ritualizes system identity into a **living scroll**: each run captures your machine’s state, authorship, and date of capture.

---

## 📸 Example Output

Below is a sample `neofetch` capture as embedded by `fwidata`:

<img width="936" height="447" alt="Neofetch Screenshot" src="https://github.com/user-attachments/assets/2a1d8204-442d-4d81-99b7-919511f1799e" />


---

## ⚙️ Features

- **Self‑documenting headers** with creator, assistant, and capture date  
- **Embedded neofetch output** (with ANSI colors preserved)  
- **Switches for usability**:
  - `--help` / `-h` → usage information  
  - `--version` / `-v` → show version  
  - `--date` / `-d` → print capture date only  
- **Replay mode**: run `./fwidata` to echo the full captured neofetch snapshot  
- **Live display**: `fwidata.sh` shows neofetch output while capturing it  

---

## 🚀 Usage

### Generate the `fwidata` script
```bash
./fwidata.sh
```

This will:
- Display your neofetch output live
- Create a new executable script `fwidata` with the snapshot embedded

### Run the generated script
```bash
./fwidata
```

By default, this replays the captured neofetch output.

### Switches
```bash
./fwidata --help     # Show usage info
./fwidata --version  # Show version
./fwidata --date     # Show capture date only
```

---

## 📂 Project Structure

```
.
├── fwidata.sh        # Generator script
├── fwidata           # Generated snapshot script (after running fwidata.sh)
└── screencapture.png # Example neofetch output (for README)
```

---

## 📝 License

This project is released under the MIT License.  
Feel free to fork, adapt, and extend the ritual.

---

## ✨ Credits

- **Created by:** Professor. Damian A. James Williamson Grad.  
- **Assisted by:** Microsoft Copilot  
- **Powered by:** [neofetch](https://github.com/dylanaraps/neofetch)

---
