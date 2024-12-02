<p align="center">
  <a href="https://github.com/russmatney/bones/actions/workflows/ci.yml"><img alt="Unit Tests" src="https://github.com/russmatney/bones/actions/workflows/ci.yml/badge.svg" /></a>
</p>

<p align="center">
  <a href="https://www.patreon.com/russmatney">
    <img alt="russmatney on Patreon" src=https://img.shields.io/badge/Patreon-Support%20this%20Project-%23f1465a?style=for-the-badge />
  </a>
  <a href="https://discord.gg/PQvfdApHFQ">
    <img alt="dangerruss on Discord" src="https://img.shields.io/discord/758750490015563776?style=for-the-badge&logo=discord&logoColor=fff&label=discord" />
  </a>
  <a href="https://mastodon.gamedev.place/@russmatney">
    <img alt="russmatney on Mastodon" src="https://img.shields.io/badge/Mastodon-teal?style=for-the-badge&logo=mastodon&logoColor=white" />
  </a>
  <a href="https://www.twitch.tv/russmatney">
    <img alt="russmatney on Twitch" src="https://img.shields.io/badge/Twitch-purple?style=for-the-badge&logo=twitch&logoColor=white" />
  </a>
  <a href="https://www.youtube.com/@russmatney">
    <img src="https://img.shields.io/badge/Youtube-red?style=for-the-badge&logo=youtube&logoColor=white" alt="Youtube Badge"/>
  </a>
</p>

# Bones, a Godot Utils addon

A core of Godot addons for rapid prototyping.

Mostly addons built alongside games like [Dot
Hop](https://github.com/russmatney/dothop) and
[Dino](https://github.com/russmatney/dino), but also stretched into prototypes
like [Blox](https://github.com/russmatney/blox),
[Overculted](https://github.com/moonstorm-clerics/overculted-prototype), and
[Terrorware](https://github.com/moonstorm-clerics/terrorware-prototype).

## Components

Before static classes, I was using Autoloads similarly to namespaces - for easy
access to functions. Most of that functionality has been converted to static
classes instead. I'm ironing out and minimizing the remaining stateful behavior
to reduce the autoloads even further.

Static classes:

- Util (class_name `U`)
  - a slew of static helper functions for a variety of cases
- Reptile

Autoloads (to be reduced!):

- Navi
- Debug
- Juice
- DJ

## Background

[Dino](https://github.com/russmatney/dino) was originally a games 'monorepo' - I
built games for many jams in the same project, sometimes reusing patterns, other times
trying out new things. (I made youtube devlog about this here:
[Dino Year One](https://www.youtube.com/watch?v=9cyAnNLGrZI))

Eventually I refactored that, smashing the parts of those games into a single
steam release (which admittedly needs a bunch more work, but we'll get back to
it later). Since then, I've picked and pulled from it whenever I start a new
project.

Bones is a place to manage the addons that Dino is built on, with an angle
toward jam games and rapid prototyping. Once you start getting serious about
your own game (i.e. more than prototyping), you'll probably start writing
systems that are specific to that game.

I want to pull over the patterns and the code, but leave most of the assets
(or maybe leave some placeholders in place for help getting started.)


## Structure

The consumable portion of bones is in `addons/bones/*` - I've started pulling
some ideas and helpers into `src/*` for things that are not production ready or
otherwise don't work well across projects (like resources with random uids that
get reset per project by godot :eyeroll:)



