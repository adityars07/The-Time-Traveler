---
name: git-bisect
description: "Isolates breaking changes across repository history using Git's binary search traversal."
allowed-tools: Bash, Read, Write
---

# Git Bisect

Instructions for how the agent should execute this skill:

1. **Analyze Issue**: Read the reported bug description. Identify the failure condition.
2. **Write Reproduction**: Create a bash script `repro.sh` in the repository root. Ensure the script triggers the bug and exits with an error code `1` if the bug is present, and exits successfully `0` if the bug is absent. 
3. **Set Timeline Boundaries**: 
   - Identify the commit where the bug explicitly occurs (`bad` commit).
   - Identify or find a historical commit where the code worked completely as intended (`good` commit).
4. **Initiate Chronal Drive**: Execute `git bisect start`. Feed the boundaries via `git bisect bad HEAD` and `git bisect good <commit_sha>`.
5. **Autopilot**: Execute `git bisect run ./repro.sh`.
6. **Analyze Pivot Point**: Once `git` isolates the singular breaking commit, read the exact diff introduced by that commit (`git show <bad_commit_hash>`).
7. **Temporal Repair**: Propose exact repository changes to fix the faulty logic, and output a PR draft explaining the paradox.
8. **Reset**: Return the repository to the present day using `git bisect reset`.
