# check1

## Make your GitHub dashboard green automatically

This repo now includes a GitHub Actions workflow that commits once per day.

### What was added

- `.github/workflows/daily-green.yml` — scheduled workflow (daily + manual trigger).
- `scripts/daily-commit.sh` — writes one UTC entry per day.
- `.github/green/daily-log.md` — tracked file updated by the workflow.

### How to use it

1. Create a new GitHub repository and push this project.
2. In the repo, open **Settings → Actions → General**.
3. Ensure Actions are enabled and workflow permissions allow **Read and write permissions**.
4. In **Actions**, run **Daily Green Contribution** once using **Run workflow** (bootstraps the first commit).
5. Wait for the daily schedule to run automatically.

### Notes

- The workflow is scheduled at `13:17 UTC` every day.
- It writes at most one entry per UTC date to avoid multiple same-day commits.
- Contribution squares are shown in your profile timezone; UTC scheduling can appear on adjacent dates depending on your local timezone.
