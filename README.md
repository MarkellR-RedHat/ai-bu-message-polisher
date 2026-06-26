# ai-bu-message-polisher

**You know what you want to say. You just can't stop rewriting it.**

## The problem

You draft a two-sentence Slack message and spend eight minutes on it. You rewrite the same line three times and send the first version anyway. You agonize over escalation emails. You feel guilty about saying no. You overthink follow-ups until the window closes.

This is not a writing problem. It is a confidence problem. These ten Claude Code slash commands give you back the time you lose to overthinking.

## Before and after

You type this:

```
/polish Hey team, so I wanted to give you all an update on where things
are at with the migration. Basically we're like 80% done but there's
some blockers that are kind of slowing things down. I think we should
probably meet about it.
```

You get this:

> Team, quick update on the migration: we're 80% done but hitting some blockers. Let's meet to discuss.

Same voice. No corporate glaze. Just you on your best day.

## Quick start

```bash
git clone https://github.com/MarkellR-RedHat/ai-bu-message-polisher.git
cd ai-bu-message-polisher
bash install.sh
```

Restart Claude Code, then try:

```
/polish [paste a message you've been staring at]
```

## Commands

| Command | What it does |
|---------|-------------|
| `/polish` | Make a rough message land. Tone flags: `casual`, `formal`, `executive`, `urgent`, `technical`. |
| `/shorten` | Cut 50%+ of the words. Keeps every decision, deadline, and action item. |
| `/tone-shift` | Full rewrite in a different tone. Annotates every change with reasoning. |
| `/read-the-room` | Paste a message you received. Get what they actually mean, what they want, and 2-3 response options. |
| `/decline-politely` | Say no without hedging, without "unfortunately," without fake alternatives. |
| `/follow-up` | Write a follow-up that makes responding easy. No "gentle reminders." |
| `/bad-news` | Deliver bad news at three directness levels using the BIFF framework. |
| `/escalation` | Turn a problem into a structured escalation email a busy executive can act on in 30 seconds. |
| `/thread-summary` | Distill a long thread into decisions, action items, and open questions. |
| `/cross-cultural` | Adapt a message for a different communication culture with real depth, not tourist-level tips. |

## Examples

### Decode what someone actually means

Someone sends you a message and you cannot tell if it is a casual check-in or a passive-aggressive escalation.

```
/read-the-room Hey, wanted to check in on the API integration timeline.
The product team has been asking me about it and I told them I'd get
back to them by EOD. No rush on your end, just want to make sure we're
aligned on next steps.
```

**What you get back:**

> "No rush on your end" directly contradicts the EOD deadline they just mentioned. They are softening a real ask because they do not want to seem pushy. Decoded: "I need a timeline I can give the product team today."

Plus three response options with genuinely different strategies (relationship-first, clarity-first, name-the-dynamic).

### Say no without the guilt spiral

```
/decline-politely My manager asked me to present at the all-hands next
Friday but I'm deep in a sprint and really can't afford the prep time.
```

> Thanks for thinking of me for the all-hands. I'm heads-down in the current sprint and can't carve out the prep time this week without putting deliverables at risk. Happy to present in a future cycle when timing is better.

Clear. Kind. Three sentences. Done.

### Same message, five tones

Run `/polish` with a tone flag and the difference is structural, not just word-swapping:

| Tone | Output |
|------|--------|
| `casual` | Figured out the performance issue -- missing indexes on three tables. Need a DBA to add them off-peak. |
| `formal` | I investigated the performance issue and identified missing indexes on three tables. I recommend adding them during off-peak hours with DBA support. |
| `executive` | Root cause: missing database indexes. Fix requires DBA support and off-peak window. Requesting allocation. |
| `urgent` | Missing indexes on three tables are causing the performance issue. We need a DBA to add them tonight or tomorrow. Who can take this? |
| `technical` | Root cause: missing indexes on three tables in the backing database. `ALTER TABLE` requires table-level locks. Schedule during off-peak maintenance window. |

## Workflow

These commands work well chained together and alongside other tools in the suite.

**Common chains within message-polisher:**

- Draft a response with `/read-the-room`, then run the option you pick through `/polish` for a final pass.
- Write a long update, run `/shorten` to cut it in half, then `/tone-shift executive` for a skip-level audience.
- Use `/bad-news` to get three directness levels, pick one, then `/read-the-room` on your own draft to pressure-test how it will land.

**Connections to other AI BU tools:**

- After `/thread-summary` extracts decisions from a long thread, drop the summary into [`/meeting-notes`](https://github.com/MarkellR-RedHat/ai-bu-meeting-notes) to get structured action items with owners and deadlines.
- Use [`/status-report`](https://github.com/MarkellR-RedHat/ai-bu-status-report) to generate the update, then `/polish executive` to tighten it for leadership.
- Run [`/style-check`](https://github.com/MarkellR-RedHat/ai-bu-style-checker) before sending any external-facing message to catch product name and capitalization issues.
- When `/escalation` produces a draft that references shipped work, pull specifics from [`/shipped-digest`](https://github.com/MarkellR-RedHat/ai-bu-shipped-digest) so your timeline is backed by real dates.

**Real-world tip:** The highest-value daily pattern is `/read-the-room` on the first ambiguous message you get each morning. It takes 10 seconds and saves the 20 minutes you would have spent drafting a response that hedges in the wrong direction. After a week, you start reading subtext faster on your own.

## How it works

These are Claude Code custom slash commands. The install script copies `.md` command files to `~/.claude/commands/` where Claude Code picks them up automatically. Each command uses `$ARGUMENTS` to accept your input directly after the slash command.

## Reference

`reference/communication-frameworks.md` covers BLUF, SCQA, Minto Pyramid, and BIFF with bad-to-good rewrites for each.

## License

Apache-2.0
