---
title: "Qutebrowser: Set PATH in config for OSX"
date: 2021-06-08T00:00:00
categories: ["tutorials", "qutebrowser"]
tags: ["osx", "qutebrowser"]
---

I have recently started using [Qutebrowser](https://qutebrowser.org) (again, 
lol). I wanted to write / use some simple user scripts to add some 
functionality, but on OSX I was having some issues with things not being in my 
`PATH`. I didn't realize why / what was happening so I asked in the issues of 
Qutebrowser on github and quickly got my answer.

It turns out that for GUI apps on OSX they don't inheirit the path that you set 
in your shell profile. I decided to fix that by adding the missing things to my 
`PATH` when Qutebrowser starts in by editing it in my `config.py`. Now it looks 
something like this at the start:

```
"""Qutebrowser configuration."""
import platform
import os
from os.path import expanduser

system = platform.system()
home_dir = expanduser('~')

if system == 'Darwin':
    # Add things to PATH so userscripts work
    path = os.environ['PATH']
    path += os.pathsep + home_dir + '/.pyenv/shims'
    path += os.pathsep + home_dir + '/.pyenv/plugins/pyenv-virtualenv/shims'
```

Now I can add things to the `PATH` as needed for OSX!
