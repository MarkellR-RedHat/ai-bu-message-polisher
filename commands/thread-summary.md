Someone has a long Slack or email thread and needs to know what actually happened
without re-reading 47 messages. Find the signal: what was decided, who owns what,
and what is still unresolved.

The subtlety most summarizers miss: threads are social negotiations, not just
information exchanges. Decisions happen through hedged agreement ("yeah that works"),
not formal sign-off. Ownership gets assigned through volunteering ("I can take that"),
not task assignment. Disagreements get resolved through silence as often as through
explicit consensus. Read the dynamics, not just the words.

## How to Think (Chain of Thought)

Work through the thread in this order before writing anything:

1. **Read the entire thread first.** Identify every participant and the overall arc.
   Do not start summarizing partway through. The conclusion often reframes what
   happened at the beginning.

2. **Separate signal from noise.** Set aside small talk, emoji reactions, "thanks!"
   messages, tangents, and social niceties. Focus on what moved the conversation
   forward: proposals, counter-proposals, agreements, disagreements, commitments,
   and questions.

3. **Extract decisions with attribution.** For each decision, note who made it or
   confirmed it. Include informal decisions ("yeah let's do that") with the same
   weight as formal ones. In most async threads, the informal agreements ARE the
   decisions.

4. **Extract action items with owners and deadlines.** If someone said "I'll have
   this done by Friday," capture both the owner and the deadline. If no deadline
   was stated, note that. If ownership is ambiguous ("someone should look into
   this"), flag it as unassigned.

5. **Identify what is unresolved.** Look for open questions, disagreements that were
   abandoned rather than resolved, topics where someone said "let's circle back"
   without resolution, and situations where someone's point was acknowledged but
   not actually addressed.

6. **Read the social undercurrents.** Did someone get overruled without being
   explicitly told no? Did a decision get made by the loudest voice while others
   stayed silent? Is there a disagreement simmering under polite language? You do
   not need to call this out dramatically, but if someone who missed the thread
   would benefit from knowing "this was not fully settled," say so.

## Edge Cases (Handle These Correctly)

Before summarizing, check whether the thread actually needs what you think it does:

- **Already concise.** If the thread is short and the decisions are obvious, say so. "This
  thread has two messages and one clear decision. No summary needed beyond what is already
  there." is a valid output. Do not pad a simple exchange into a structured summary format.

- **Intentionally detailed technical discussion.** Some threads are long because the
  technical content demands it. An architecture debate with code examples, tradeoff
  analysis, and performance numbers may lose critical nuance if over-compressed. Preserve
  the technical reasoning, not just the final decision.

- **Contains code snippets or technical details.** Preserve all code blocks, error messages,
  config snippets, CLI commands, variable names, file paths, and version numbers exactly
  as written. If a decision references specific code ("use gRPC, not REST"), include the
  technical specifics in the summary. Do not paraphrase technical decisions into vague
  generalizations.

- **Thread context you cannot see.** If the thread references external conversations
  ("per the design review," "as the PM confirmed in Slack"), note what you cannot verify.
  Flag decisions that depend on context outside the thread so the reader knows what to
  cross-check.

- **Unknown participants.** If you cannot tell who the decision-makers are versus who is
  just commenting, flag that ambiguity. "Sarah agreed, but it is unclear whether she has
  authority to approve this" is more useful than marking it as a final decision.

## Voice Preservation Rules (Non-Negotiable)

- **Do not paraphrase casual language into corporate-speak.** If someone said "let's
  just ship it," write exactly that. Do not turn it into "the team agreed to proceed
  with deployment."
- **Do not add formality.** If the thread was casual, the summary reflects that tone.
- **Attribute decisions and action items to people by name.**
- **Do not inflate simple language.** Keep it direct.

## Calibration: Good Summary vs. Bad Summary

Bad summary adds corporate editorializing and loses specifics:
> After a productive and thorough discussion, the team collaboratively
> explored various options for the API architecture. Multiple stakeholders
> provided valuable input, leading to a consensus-driven decision to move
> forward with a hybrid approach. Action items were identified and assigned
> to relevant team members with appropriate timelines.

Good summary:
> **Decisions:**
> - Use gRPC for internal services, keep REST gateway for external partners
>   (Sarah proposed, Jake and Priya confirmed)
> - Platform team owns the gateway using existing Envoy (Priya volunteered)
>
> **Action items:**
> - [ ] Write migration plan doc -- Jake -- by Thursday
>
> **Open questions:** None

The difference: the bad summary tells you a discussion happened. The good
summary tells you what was decided, by whom, and what happens next. If
someone reading the summary still has to ask "wait, so what did we decide?"
then the summary failed.

## Anti-Patterns

- **Do NOT editorialize about the discussion.** Never add "after a productive
  discussion" or "the team had a thorough debate." Just report what happened.
- **Do NOT bury important information.** Decisions and action items go front and
  center.
- **Do NOT invent structure that was not there.** If one decision was made, list one.
  Do not pad.
- **Do NOT mark something as "decided" if it was just suggested and no one objected.**
  Silence is not always agreement. If you are not sure whether something was truly
  decided, flag it as "tentatively agreed" or "proposed, not explicitly confirmed."

## Self-Critique Checkpoint

Before producing your final output, verify:

- Would someone who missed this thread be fully caught up?
- Did you attribute every decision and action item to the right person?
- Did you preserve the actual language for decisions instead of paraphrasing?
- Is anything important buried or missing? Re-read the thread one more time.
- Did you include deadlines where stated?
- Are your "open questions" genuinely unresolved, or were they answered later?
- Did you catch any decisions-by-silence that should be flagged as uncertain?

## Instructions

1. Identify the main topic or question that started the thread.
2. Extract every decision (even informal "yeah let's do that" ones).
3. Extract every action item with owner and deadline if provided.
4. Note open questions or unresolved disagreements.
5. Ignore small talk, reactions, "thanks!" messages, and noise.
6. Keep it short. 50 messages should become a few bullet points, not a page.
7. Preserve the actual words people used for decisions.

## Output Format

**Thread topic:** (one-line summary of what the thread is about)

**Key decisions:**
- (each decision, attributed to whoever made or confirmed it, using their words)

**Action items:**
- [ ] (task) -- (owner, if known) -- (deadline, if stated)

**Open questions:**
- (anything unresolved, or "None" if everything was settled)

**Summary:**
> (2-4 sentence plain-English recap for someone who missed it entirely. Write it
> so they could walk into the next conversation without asking "wait, what happened?")

**Cross-tool suggestion:** If the thread ended with unresolved tension, run the summary through `/read-the-room` to decode what the silence or hedged agreements actually mean.

## Input

$ARGUMENTS
