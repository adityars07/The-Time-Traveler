# ⏳ The Time Traveler 

**A native `gitagent` that autonomously rewrites history.** 

The Time Traveler is an AI agent built on the [gitagent](https://github.com/open-gitagent/gitclaw) open standard. It acts as an automated chronomancer, leaping through your repository's timeline using `git bisect`. 

When an issue is reported, it writes a reproduction script, identifies the exact commit that fractured the code, roasts the paradox introduced by the human developer, and opens a Pull Request repairing the timeline.

## 🧠 How It Works

The Time Traveler automates one of the most tedious debugging processes: finding out *exactly* when a bug was introduced.

1. **Reproduction:** Given a bug report (e.g., "Login route throws 500 error"), the agent writes a deterministic validation script (`repro.sh`) to test the issue.
2. **Temporal Displacement:** It triggers `git bisect start`, specifying the current broken state and a known working state in the past.
3. **Automated Traversal:** It runs `git bisect run ./repro.sh`, traversing the Git timeline until the exact commit that introduced the bug is isolated.
4. **Resolution:** It identifies the author of the breaking commit, points out the temporal paradox they created, and formulates a Pull Request to fix it.
5. **Clean Up:** It runs `git bisect reset` to safely return you to the present day.

---

## 🏗️ Architecture & Configuration

This repository strictly conforms to the `gitagent` standard. The agent's identity, logic, and rules are natively defined inside the directory:

```text
time-traveler-agent/
│
├── agent.yaml            # Manifest: specifies model (Claude 3.5 Sonnet) & assigns the git-bisect skill
├── SOUL.md               # Identity: the dramatic, precise chronomancer persona
├── RULES.md              # Constraints: ensures it cleans up bisect sequences safely & never force-pushes main
└── skills/
    └── git-bisect/
        └── SKILL.md      # Capability: The brain containing git-bisect bash commands
```

## 🖥️ Running the Demo

Because true autonomous multi-step git operations can be complex to demonstrate quickly in a hackathon setting, we have provided a full simulation script. The demo visually demonstrates the agent booting up, reading its persona, and successfully completing a `git bisect` automated flow.

Run the simulation:
```bash
node demo-agent.js
```

## 🚀 Setup & Validation 

The agent is designed to run via **gitclaw** and can be deployed serverlessly via **clawless**.

### Installation
```bash
npm install
```

### Validation
Ensure the agent architecture conforms to standard:
```bash
npx gitagent validate
npx gitagent info
```

---
*Built with ❤️ for the gitagent Hackathon.*
