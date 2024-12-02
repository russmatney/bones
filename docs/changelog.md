# CHANGELOG


## Untagged


## 


### 2 Dec 2024

- ([`b2ee38e`](https://github.com/russmatney/bones/commit/b2ee38e)) feat: add Util._disconnect(sig, callable) - Russell Matney

  > To avoid warnings when the callable is not connected (nil-punning)


### 3 Nov 2024

- ([`ebe600b`](https://github.com/russmatney/bones/commit/ebe600b)) feat: Navi remove menu defaults, provide global helpers - Russell Matney

  > is_paused, quit_game are nice for supporting some menus/dashboards.
  > 
  > Also supports Callable labels in NaviButtonLists

- ([`138005b`](https://github.com/russmatney/bones/commit/138005b)) feat: Machine.restart() support - Russell Matney

  > An easy way to restart a Machine, if needed. Useful when, e.g.
  > resurrecting a player.

- ([`090a3cd`](https://github.com/russmatney/bones/commit/090a3cd)) chore: reptile TileMapLayer update - Russell Matney

### 31 Oct 2024

- ([`286d708`](https://github.com/russmatney/bones/commit/286d708)) docs: a better plugin description - Russell Matney

### 29 Oct 2024

- ([`3a64003`](https://github.com/russmatney/bones/commit/3a64003)) fix: supporting more Trolls and a safer action input - Russell Matney
- ([`b2f1134`](https://github.com/russmatney/bones/commit/b2f1134)) fix: util nested lookup fix - Russell Matney
- ([`b53d89e`](https://github.com/russmatney/bones/commit/b53d89e)) feat: simpler navi impl - no longer keeping the root scene - Russell Matney
- ([`d9c9536`](https://github.com/russmatney/bones/commit/d9c9536)) chore: punt lights from bones/assets/* - Russell Matney

  > More bones minimization + clean up. Assets are really noisy. I've left a
  > couple starter cc0 fonts, but otherwise lights and other assets/tilemaps
  > can be pulled from bones/{assets/src} if desired.

- ([`362dd53`](https://github.com/russmatney/bones/commit/362dd53)) refactor: minimize DJ addon - Russell Matney

  > Similar to the reptile work - we move the messier DJ bits into src/dj
  > and lift the remaining scripts into addons/bones/.

- ([`477d642`](https://github.com/russmatney/bones/commit/477d642)) chore: drop non-free fonts - Russell Matney

  > These vexed fonts are great but not to be included in an addon so
  > wily-nily like this.

- ([`2aa4bff`](https://github.com/russmatney/bones/commit/2aa4bff)) refactor: gut Reptile - Russell Matney

  > Keeps the Reptile static helper in bones, but drops most of the
  > tilemaps.
  > 
  > What remains: a few starter tilemap templates and prototyping maps, plus
  > some mapgen experiments from the Tower Jet build in Jan 2023.

- ([`bfc1026`](https://github.com/russmatney/bones/commit/bfc1026)) wip: trimming reptile down - Russell Matney

  > Grouping the old mapgen experiment.


### 12 Oct 2024

- ([`7306253`](https://github.com/russmatney/bones/commit/7306253)) fix: cover machine transit race case crash - Russell Matney
- ([`c30fc91`](https://github.com/russmatney/bones/commit/c30fc91)) chore: include DJ as an autoload - Russell Matney

  > Probably want to dry up the state and exposed api into a single Bones
  > autoload. That would also be a good place to expose signals.

- ([`c8ba0c4`](https://github.com/russmatney/bones/commit/c8ba0c4)) fix: handle error thrown at @tool time - Russell Matney
- ([`692dd42`](https://github.com/russmatney/bones/commit/692dd42)) chore: add juice as autoload - Russell Matney
- ([`3fcebaf`](https://github.com/russmatney/bones/commit/3fcebaf)) fix: drop global Sounds usage - Russell Matney
- ([`9d1726a`](https://github.com/russmatney/bones/commit/9d1726a)) fix: plugin name, dropping deps from util, navi - Russell Matney
- ([`29ba4e4`](https://github.com/russmatney/bones/commit/29ba4e4)) fix: update core -> bones dep paths - Russell Matney
- ([`9d38f27`](https://github.com/russmatney/bones/commit/9d38f27)) chore: move core -> bones - Russell Matney

  > Getting a namespace going here


### 11 Aug 2024

- ([`14d8861`](https://github.com/russmatney/bones/commit/14d8861)) feat: set custom icon for Machine, State - Russell Matney

  > Now we're talking! Though they're a little small on my mac.

- ([`dcdbfb3`](https://github.com/russmatney/bones/commit/dcdbfb3)) chore: basic test scene, enable addons - Russell Matney
- ([`7785a3b`](https://github.com/russmatney/bones/commit/7785a3b)) assets: copy in kenny-input-prompts - Russell Matney
- ([`184da84`](https://github.com/russmatney/bones/commit/184da84)) feat: copy in IconGodotNode icons - thanks pixel-boy! - Russell Matney

  > CC0 from https://pixel-boy.itch.io/icon-godot-node

- ([`876dc8f`](https://github.com/russmatney/bones/commit/876dc8f)) feat: add 'core' from terrorware version - Russell Matney

  > These will soon be pulled over into Bones, but not without thought and testing.

- ([`cf6e0b4`](https://github.com/russmatney/bones/commit/cf6e0b4)) addons: asepriteWizard, gdfxr, input_helper, sound_manager, log.gd, text_effects - Russell Matney

  > Vendor some core deps.

- ([`7cb70f8`](https://github.com/russmatney/bones/commit/7cb70f8)) bb: pull in bb/ and bb.edn - Russell Matney

  > Useful to at least have around.

- ([`fbd7eaa`](https://github.com/russmatney/bones/commit/fbd7eaa)) chore: init godot project - Russell Matney