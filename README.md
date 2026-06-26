# ai-bu-message-polisher

Claude Code commands that take your rough draft messages and make them clear, concise, and professional. No marketing fluff, no robot voice. Just tighter writing that still sounds like you.

## What it does

Three slash commands for Claude Code:

- `/polish` - Takes a rough message and fixes grammar, removes filler, and tightens the wording. Supports tone flags: `formal`, `casual`, `executive`, `technical`.
- `/shorten` - Cuts a message to roughly half its length while keeping all key points. For when your Slack message turned into an essay.
- `/escalation` - Takes a rough description of a problem and formats it as a structured escalation email with context, impact, ask, and timeline.

## Install

```bash
git clone https://github.com/MarkellR-RedHat/ai-bu-message-polisher.git
cd ai-bu-message-polisher
bash install.sh
```

Then restart Claude Code.

## Usage

### Polish a message

```
/polish Hey team, so I wanted to give you all an update on where things are at with the migration. Basically we're like 80% done but there's some blockers that are kind of slowing things down. I think we should probably meet about it.
```

**Result:**

> Team, quick update on the migration: we're 80% done but hitting some blockers. Let's meet to discuss.

### Polish with a tone flag

```
/polish tone:executive We've been working on the Kubernetes migration for about three weeks now. The team has made good progress, completing roughly 80% of the workloads. However, we've hit some blockers around storage provisioning that are slowing the remaining work. We need a decision on whether to proceed with the current storage vendor or evaluate alternatives.
```

**Result:**

> The Kubernetes migration is 80% complete after three weeks. Storage provisioning blockers are holding up the remaining 20%. Decision needed: continue with the current storage vendor or evaluate alternatives.

### Shorten a message

```
/shorten I wanted to reach out and let everyone know that after careful consideration and several rounds of testing, we have decided to go ahead and move forward with the new CI/CD pipeline that the platform team has been building over the past few months. We think this will really help improve our deployment velocity and reduce the number of incidents we see related to manual deployment steps. The rollout will happen in phases starting next Monday.
```

**Result:**

> We're moving forward with the platform team's new CI/CD pipeline. It should improve deployment velocity and reduce incidents from manual steps. Phased rollout starts Monday.

### Format an escalation

```
/escalation Customer ACME Corp's production cluster has been experiencing intermittent outages for the past 3 days. Support ticket 12345 was opened on Monday but hasn't been assigned. The customer's contract renewal is in 2 weeks and they're threatening to leave. We need an engineer assigned today.
```

**Result:**

> **Subject:** Urgent: ACME Corp production outages unresolved for 3 days, renewal at risk
>
> **Context:** ACME Corp has experienced intermittent production cluster outages since Monday. Support ticket #12345 was opened but remains unassigned after 3 days.
>
> **Impact:** Customer production workloads are affected. Their contract renewal is in 2 weeks and they are evaluating alternatives.
>
> **Ask:** Assign a support engineer to ticket #12345 today.
>
> **Timeline:** Same-day assignment needed. Renewal discussion starts in 2 weeks.

## How it works

These are Claude Code custom slash commands. The install script copies the command files to `~/.claude/commands/` where Claude Code picks them up automatically. Each command uses `$ARGUMENTS` to accept your input directly after the slash command.

## License

Apache-2.0
