# Branchout Marketplace

LLM agent skill packages for the Branchout projected monorepo (manyrepo) manager. Installation varies by your choice of LLM.


## Available Packages

| Package | Description |
|---|---|
| `branchout-skills` | Workspace setup, CLI commands, naming conventions |


## Installation

Installation varies by LLM coding agent.

### Claude Code

Register this marketplace, then install the skills:

```bash
/plugin marketplace add Branchout/branchout-marketplace
/plugin install branchout-skills@branchout-marketplace
```

Or from the terminal:

```bash
claude plugin marketplace add Branchout/branchout-marketplace
claude plugin install branchout-skills@branchout-marketplace
```

### Cursor

In the Cursor IDE, go to **Dashboard > Settings > Plugins > Import** and paste:

```
https://github.com/Branchout/branchout-marketplace
```

Browse the imported marketplace and install `branchout-skills` from the plugin panel.

### Codex

Clone the skills repo and symlink it into the Codex skills directory:

```bash
git clone https://github.com/Branchout/branchout-skills.git ~/.codex/branchout-skills
mkdir -p ~/.agents/skills
ln -s ~/.codex/branchout-skills/skills ~/.agents/skills/branchout-skills
```

### Gemini CLI

Install the skills repo as an extension:

```
/extensions install https://github.com/Branchout/branchout-skills
```

Or from the terminal:

```bash
gemini extensions install https://github.com/Branchout/branchout-skills
```

### OpenCode

Add to the `plugin` array in your project's `opencode.json`:

```json
{
  "plugin": ["branchout-skills@git+https://github.com/Branchout/branchout-skills.git"]
}
```


## License

MIT
