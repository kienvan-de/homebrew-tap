# homebrew-tap

My personal Homebrew tap for distributing macOS and Linux apps.

## Setup

```bash
brew tap kienvan-de/tap
```

---

## Apps

### zig-zag

⚡ Blazing-fast LLM proxy with OpenAI-compatible API — written in Zig.

**Install CLI:**

```bash
brew install kienvan-de/tap/zig-zag
```

**Install macOS App (menu bar):**

```bash
brew install --cask kienvan-de/tap/zig-zag
```

> **Note:** The macOS app is ad-hoc signed. If Gatekeeper blocks it on first launch, run:
> ```bash
> xattr -dr com.apple.quarantine /Applications/zig-zag.app
> ```

**Uninstall:**

```bash
# CLI
brew uninstall zig-zag

# macOS App (also removes config files)
brew uninstall --cask zig-zag
```

---

## Source

- [kienvan-de/zig-zag](https://github.com/kienvan-de/zig-zag)
