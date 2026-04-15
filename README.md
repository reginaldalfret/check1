# check1

## Make 100 commits per day automatically

This repo includes a GitHub Actions workflow that creates **up to 100 commits per day** on your repository's **default branch**.

### Files

- `.github/workflows/daily-green.yml` — scheduled workflow (daily + manual trigger with commit count input).
- `scripts/daily-commit.sh` — creates per-day commits for the current UTC date.
- `.github/green/daily-commits/<YYYY-MM-DD>/commit-XXX.txt` — one file per commit.

### Setup (important)

1. Create a GitHub repository and push this project.
2. Go to **Settings → Actions → General**:
   - Enable Actions.
   - Set Workflow permissions to **Read and write permissions**.
3. (Recommended) Add repository variables in **Settings → Secrets and variables → Actions → Variables**:
   - `CONTRIB_USER_NAME` = your GitHub name
   - `CONTRIB_USER_EMAIL` = an email linked to your GitHub account
4. Run **Actions → Daily Green Contribution → Run workflow** once.
5. Confirm the run pushed commits to your repo default branch.

### Why it may appear “not green”

If commits are being created but your profile graph is still dark, check these:

- Commits are authored with an email linked to your GitHub account.
- Commits are on the repository default branch (or `gh-pages`).
- If the repo is private, enable **Include private contributions** in profile settings.
- Give GitHub some time to refresh contribution tiles.

### Notes

- Schedule is `13:17 UTC` daily.
- Re-running on the same UTC day is idempotent (existing commit files are skipped).
- You can change manual run count with `commit_count` input in the Actions UI.
