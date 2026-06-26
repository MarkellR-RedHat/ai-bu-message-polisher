# ai-bu-message-polisher

Claude Code slash commands for workplace communication. Polish messages, decode subtext, deliver bad news, shorten essays into bullets, and shift tone on demand.

No corporate fluff. No robot voice. Just tighter writing that still sounds like you.

## What it does

Ten slash commands, organized by what you need:

### Core

- `/polish` -- Take a rough message and make it land. Supports tone flags: `casual`, `formal`, `executive`, `urgent`, `technical`.
- `/shorten` -- Ruthlessly cut a message by 50%+ while keeping every decision, deadline, and action item.
- `/tone-shift` -- Rewrite a message in a completely different tone: assertive, diplomatic, casual, executive, empathetic, or technical. Shows side-by-side annotations of every change.

### Respond

- `/read-the-room` -- Paste a message someone sent you. Get back: what they actually mean, what they want from you, how urgent it really is, and 2-3 response options at different levels of directness.
- `/decline-politely` -- Draft a professional decline that actually says no. No hedging, no "unfortunately," no fake alternatives.
- `/follow-up` -- Write a follow-up for something that went unanswered. Direct and easy to respond to, never passive-aggressive.
- `/bad-news` -- Craft a message delivering bad news using the BIFF framework. Get three versions (soft landing, straight shooter, band-aid rip) so you can pick your level.

### Structure

- `/escalation` -- Take a rough description of a problem and format it as a structured escalation email that gets action.
- `/thread-summary` -- Summarize a long Slack or email thread into decisions, action items, and open questions.
- `/cross-cultural` -- Adapt a message for a different communication culture or region. Adjusts directness, formality, context-setting, and flags what might land wrong.

### Reference

- `reference/communication-frameworks.md` -- Working guide to BLUF, SCQA, Minto Pyramid, and BIFF with bad-to-good rewrites for each.

## Install

```bash
git clone https://github.com/MarkellR-RedHat/ai-bu-message-polisher.git
cd ai-bu-message-polisher
bash install.sh
```

Then restart Claude Code.

## Usage

### Read the room

Someone sends you a message and you're not sure what they really want. Paste it into `/read-the-room`.

```
/read-the-room Hey, wanted to check in on the API integration timeline. The product team has been asking me about it and I told them I'd get back to them by EOD. No rush on your end, just want to make sure we're aligned on next steps.
```

**Result:**

> **What They Said:**
> Checking in on the API integration timeline, product team is asking, wants to align on next steps.
>
> **What They Actually Mean:**
> This is not a casual check-in. "Product team has been asking me" means they're getting pressure from above. "I told them I'd get back to them by EOD" means they need your answer today, not eventually. "No rush on your end" directly contradicts the EOD deadline they just mentioned -- they're softening a real ask.
>
> **What They Want From You:**
> A concrete timeline they can relay to the product team today. Not "we're working on it" -- an actual date or milestone.
>
> **Urgency Check:**
> - Real urgency: High -- they have an EOD commitment to someone else.
> - Performed urgency: Calm -- "no rush" language is deliberately understated.
> - Gap: They're downplaying urgency to avoid seeming pushy, but this needs a same-day response.
>
> **Option 1 -- Diplomatic:**
> > We're targeting end of next week for the initial integration. I'll put together a quick status update you can forward to the product team -- give me an hour.
>
> **Option 2 -- Direct:**
> > API integration is on track for July 3. Here's where we stand: [status]. That should give you what you need for the product team.
>
> **Option 3 -- Very Direct:**
> > Sounds like you need a timeline you can commit to externally. The honest answer is July 3, assuming no blockers on the auth piece. If that doesn't work for the product team, let's talk about what can be descoped.

### Polish a message

```
/polish Hey team, so I wanted to give you all an update on where things are at with the migration. Basically we're like 80% done but there's some blockers that are kind of slowing things down. I think we should probably meet about it.
```

**Result:**

