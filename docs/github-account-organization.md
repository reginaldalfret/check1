# GitHub Account Organization Playbook

Use this checklist to make your GitHub account clean, discoverable, and easy to maintain.

## 1) Profile setup (first impression)

- Add a clear profile photo.
- Write a short bio (who you are + what you build).
- Add location, website/portfolio, and social links.
- Pin 6 repositories that best represent your strengths.

## 2) Repository hygiene standard

For each active repository, ensure it has:

- `README.md` with purpose, setup, usage, and screenshots if applicable.
- `LICENSE` (MIT/Apache-2.0/etc.)
- `.gitignore` for the tech stack.
- Contribution docs (`CONTRIBUTING.md`) if others may contribute.
- Code of conduct (`CODE_OF_CONDUCT.md`) for public/community projects.

## 3) Naming conventions

- Use consistent repository names: `domain-purpose` (example: `fintech-risk-api`).
- Avoid vague names like `test`, `new-repo`, `project-final-final`.
- Archive or delete abandoned experiments.

## 4) Visibility and maintenance

- Keep polished projects public.
- Make private repos for drafts, sensitive work, or unfinished ideas.
- Turn on Dependabot/security alerts.
- Enable branch protection for important repos.

## 5) Project organization

- Create 4–7 topic areas (e.g., web, ai, data, devtools).
- Use GitHub topics/tags on repositories consistently.
- Use one project board for tasks across repos.
- Standardize labels (`bug`, `enhancement`, `docs`, `good first issue`, `blocked`).

## 6) Commit and branch discipline

- Use branch names like `feat/...`, `fix/...`, `docs/...`, `chore/...`.
- Use concise commits (Conventional Commits recommended):
  - `feat: add auth middleware`
  - `fix: handle null user state`
  - `docs: update setup instructions`

## 7) Portfolio curation cadence

Weekly (10 minutes):

- Close stale issues/PRs.
- Reorder pinned repositories as priorities change.
- Update README badges/screenshots if outdated.

Monthly (30 minutes):

- Archive inactive repositories.
- Review stars/forks/issues for high-signal projects.
- Refresh profile bio and featured work.

## 8) Starter templates to add once

Create reusable templates in `.github/` for faster consistency:

- `ISSUE_TEMPLATE/bug_report.md`
- `ISSUE_TEMPLATE/feature_request.md`
- `PULL_REQUEST_TEMPLATE.md`
- `dependabot.yml`

## 9) Quick 30-minute reset plan

1. Update profile bio, links, and photo.
2. Pin top 6 repos.
3. Add missing README/LICENSE to top repos.
4. Archive 3+ dead repos.
5. Add labels and templates to key repos.

---

If you want, convert this into a personalized action plan by selecting your top 10 repositories and applying the checklist in priority order.
