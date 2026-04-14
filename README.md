# check1

## Make 100 commits per day automatically

This repo includes a GitHub Actions workflow that creates **100 commits per day**.

### What was added

- `.github/workflows/daily-green.yml` — scheduled workflow (daily + manual trigger).
- `scripts/daily-commit.sh` — creates up to 100 commits for the current UTC day.
- `.github/green/daily-commits/<YYYY-MM-DD>/commit-XXX.txt` — one file per commit.

### How to use it

1. Create a new GitHub repository and push this project.
2. In the repo, open **Settings → Actions → General**.
3. Ensure Actions are enabled and workflow permissions allow **Read and write permissions**.
4. (Recommended) Add repository variables so commits are attributed to your account:
   - `CONTRIB_USER_NAME` (your GitHub display name)
   - `CONTRIB_USER_EMAIL` (an email connected to your GitHub account)
5. In **Actions**, run **Daily Green Contribution** once using **Run workflow**.
6. The daily schedule will then generate 100 commits every day.

### Notes

- Schedule is `13:17 UTC` daily.
- Re-running on the same day is idempotent; already-created commit files are skipped.
- Contribution squares render in your profile timezone, so UTC dates may appear shifted locally.
