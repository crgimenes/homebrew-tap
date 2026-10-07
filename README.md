# crgimenes' Homebrew tap

Casks and formulas for my apps. Add the tap once:

```bash
brew tap crgimenes/tap
```

## Apps

### kutta — 2D wind tunnel

A qualitative 2D wind tunnel with an airfoil editor, for aeromodelers and the
aerodynamically curious. Signed and notarized universal build (Intel and Apple
Silicon).

```bash
brew install --cask crgimenes/tap/kutta
```

Source: <https://github.com/crgimenes/kutta>

### fosforo — terminal emulator

A terminal with a Metal renderer, configured in Filo. Signed and notarized
universal build (Apple silicon and Intel), macOS 14 or later.

```bash
brew install --cask crgimenes/tap/fosforo
```

Source: <https://github.com/crgimenes/fosforo>

## Command-line tools

Terminal programs written in [Filo](https://github.com/crgimenes/filo):
signed universal binaries for macOS, static ones for Linux (amd64 and arm64).

### edt — text and hex editor

```bash
brew install crgimenes/tap/edt
```

Source: <https://github.com/crgimenes/edt>

### corewar — Core War on a terminal

A pMARS-compatible MARS, an arena to watch warriors fight, and a picker;
`corewar -b` plays a match with no screen, as pMARS does.

```bash
brew install crgimenes/tap/corewar
```

Source: <https://github.com/crgimenes/corewar>

### filo — the Filo language

The interpreter and compiler of the language (Go): `filo` runs, builds and
inspects Filo programs, with files, the streams and HTTP for its own runs;
`filofmt` and `filofix` format and modernize source.

```bash
brew install crgimenes/tap/filo
```

Source: <https://github.com/crgimenes/filo>

### clang-filo — the Filo language, the light C runtime

The same bytecode from the C runtime, made to embed and for small systems:
`clang-filo` builds, runs, formats and inspects, without the Go one's REPL,
debugger or I/O.

```bash
brew install crgimenes/tap/clang-filo
```

Source: <https://github.com/crgimenes/clang_filo>

### rocchetto — a shell whose utilities are Filo programs

A POSIX-style shell with its own utilities written in Filo, the same shell a
BBS and the fosforo app on iOS carry.

```bash
brew install crgimenes/tap/rocchetto
```

Source: <https://github.com/crgimenes/rocchetto>

### filo-games — games and demos

`filo-donut`, `filo-snake`, `filo-down` and `filo-fire`.

```bash
brew install crgimenes/tap/filo-games
```

Source: <https://github.com/crgimenes/filo-games>
