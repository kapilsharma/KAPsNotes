# Home brew

Home brew is a dependency (software) management tool for Mac OS X.

## Installation

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## Cheat sheet

- To check installed brew version: `brew --version`
- To update brew: `brew update`
- List of tools (formulas) installed through brew: `brew list`.

> Brew calls installable programs as 'Formulas'

- To search a formula (program): `brew search <formula>`
    - Example: `brew search php71` will search all available PHP 7.1 packages
- To install formula: `brew install formula`.
    - Example: `brew install php71`
- To uninstall formula: `brew uninstall formula`
