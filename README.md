# Neo-One Theme Suite

Matrix-green monochrome theme spanning Hermes Agent CLI, Ghostty terminal, and NvChad Neovim. Two variants — dark (pure black + phosphor green) and light (warm paper + dark phosphor) — both grounded in the same layered forest/olive palette.

## Palette

| Slot       | Dark         | Light        |
|------------|-------------|-------------|
| bg         | `#000000`   | `#f5f2e8`   |
| fg         | `#a8c989`   | `#2a3818`   |
| primary    | `#a8c989`   | `#3d4f2b`   |
| accent     | `#b8d49a`   | `#5a7142`   |
| muted      | `#3d4f2b`   | `#7a8a5f`   |
| danger     | `#5a4a2a`   | `#7a4a3a`   |

Full 16-color ANSI palettes are in the Ghostty theme files.

## Variants

| Variant          | Hermes              | Ghostty              | NvChad                |
|------------------|---------------------|----------------------|-----------------------|
| **neo-one-dark**  | `/skin neo-one-dark` | `neo-one-dark` theme  | `neo-one-dark` base46 |
| **neo-one-light** | `/skin neo-one-light`| `neo-one-light` theme | `neo-one-light` base46|

## Morpheus Personality

A conversational persona for Hermes Agent that channels Morpheus — the
mentor, the guide, the operator. Slow, deliberate, philosophical. Pairs with
the neo-one skin for the full Matrix experience.

```bash
# Install the personality in Hermes
# (already wired into the repo's personalities/morpheus.md — copy to config)

# Then activate:
/personality morpheus
```

The full prompt lives in [`personalities/morpheus.md`](personalities/morpheus.md).

## Installing

### Hermes Agent

```bash
cp skins/neo-one-dark.yaml ~/.hermes/skins/
cp skins/neo-one-light.yaml ~/.hermes/skins/
```

Then activate: `/skin neo-one-dark` (or set `display.skin: neo-one-dark` in `~/.hermes/config.yaml`).

### Ghostty

```bash
cp ghostty/neo-one-dark ~/.config/ghostty/themes/
cp ghostty/neo-one-light ~/.config/ghostty/themes/
```

Then set in `~/.config/ghostty/config`:
```
theme = dark:neo-one-dark,light:neo-one-light
```

### NvChad / Neovim

```bash
cp nvchad/neo-one-dark.lua ~/.config/nvim/lua/themes/
cp nvchad/neo-one-light.lua ~/.config/nvim/lua/themes/
```

Then `:Telescope themes` or add to your `chadrc.lua`:
```lua
M.ui = {
  theme = "neo-one-dark",
  -- theme_toggle = { "neo-one-dark", "neo-one-light" },
}
```

## Hero Art

Both variants share the same Matrix digital-rain motif — layered Unicode braille characters in a code-fall pattern. Dark variant uses bright phosphor greens against pure black; light variant inverts to dark phosphor greens on warm cream paper, preserving the same code-rain structure and atmospheric density.

Caption: **目覚めよ · マトリックス** (Wake up · Matrix)

## License

MIT