> **Original:**
> Hey team, so I wanted to give you all an update on where things are at with the migration. Basically we're like 80% done but there's some blockers that are kind of slowing things down. I think we should probably meet about it.
>
> **Polished:**
> Team, quick update on the migration: we're 80% done but hitting some blockers. Let's meet to discuss.
>
> **What changed:**
> - Cut throat-clearing ("so I wanted to give you all an update on where things are at")
> - Removed hedge language ("like," "kind of," "probably")
> - Turned suggestion into action ("I think we should probably meet" to "Let's meet")

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

> **Original** (word count: 68):
> I wanted to reach out and let everyone know that after careful consideration and several rounds of testing, we have decided to go ahead and move forward with the new CI/CD pipeline...
>
> **Shortened** (word count: 27, reduced by 60%):
> We're moving forward with the platform team's new CI/CD pipeline. It should improve deployment velocity and cut manual deployment incidents. Phased rollout starts Monday.

### Deliver bad news

```
/bad-news We promised the client a demo on Friday but the feature isn't ready. We need at least two more weeks. The client is the VP of Engineering at one of our biggest accounts.
```

**Result:**

> **Version 1 -- Soft Landing:**
> Hi [Name], I want to give you a heads-up about Friday's demo. We've made solid progress on the feature, but it's not where it needs to be for a live demo yet. Rather than show something half-baked, I'd like to push to July 11 so we can give you the full picture. I'll send over a short progress update this week so you can see where things stand. Does the 11th work for your calendar?
>
> **Version 2 -- Straight Shooter:**
> Hi [Name], the feature we planned to demo Friday needs two more weeks. We'll be ready for a full demo on July 11. I'll send a written progress update this week to keep you in the loop. Let me know if the 11th works or if you'd prefer a different date.
>
> **Version 3 -- Band-Aid Rip:**
> Hi [Name], Friday's demo is moving to July 11. The feature needs two more weeks. I'll send a status update this week. Let me know if the 11th works.

### Shift tone

```
/tone-shift make this assertive: I was wondering if maybe we could look into updating the documentation? I think some of the getting-started guides might be a little outdated and it could potentially cause confusion for new users.
```

**Result:**

> **Current tone:** Tentative, heavily hedged. Multiple uncertainty markers ("wondering if maybe," "I think," "might be," "a little," "could potentially").
>
> **Target tone:** Assertive
>
> **Original:**
> I was wondering if maybe we could look into updating the documentation? I think some of the getting-started guides might be a little outdated and it could potentially cause confusion for new users.
>
> **Rewritten:**
> The getting-started guides are outdated and they're confusing new users. We need to update them.
>
> **Change annotations:**
> - Changed "I was wondering if maybe we could look into" to "We need to" -- assertive tone states actions as conclusions, not tentative suggestions
> - Changed "might be a little outdated" to "are outdated" -- removed hedge stack. If the author thinks they're outdated, say so.
> - Changed "could potentially cause confusion" to "they're confusing new users" -- the passive potential became an active present-tense statement

### Escalation email

```
/escalation Customer ACME Corp's production cluster has been experiencing intermittent outages for the past 3 days. Support ticket 12345 was opened on Monday but hasn't been assigned. The customer's contract renewal is in 2 weeks and they're threatening to leave. We need an engineer assigned today.
```

**Result:**

> **Subject:** ACME Corp production outages unresolved 3 days, renewal at risk -- need engineer assigned today
>
> **Context:** ACME Corp has experienced intermittent production cluster outages since Monday. Support ticket #12345 was opened at that time but remains unassigned.
>
> **Impact:** Customer production workloads are affected. Their contract renewal is in 2 weeks and they are evaluating alternatives.
>
> **Ask:** Assign a support engineer to ticket #12345 today.
>
> **Timeline:** Same-day assignment needed. Renewal conversation starts in 2 weeks.

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
> - Use gRPC for internal services, keep a REST gateway for external partners (Sarah proposed, Jake and Priya confirmed)
> - Platform team owns the REST gateway using existing Envoy setup (Priya volunteered)
>
> **Action items:**
> - [ ] Write up the migration plan doc -- Jake -- by Thursday
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
> Thanks for thinking of me for the all-hands. I'm heads-down in the current sprint and can't carve out the prep time this week without putting deliverables at risk. Happy to present in a future cycle when timing is better.
>
> **Self-critique notes:**
> - Clarity: yes, this is an unambiguous no
> - Tone: casual-professional, matches the input's register
> - Length: 3 sentences, appropriate
> - Alternative: offered (future cycle), and it's genuine

