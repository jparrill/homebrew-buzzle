# Homebrew Tap for Buzzle

Homebrew Cask tap for [Buzzle](https://github.com/jparrill/buzzle) — a lightweight macOS menu bar app that keeps your cursor buzzing.

## Install

```bash
brew tap jparrill/buzzle
brew install --cask buzzle
```

## Upgrade

```bash
brew update
brew upgrade buzzle
```

## Uninstall

```bash
brew uninstall buzzle
brew untap jparrill/buzzle
```

## Troubleshooting

### "Buzzle.app is damaged and can't be opened"

This happens because the app is self-signed. Remove the quarantine flag:

```bash
xattr -cr /Applications/Buzzle.app
```

### Brew shows old version after a new release

Force a tap update:

```bash
brew update --force
brew upgrade buzzle
```

## About

This tap is automatically updated by the Buzzle release pipeline. Each `TAG=X.Y.Z make release` in the main repo pushes a new version and sha256 to this tap.

See the [main repository](https://github.com/jparrill/buzzle) for source code, issues, and documentation.
