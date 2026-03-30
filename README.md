# ⏳ The Time Traveler 

**A native `gitagent` that autonomously rewrites history.** 

The Time Traveler is an AI agent built on the [gitagent](https://github.com/open-gitagent/gitclaw) open standard. It acts as an automated chronomancer, leaping through your repository's timeline using `git bisect`. When an issue is reported, it writes a reproduction script, identifies the exact commit that fractured the code, roasts the paradox introduced by the human developer, and opens a Pull Request repairing the timeline.

---

## 🏗️ Architecture

This repository conforms perfectly to the `gitagent` standard. The agent's identity, logic, and rules are natively defined:

```text
time-traveler-agent/
│
├── agent.yaml            # Manifest: specifies model and assigns the git-bisect skill
├── SOUL.md               # Identity: the chronomancer persona 
├── RULES.md              # Constraints: ensures it cleans up bisect sequences safely
└── skills/
    └── git-bisect/
        └── SKILL.md      # Capability: The brain containing git-bisect bash commands
```

## 🚀 Setup & Usage 

The agent is designed to run via **gitclaw** and can be deployed serverlessly via **clawless**.

### Validation

```bash
# Validate the agent schema
npx gitagent validate

# View agent information
npx gitagent info
```

### Execution
The Time Traveler interacts autonomously with your repository. Simply install the dependencies:
```bash
npm install
```

---
*Built with ❤️ for the gitagent Hackathon.*
