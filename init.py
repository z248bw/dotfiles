#!/usr/bin/python3

import subprocess
from pathlib import Path

current = Path.cwd()
dotfiles = [f for f in current.glob('.*') if not f.is_dir()]
home = Path.home()

for df in dotfiles:
    cmd = ['ln', '-s', str(df), str(home.joinpath(df.name))]
    print(cmd)
    subprocess.check_call(cmd)
