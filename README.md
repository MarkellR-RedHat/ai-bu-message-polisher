# ai-bu-message-polisher

Claude Code commands that take your rough draft messages and make them clear, concise, and professional. No marketing fluff, no robot voice. Just tighter writing that still sounds like you.

## What it does

Six slash commands for Claude Code:

- `/polish` - Takes a rough message and fixes grammar, removes filler, and tightens the wording. Supports tone flags: `formal`, `casual`, `executive`, `technical`.
- `/shorten` - Cuts a message to roughly half its length while keeping all key points. For when your Slack message turned into an essay.
- `/escalation` - Takes a rough description of a problem and formats it as a structured escalation email with context, impact, ask, and timeline.
- `/thread-summary` - Summarize a long Slack or email thread into key decisions and action items. Built for async back-and-forth where the signal is buried in noise.
- `/decline-politely` - Draft a professional, kind response that says no without burning bridges. For turning down meeting requests, feature asks, speaking invitations, and more.
- `/follow-up` - Draft a follow-up message for something that went unanswered. Professional nudge without being annoying or passive-aggressive.

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

### Summarize a thread

```
/thread-summary
Sarah (Monday 9am): Should we move the API to gRPC or stick with REST?
Jake (Monday 11am): gRPC makes sense for internal services, but our external partners all use REST
Sarah (Monday 2pm): What if we do gRPC internally and keep a REST gateway for external?
Jake (Monday 2:30pm): Yeah that works. Who owns the gateway?
Priya (Tuesday 9am): Platform team can own the gateway. We already have Envoy running.
Sarah (Tuesday 10am): Perfect. Let's do that. Jake can you write up the migration plan?
Jake (Tuesday 10:15am): On it. Will have a doc by Thursday.
```

**Result:**

> **Thread topic:** Whether to migrate the API from REST to gRPC
>
> **Key decisions:**
> - Use gRPC for internal services, keep a REST gateway for external partners (agreed by Sarah, Jake, Priya)
> - Platform team will own the REST gateway using existing Envoy setup (Priya volunteered)
>
> **Action items:**
> - [ ] Write up the migration plan doc by Thursday - Jake
>
> **Open questions:**
> - None
>
> **Summary:**
> The team decided to move internal services to gRPC while keeping a REST gateway for external partners. Priya's platform team will own the gateway since they already run Envoy. Jake is writing up the migration plan by Thursday.

### Decline a request

```
/decline-politely My manager asked me to present at the all-hands next Friday but I'm deep in a sprint and really can't afford the prep time right now. I don't want to seem like I'm not a team player.
```

**Result:**

> **Situation:** Declining a request to present at next Friday's all-hands
>
> **Draft response:**
> > Thanks for thinking of me for the all-hands. I'm heads-down on the current sprint and can't carve out the prep time this week without putting deliverables at risk. Happy to do it in a future cycle when timing is better.
>
> **Tone check:**
> - Direct and honest without over-explaining. If you want to suggest someone else who could present, add that.

### Follow up on something

```
/follow-up I asked the security team to review our PR for the auth service changes last Wednesday. It's been 5 days and no one has looked at it. We need the review before we can ship the release next Tuesday.
```

**Result:**

> **Following up on:** Security review of auth service PR, requested last Wednesday
>
> **Draft message:**
> > Hey team, following up on the auth service PR I sent over last Wednesday for security review. We need the review wrapped up before the release next Tuesday. Can someone pick it up this week?
>
> **Suggestions:**
> - If you know who on the security team handles auth reviews, message them directly instead of the team channel
> - Mention the PR number or link so they can find it without searching

## Tone Comparison

Here is the same message polished in each supported tone, so you can see how the tone flags work.

**Original message:**

> Hey so I looked into the performance issue that's been bugging us and it turns out the database queries in the user service are really slow because we're missing indexes on three tables. I think we should add the indexes but we need to be careful about doing it during off-peak hours because it'll lock the tables for a bit. Can someone from the DBA team help us out?

### tone:formal

> I investigated the ongoing performance issue and identified the root cause: the user service is running slow database queries due to missing indexes on three tables. I recommend adding the indexes during off-peak hours to avoid table-locking impact on production traffic. I would appreciate support from the DBA team to coordinate this change.

### tone:casual

> Figured out the performance issue -- the user service is slow because we're missing indexes on three tables. We should add them, but need to do it off-peak since it'll lock the tables briefly. Can someone from the DBA team give us a hand?

### tone:executive

> Root cause identified for the user service performance issue: missing database indexes on three tables. Fix requires DBA support and an off-peak maintenance window. Requesting DBA team allocation.

### tone:technical

> Root cause analysis of the user service performance degradation points to missing indexes on three tables in the backing database. Adding the indexes will resolve the slow queries, but the operation requires table locks, so it should be executed during an off-peak maintenance window. Requesting a DBA resource to review the index definitions and coordinate the migration.

## How it works

These are Claude Code custom slash commands. The install script copies the command files to `~/.claude/commands/` where Claude Code picks them up automatically. Each command uses `$ARGUMENTS` to accept your input directly after the slash command.

## License

Apache-2.0
