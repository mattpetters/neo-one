# Neo-One Handoff Guide

How to get every surface in your stack singing the same matrix-green tune.

## What Ships

| File | Surface | Installed To |
|------|---------|-------------|
| `skins/neo-one-dark.yaml` | Hermes CLI | `~/.hermes/skins/` |
| `skins/neo-one-light.yaml` | Hermes CLI | `~/.hermes/skins/` |
| `ghostty/neo-one-dark` | Ghostty terminal | `~/.config/ghostty/themes/` |
| `ghostty/neo-one-light` | Ghostty terminal | `~/.config/ghostty/themes/` |
| `nvchad/neo-one-dark.lua` | NvChad / Neovim | `~/.config/nvim/lua/themes/` |
| `nvchad/neo-one-light.lua` | NvChad / Neovim | `~/.config/nvim/lua/themes/` |
| `pi-agent/neo-one-dark.json` | Pi Coding Agent | `~/.pi/agent/themes/` |
| `pi-agent/neo-one-light.json` | Pi Coding Agent | `~/.pi/agent/themes/` |

## Apps That Inherit For Free

These run inside Ghostty/cmux terminals and pick up the neo-one palette automatically — no extra config:

- **Claude Code** — inherits Ghostty ANSI palette
- **Codex CLI** — inherits Ghostty ANSI palette
- **CMux** — built on libghostty, inherits Ghostty theme
- **Any TUI** (htop, lazygit, btop, etc.) — all use terminal ANSI colors

## Activating Each Surface

### Hermes Agent

```bash
# In a Hermes session:
/skin neo-one-dark

# Or set as default in ~/.hermes/config.yaml:
# display:
#   skin: neo-one-dark
```

### Ghostty

In `~/.config/ghostty/config`:
```
theme = dark:neo-one-dark,light:neo-one-light
```

Then reload Ghostty (Cmd+Shift+, → Reload).

### CMux

No extra config — cmux terminals inherit Ghostty's theme. To also match the cmux chrome (workspace tab colors, sidebar tint) to the neo-one palette, add to `~/.config/cmux/cmux.json`:

```json
{
  "workspaceColors": {
    "colors": {
      "Neo One": "#5a7142"
    }
  },
  "sidebarAppearance": {
    "darkModeTintColor": "#0a0f06"
  }
}
```

Then: `cmux reload-config`

### NvChad / Neovim

```lua
-- In ~/.config/nvim/lua/chadrc.lua:
M.ui = {
  theme = "neo-one-dark",
  theme_toggle = { "neo-one-dark", "neo-one-light" },
}
```

Or use `:Telescope themes` and pick interactively.

### Pi Agent

```
/theme neo-one-dark
```

Themes are in `~/.pi/agent/themes/`. Pi auto-discovers them.

## Toggling Dark ↔ Light

| Surface | Command |
|---------|---------|
| Hermes | `/skin neo-one-light` |
| Ghostty | Auto-switches with macOS appearance (if `theme = dark:...,light:...`) |
| CMux | Inherits Ghostty auto-switch |
| NvChad | `:Telescope themes` or `M.ui.theme_toggle` |
| Pi Agent | `/theme neo-one-light` |

## Palette Reference

```
  bg         #000000 (dark) / #f5f2e8 (light)
  fg         #a8c989 (dark) / #2a3818 (light)
  primary    #a8c989 (dark) / #3d4f2b (light)
  accent     #b8d49a (dark) / #5a7142 (light)
  muted      #3d4f2b (dark) / #7a8a5f (light)
  danger     #5a4a2a (dark) / #7a4a3a (light)
```

Full 16-color ANSI palettes in the Ghostty theme files.

## Validation

```bash
# Hermes skins parse correctly
python3 -c "import yaml; [yaml.safe_load(open(f)) for f in ['skins/neo-one-dark.yaml', 'skins/neo-one-light.yaml']]"

# Pi themes have all 51 tokens
python3 -c "
import json
required = ['accent','border','borderAccent','borderMuted','success','error','warning','muted','dim','text','thinkingText','selectedBg','userMessageBg','userMessageText','customMessageBg','customMessageText','customMessageLabel','toolPendingBg','toolSuccessBg','toolErrorBg','toolTitle','toolOutput','mdHeading','mdLink','mdLinkUrl','mdCode','mdCodeBlock','mdCodeBlockBorder','mdQuote','mdQuoteBorder','mdHr','mdListBullet','toolDiffAdded','toolDiffRemoved','toolDiffContext','syntaxComment','syntaxKeyword','syntaxFunction','syntaxVariable','syntaxString','syntaxNumber','syntaxType','syntaxOperator','syntaxPunctuation','thinkingOff','thinkingMinimal','thinkingLow','thinkingMedium','thinkingHigh','thinkingXhigh','bashMode']
for fn in ['pi-agent/neo-one-dark.json', 'pi-agent/neo-one-light.json']:
    d = json.load(open(fn))
    missing = [k for k in required if k not in d['colors']]
    assert not missing, f'{fn}: missing {missing}'
    print(f'{fn}: {len(d[\"colors\"])}/51 tokens OK')
"

# NvChad themes load in Lua
# Open nvim, :lua require('base46').load_theme('neo-one-dark')

# Ghostty themes are plain config — no syntax to validate beyond key=value
```

## Known Quirks

- **CMux** doesn't have its own terminal theme config — it reads Ghostty's. Set the Ghostty theme and cmux surfaces follow.
- **GH_HOST** on Matt's machines points to `github.intuit.com`. Push to public GitHub with `GH_HOST=github.com git push`.
- **Pi theme dir** may need manual creation: `mkdir -p ~/.pi/agent/themes/`
- **NvChad** hot-reloads themes; no restart needed.
