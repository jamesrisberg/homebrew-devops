# Homebrew Tap for devops

This is a Homebrew tap for [devops](https://github.com/jrisberg/devops) - a terminal-based Development Environment Topology Visualizer.

## Installation

```bash
brew tap jrisberg/devops
brew install devops
```

Or install directly:

```bash
brew install jrisberg/devops/devops
```

## Usage

```bash
devops
```

## What is devops?

A TUI (Terminal User Interface) for exploring and managing your development environment:

- **Shell Config**: View load order of .zshenv, .zprofile, .zshrc with aliases, functions, exports
- **PATH**: Visualize PATH search order and discover executables
- **Homebrew**: Manage formulae, casks, and outdated packages
- **Python**: Explore Conda, pyenv, virtualenv, and system Python installations
- **Node.js**: View nvm/fnm versions and global packages
- **Ruby**: Explore rbenv versions and gems
- **Rust**: View rustup toolchains and cargo crates
- **Symlinks**: Find and clean up broken symbolic links

## Updating

```bash
brew update
brew upgrade devops
```

## Uninstalling

```bash
brew uninstall devops
brew untap jrisberg/devops
```
