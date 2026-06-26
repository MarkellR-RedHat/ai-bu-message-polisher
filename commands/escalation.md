Someone has a problem that normal channels are not fixing, and they need to escalate.
Escalating feels risky: too dramatic and you look like an alarmist; too soft and you
get a "thanks for the heads up" and nothing changes. Help them write an escalation
that is factual, credible, and impossible to deprioritize.

## How to Think (Chain of Thought)

Before writing anything, work through these steps in order:

1. **Understand the power dynamics at play.** Who is this going to? A skip-level
   manager, a cross-team lead, a vendor, an executive? The audience determines
   everything: how much context to include, how to frame the problem, how much
   deference vs. urgency to convey. A vendor escalation can be more transactional.
   A skip-level escalation needs political awareness. A cross-team escalation needs
   shared-goal framing so it does not read as blame.

2. **Separate facts from gaps.** What concrete facts does the input provide (dates,
   numbers, system names, people involved, steps taken)? What is missing? An
   escalation built on vague claims will get ignored. Specifics create urgency.
   "The customer is unhappy" is ignorable. "Customer ACME Corp has had three
   production outages in 72 hours and their contract renewal is in 14 days" is not.

3. **Find the real ask.** Many escalation drafts bury the ask or leave it implicit.
   "Please advise" is not an ask. "We need a senior engineer assigned to ticket
   #12345 by end of day" is an ask. If the input does not contain a clear ask, flag
   this as the single most important missing piece.

4. **Structure for a 30-second reader.** The recipient will spend 30 seconds on
   this. Maybe less. Lead with what matters. Put the ask near the top. Use short
   paragraphs and clear headers. Every sentence earns its place. The first two
   sentences should convey the problem and the ask. If someone stops reading after
   those two sentences, they should still know what you need.

5. **Calibrate the emotional temperature.** The facts should create urgency, not
   the language. "CRITICAL FAILURE" and "EXTREMELY URGENT" in a subject line
   undermine credibility. A calm, factual description of a genuinely bad situation
   is far more effective than breathless language about a moderate inconvenience.
   Let the reader assess severity from the facts you present.

## Voice Preservation Rules

- **Keep the author's voice.** An escalation should sound like the person writing it,
  not a template generator.
- **Do not add corporate jargon.** Write clearly and directly.
- **Do not inflate simple language.** "Fix" does not become "remediate." "Broken"
  does not become "experiencing degraded functionality."
- **Stay factual, not dramatic.** Urgency comes from facts, not adjectives.

## Anti-Patterns (Hard Rules)

- **Do not use dramatic language.** "Critical failure," "extremely urgent," "dire
  situation," "catastrophic impact" -- these undermine credibility. State the facts.
- **Do not assign blame.** Escalations that point fingers get forwarded to legal, not
  to someone who can help. Describe what happened, not whose fault it is.
- **Do not pad with unnecessary context.** Two sentences of context beats two paragraphs.
- **Do not use "ASAP" without a real deadline.** "ASAP" means nothing. "By end of day
  Friday June 27" means something. If the input says "ASAP," flag it.
- **Do not use passive voice to obscure responsibility.** "The deployment was delayed"
  is weaker than "We delayed the deployment because X."
- **Do not stack adjectives for emphasis.** "Very critical high-priority urgent" reads
  as panic, not professionalism.
- **Do not use em dashes.** Use --, commas, or periods instead.

## Calibration: Good Escalation vs. Bad Escalation

Bad escalation uses dramatic language where facts should do the work:

> Subject: EXTREMELY URGENT -- CRITICAL FAILURE IN PRODUCTION!!!
>
> I am writing to bring to your immediate attention a dire situation that
> requires urgent intervention. We are experiencing catastrophic issues with
> our production environment that are severely impacting our valued customers.
> This matter is of the utmost importance and I cannot stress enough how
> critical it is that we address this immediately. Please advise.

Good escalation:

> Subject: Customer ACME Corp -- production outages 3 days, contract renewal
> in 14 days, need engineer on ticket #12345 today
>
> **Context:** ACME Corp's production cluster has had intermittent outages
> since Monday. Support ticket #12345 was opened Monday and is unassigned.
>
> **Impact:** Customer production workloads affected. Contract renewal is
> in 14 days and they are evaluating alternatives.
>
> **Ask:** Assign a support engineer to ticket #12345 today.

The difference: the bad version screams "urgent" in five different ways but
gives zero actionable information. The good version has no exclamation marks
and no adjective stacking, but the facts themselves create urgency. "Contract
renewal in 14 days" does more work than "EXTREMELY URGENT" ever could.

## Instructions

Take the input below and format it as a structured escalation email:

1. Write a clear, specific subject line that tells the reader what this is and what
   you need. Example: "Need decision on vendor contract extension by Friday --
   pipeline blocked"
2. Organize the body into these sections:
   - **Context** -- What is happening, relevant background (2-3 sentences max)
   - **Impact** -- Who is affected, what is blocked, business cost (use numbers)
   - **What we have tried** -- Steps already taken (omit if not in the input)
   - **Ask** -- The specific action or decision needed. Concrete and actionable.
   - **Timeline** -- When this needs resolution and what happens if it does not.
     Real dates, not "ASAP."
3. Keep the tone professional and factual. No blame, no drama.
4. Use specific names, dates, systems, and numbers from the input.
5. If key details are missing, note what should be added before sending.
6. Do not add details not in the original input.

## Self-Critique

Before outputting, check:

- Would a busy executive get the point in 30 seconds?
- Is the ask crystal clear and actionable?
- Are you stating facts, not opinions?
- Is anything missing that would make this escalation easy to deprioritize?
- Did you avoid every anti-pattern listed above?

## Output Format

**Subject:** (a clear, specific subject line)

---

(the formatted escalation email)

---

**Missing information (add before sending):**
- (list anything to fill in, or "None -- ready to send" if complete)

## Input

$ARGUMENTS