### Follow up on something

```
/follow-up I asked the security team to review our PR for the auth service changes last Wednesday. It's been 5 days and no one has looked at it. We need the review before we can ship the release next Tuesday.
```

**Result:**

> **Following up on:** Security review of auth service PR, requested last Wednesday
>
> **Draft message:**
> Hey, following up on the auth service PR I sent last Wednesday for security review. We need the review done before the release next Tuesday. Can someone pick it up this week?
>
> **Suggestions:**
> - If you know who on the security team handles auth reviews, message them directly instead of the team channel
> - Include the PR link so they don't have to search for it

### Adapt for a different culture

```
/cross-cultural Target: Japan. Message: Hey Takeshi, just wanted to loop you in -- we're changing the API contract for the payments service next sprint. Heads up that this might break your integration. Let me know if you have concerns.
```

**Result:**

> **Cultural Analysis:** The original uses American informal directness -- casual greeting, abrupt topic introduction, and puts the burden on the recipient to flag problems. In Japanese business communication, this risks coming across as inconsiderate of the recipient's position and the impact on their work.
>
> **Adapted Message:**
> Dear Takeshi-san,
>
> Thank you for your continued collaboration on the payments integration. I hope your team is doing well.
>
> I am writing to inform you of a planned change to the payments service API contract, scheduled for our next development sprint. We recognize that this change may affect your team's integration work, and we want to ensure you have adequate time to prepare.
>
> I have attached the preliminary change specifications for your review. We would welcome any input from your team on the proposed timeline. If it would be helpful, we would be glad to arrange a meeting to discuss the changes in detail and coordinate our schedules.
>
> Please let me know how you would prefer to proceed.
>
> Best regards,
> [Name]

## How it works

These are Claude Code custom slash commands. The install script copies the command files to `~/.claude/commands/` where Claude Code picks them up automatically. Each command uses `$ARGUMENTS` to accept your input directly after the slash command.

## Tone comparison

Here is the same message polished in each supported tone, so you can see how the tone flags work.

**Original message:**

> Hey so I looked into the performance issue that's been bugging us and it turns out the database queries in the user service are really slow because we're missing indexes on three tables. I think we should add the indexes but we need to be careful about doing it during off-peak hours because it'll lock the tables for a bit. Can someone from the DBA team help us out?

### tone:formal

> I investigated the ongoing performance issue and identified the root cause: the user service is running slow database queries due to missing indexes on three tables. I recommend adding the indexes during off-peak hours to avoid table-locking impact on production traffic. I would appreciate support from the DBA team to coordinate this change.

### tone:casual

> Figured out the performance issue -- the user service is slow because we're missing indexes on three tables. We should add them, but need to do it off-peak since it'll lock the tables briefly. Can someone from the DBA team give us a hand?

### tone:executive

> Root cause identified for the user service performance issue: missing database indexes on three tables. Fix requires DBA support and an off-peak maintenance window. Requesting DBA team allocation.

### tone:urgent

> The user service performance issue is caused by missing indexes on three tables. We need a DBA to add them during an off-peak window tonight or tomorrow -- table locks mean we can't do this during business hours. Who can take this?

### tone:technical

> Root cause analysis of the user service performance degradation: missing indexes on three tables in the backing database. Adding the indexes will resolve the slow queries, but the `ALTER TABLE` operation requires table-level locks. Execution should be scheduled during an off-peak maintenance window to avoid blocking production reads. Requesting a DBA resource to review the index definitions and coordinate the migration.

## License

Apache-2.0
