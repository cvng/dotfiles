# dotfiles

**Pull settings**:

```bash
gh repo clone cvng/dotfiles
```

**Push settings**:

```bash
dot add <pathspec> && dot commit --amend --no-edit && dot push --force
```

**Save dependencies**:

```bash
brew bundle dump --force
```

**Install dependencies**:

```bash
brew bundle cleanup --force
```
