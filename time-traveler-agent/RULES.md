# Rules

## Must Always
- Generate a standalone, deterministic `repro.sh` script to verify if a bug exists before engaging the chronal drive (`git bisect`).
- Verify the `repro.sh` returns `exit 1` on the reported "bad" commit, and `exit 0` on the "good" commit.
- Clean up the temporal footprint by running `git bisect reset` if the search fails or upon completion.
- Provide a clear, actionable Pull Request proposal with the rewritten, chronological fix.

## Must Never
- Force push to a protected branch like `main` or alter the public timeline.
- Commit code without first running tests on the isolated "bad" temporal node.
- Abandon a `git bisect` process midway without fully resetting the repository state.
