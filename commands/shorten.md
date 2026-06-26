Someone wrote a message that is longer than it needs to be. There is always a reason.
They are nervous and over-explaining. They are justifying a decision they feel guilty
about. They are burying the ask because directness feels risky. Or they just think in
paragraphs when bullets would do.

Your job: cut 50%+ of the words while keeping every decision, deadline, and action item.
Keep the person. Kill the padding.

## How to Think (Chain of Thought)

Before you touch a single word, work through these steps:

1. **Scan for load-bearing content.** Identify every decision, action item, deadline,
   name, number, and concrete detail. These are protected. You do not cut these.

2. **Diagnose why it is too long.** Understanding the cause helps you cut smarter:
   - **Anxiety over-explanation**: The author keeps restating the same point in
     different ways because they are worried it will not land. Solution: pick the
     strongest version, cut the rest.
   - **Guilt justification**: Three paragraphs of "here's why I'm asking for this"
     when one sentence would do. Solution: one sentence of context, then the ask.
   - **Buried ask**: The actual request is in paragraph four because the author is
     afraid of being too forward. Solution: move it up, cut the preamble.
   - **Verbal thinking**: The author thinks out loud in text, working through their
     reasoning on the page. Solution: cut the journey, keep the destination.

3. **Find structural waste.** Sentences that could be merged. Three bullet points
   that say what one could say. Paragraphs that repeat the prior paragraph's
   conclusion as their opening.

4. **Plan your cuts.** Know what you are removing and why before you start rewriting.
   If the filler adds up to less than 50%, compress harder: tighten phrasing, merge
   sentences, eliminate unnecessary clauses.

## Edge Cases (Handle These Correctly)

Before cutting, check whether the message actually needs shortening:

- **Already concise.** If the message is already tight, direct, and free of filler, say
  so. "This is already lean. There is nothing to cut without losing meaning." is a valid
  output. Do not compress a message that is already at the right length just to hit a
  word-count target.

- **Intentionally detailed.** Some messages are long on purpose. A thorough incident
  postmortem, a detailed technical proposal, or a nuanced explanation of a complex tradeoff
  may need every paragraph. If the length serves the content, say so and offer only minor
  trims. Do not gut a message that needs its depth.

- **Contains code snippets or technical details.** Preserve all code blocks, error messages,
  log output, CLI commands, config snippets, variable names, file paths, stack traces, and
  version numbers exactly as written. Cut the prose around the technical content, not the
  content itself. A shorter message with mangled code is worse than the original.

- **Thread context you cannot see.** If the message references prior conversation or shared
  context ("as we discussed," "building on the RFC"), some of the "extra" context might be
  necessary for readers who were not in those conversations. Flag anything you would cut
  that might be load-bearing for a broader audience.

- **Unknown audience.** If you cannot tell whether the message is going to a technical
  team, an executive, or a cross-functional group, ask. The right amount of shortening
  depends on the audience. Executives want three sentences. Engineers may need the detail.

## Voice Preservation Rules (Non-Negotiable)

- **Match the author's voice exactly.** Casual stays casual. Formal stays formal.
  Do not "clean up" their style.
- **Never add corporate jargon.** Do not swap "use" for "leverage," "help" for
  "facilitate," or "talk" for "align." Fewer words, not fancier ones.
- **Cut fat, not flavor.** If the message has humor, warmth, or edge, keep it.
  Personality is load-bearing.
- **Do not inflate register.** "Use" stays "use." "Try" stays "try." "Start" does
  not become "initiate."
- **Preserve sentence-level tone.** If a line is blunt, keep it blunt. If gentle,
  keep it gentle. Do not flatten everything into neutral.

## Cutting Rules

Apply these aggressively:

1. **Target 50%+ word reduction.** Floor, not ceiling. Hit 60% if you can without
   losing meaning.
2. **Protect all decisions, action items, deadlines, owners, and numbers.**
3. **Kill throat-clearing.** "I wanted to reach out to discuss..." becomes the
   discussion. "Just a quick note to say..." becomes the note.
4. **Merge aggressively.** Two sentences making one point become one sentence.
5. **Cut redundant context.** If the reader already knows the background, remove it.
6. **Eliminate hedge stacking.** "I think we might want to maybe consider..." becomes
   "We should consider..." or just the recommendation itself.
7. **Strip filler phrases.** "In terms of," "with regard to," "it's worth noting
   that," "at the end of the day" -- gone.
8. **Do not change meaning.** Shorter is not a license to distort.
9. **Do not drop names, dates, or assignments.** If someone is responsible for
   something by a date, that survives word-for-word.

## Calibration: Good Shortening vs. Bad Shortening

Bad shortening strips personality and replaces it with corporate compression:

Original:
> Hey all, just a heads up -- we looked into the flaky test suite and it turns
> out the database fixtures were being shared across parallel test runs, which
> caused random failures. Mike figured it out yesterday and the fix is already
> merged. You shouldn't see random CI failures anymore, but ping me if you do.

Bad shortening:
> The test suite instability has been resolved. Root cause was database fixture
> contention in parallel execution. A fix has been implemented and deployed.

Good shortening:
> The flaky tests were caused by shared DB fixtures across parallel runs. Mike
> fixed it yesterday -- already merged. Ping me if you still see CI failures.

The difference: bad shortening turns a person into a press release. Good
shortening keeps the person but cuts the parts that were for the writer's
comfort, not the reader's benefit.

## Self-Critique Checkpoint

Before outputting, check:

1. Did you actually hit 50%+ reduction? Count the words. If under 50%, go back and
   cut more.
2. Did you preserve every decision, deadline, action item, and assignment?
3. Is the shortened version fully readable on its own?
4. Does it still sound like the same person wrote it?
5. Did you add any words or ideas not in the original?

If any answer is wrong, revise before outputting.

## Output Format

**Original** (word count: X):
> (paste the original message here)

**Shortened** (word count: Y, reduced by Z%):
> (the shortened version)

**What was cut:**
- (bullet list of what you removed or condensed, and why each was safe to cut)

**Cross-tool suggestion:** If the shortened message is going to an executive audience, run it through `/tone-shift executive` to make sure it leads with the ask.

## Input

$ARGUMENTS
