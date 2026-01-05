# Project Zomboid: AI Heatmap Tracker 🧟‍♂️📈
An end-to-end data pipeline that logs player behavior in Project Zomboid and visualizes it using Python and PyTorch.

## 🛠️ Tech Stack
- **Game Side:** Lua (Event-driven data logging)
- **Data Side:** Python, Pandas, Seaborn (Visualizing spatial density)
- **ML Component:** (Planned) Anomaly detection for player survival patterns.

## 🚀 Current Progress
- [x] Lua Data Logger (Captures X,Y coordinates via OnTick events)
- [x] Automated File I/O (Asynchronous saving to avoid game lag)
- [ ] Python Heatmap Generator (WIP)
- [ ] In-game UI Overlay (Planned)

## 📊 How it Works
The Lua script hooks into the game's pulse, gathering coordinates every 10 seconds. This data is streamed to a local file which the Python engine then processes into a Kernel Density Estimate (KDE) plot.
