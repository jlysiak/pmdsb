# PMDSB - Poor's Man DWM Status Bar

Just yet another super simple status bar for dwm.

Basically, it's inspired by Luke's Smith `dwmblocks` but here there is no need to compile anything.

- `blocks` contains executable files which prints some info on stdout
- In `bar` put symlinks to block scripts in `blocks` directory with correct prefix i.e. `01-..`, `02-...`, etc. 
  Status bar is generated from left to right just by simple concatenation of blocks output.
- Invoke status bar feed from `.xinitrc` by adding: `<path to repo>/main.sh &> /dev/null &`

It's open and free. Have fun!
