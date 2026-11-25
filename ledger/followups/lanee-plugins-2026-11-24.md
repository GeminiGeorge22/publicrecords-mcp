# Lane E, plugin and skill marketplaces, 2026-11-24 (America/Toronto)

Same rules: no paying, no Skool runs or Skool in new submissions, no X or Reddit, no duplicates, `[skip ci]`, author Public Records, respect CONTRIBUTING and no-bot/no-AI rules, never echo secrets.

Packaging shipped first on our repo: [publicrecords-skills#3](https://github.com/GeminiGeorge22/publicrecords-skills/pull/3) squash-merged at `d89e1ae183407397a5ddcec9fb0f128fba23c819` (`Add Cursor, OpenCode, Cline, Roo and Kilo packaging [skip ci]`). Added `.cursor/rules/publicrecords-apify.mdc`, `.cursor-plugin/plugin.json`, `docs/OPENCODE.md`, and `docs/CLINE-ROO-KILO.md`. Every install path tells the user to bring their own Apify token. The existing live ledger surface `publicrecords-skills (own repo: Agent Skills + manifests)` already covers this pack (including the older Skool skill already in the repo; new files do not add Skool).

Aim was 20+ new catalog PRs. After indexing open GeminiGeorge22 PRs, the ledger, and CONTRIBUTING, most obvious Claude / Codex / Gemini CLI / Cline / Kilo / Cursor / agent-skill catalogs already had a PR or were policy-blocked. Five new third-party PRs were legal to file.

## New submitted surfaces (5)

- [TheArchitectit/awesome-opencode-skills#8](https://github.com/TheArchitectit/awesome-opencode-skills/pull/8) — vendored `gov-tenders-and-grants/SKILL.md` and a Data & Analysis README bullet. Six gov Actors submitted; others not-listed. Default branch is `master`.
- [davepoon/buildwithclaude#848](https://github.com/davepoon/buildwithclaude/pull/848) — `plugins/all-skills/skills/gov-tenders-and-grants/SKILL.md` (allowed frontmatter only; category `research`; `npm test` passed). Six gov Actors submitted; others not-listed.
- [open-agent-craft/awesome-agent-skills#50](https://github.com/open-agent-craft/awesome-agent-skills/pull/50) — `data/skills.yml` Skill Collection (maturity `promising`) plus regenerated catalog (`npm run validate && npm run generate`). 17 non-Skool Actors submitted. Fork used: `GeminiGeorge22/awesome-agent-skills-10` because `GeminiGeorge22/awesome-agent-skills` is already a fork of kodustech/awesome-agent-skills.
- [ichangyou/awesome-codex#49](https://github.com/ichangyou/awesome-codex/pull/49) — one MCP Servers line in `README.md` and `README.zh-CN.md` (`(Paid)` tag; link checker 109/109). PR body answers CONTRIBUTING's "have you used this" question. 16 Actors named in the line submitted; calibration and Skool not-listed.
- [LMPrado-DZ23/awesome-agent-plugins#22](https://github.com/LMPrado-DZ23/awesome-agent-plugins/pull/22) — two portable YAML entries (skill-pack + mcp-server) and regenerated catalog (`npm ci && npm run build && npm test`). 17 non-Skool Actors submitted. MCP HTTP URL has no Skool tool. Secret placeholders only.

Attempted but not opened: fork+commit on `ccplugins/awesome-claude-code-plugins` (branch `add-publicrecords-plugin`, SHA 63b93a0 on `GeminiGeorge22/awesome-claude-code-plugins`). `pull_request_creation_policy=collaborators_only`, `has_pull_requests=false`, `has_issues=false`. Compare exists; no PR.

## Read and skipped (do not PR)

- Already had an open GeminiGeorge22 PR (do not duplicate): BehiSecc/awesome-claude-skills, Prat011, karanb192/awesome-claude-skills, Chat2AnyLLM, subinium (also 1,000+ star floor), agentskillexchange/skills#179, PatrickJS/awesome-cursorrules, Piebald-AI/awesome-gemini-cli#403, cline/marketplace#349, Kilo-Org/kilo-marketplace#612/#613, CognitionAI/devin-marketplace#258, and others already in the ledger or the open-PR index.
- Policy / process: hesreallyhim/awesome-claude-code (held; human issue form); anthropics official/community (PRs not the path / auto-closed); daymade/claude-code-skills (no new-skill PRs); ananddtyagi/cc-marketplace (auto-synced from a website form); flaqai lists (Submit-a-Skill issue, not a PR); awesome-opencode/awesome-opencode (25-star and 30-day floors; publicrecords-skills has 0 stars and was created 2026-11-23); tubeagentkit (Kilo-specific integration required).
- Own-catalog / not a third-party list: obra/superpowers-marketplace, Dev-GOM, foyzulkarim, danielrosehill, buildatscale-tv, weisser-dev, Heldinhow.
- Not filed this pass (strict review bar still open if we write a skill that meets it): trailofbits/skills-curated (full hook/script review); coreyhaines31/marketingskills (integrity rubric: multi-option skill and self-interest disclosure).
- Hugging Face MCP Space skipped earlier under no-paying (Pro plan required). No hidden AI-agent text was followed on these five catalogs.

No secrets were committed. Actions were left off. Author name Public Records.
