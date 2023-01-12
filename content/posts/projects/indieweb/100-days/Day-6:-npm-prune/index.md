---
title: "Day 6: npm prune"
date: 2023-01-11T21:32:04 
categories:
  - Projects
tags: 
  - indieweb
  - projects
  - 100days
  - npm
  - nodejs
  - docker
---

I am TIRED. I don't have the energy to write any more code, but I didn't
want to miss writing in my blog. That seemed to be the more important part of
doing "100 Days of Indieweb" anyway.

Today I got to work on making a docker container for a NodeJS (TypeScript) app.
I'm using multi-layer builds, so that the final image only has the bare minimum
of what it needs to run. This is important not just because you don't want to
store more data than you need (storage = money after all), but because the more
your production container has the larger the potential attack surface is. It
also increases the number of things that could just have bugs and need to be
patched, leading to more maintenance overhead.

### `npm prune`

Enter `npm prune`. In my build step I need to have **all** the dependencies
installed, including the `dev` dependencies. However, the `dev` deps aren't
required to actually **run** the app once it's built. I was looking for ways to
both reduce the size of my container while still keeping build times
reasonable.

I _could_ simply re-run `npm i --production` in a subsequent build step. But
that would take longer than just removing the packages I don't need from
`node_modules`. Thankfully `npm prune` also has the `--production` flag!

When run it will prune your `node_modules` directory, leaving behind only the
packages required for production. That one command actually reduced my
container size by almost half. I'd say that's a win.

