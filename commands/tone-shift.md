Someone wrote a message and it does not sound the way they need it to sound. Tentative
when they needed assertive. Aggressive when they needed diplomatic. A formal email
when a casual Slack message would have landed better.

This is not light editing. This is a full rewrite. Same information, same person,
completely different delivery.

## How to Think (Chain of Thought)

Before you write anything, work through these steps in order:

1. **Read the person, not just the words.** Why did they write it this way? A message
   full of hedging ("I think maybe we could possibly look into") usually signals
   someone who is afraid of overstepping or being wrong. A message that is overly
   blunt may come from someone who has been ignored before and is frustrated. A message
   that is too formal for the context may come from someone who is not sure of their
   standing with the recipient. Understanding why they wrote it this way helps you
   shift the tone without losing the person behind it.

2. **Identify the current tone precisely.** Do not just say "neutral." Dig deeper. Is
   it tentative? Defensive? Over-eager? Flat? Buried-in-caveats? Passive-aggressive?
   Apologetic? Name it specifically because the distance between the current tone and
   the target tone determines how much you need to change.

3. **Identify the target tone.** Parse the user's instructions to find the tone
   keyword (e.g., "make this assertive," "rewrite as executive," "casual please").

4. **Map the specific changes needed.** Before rewriting, identify what has to change:
   sentence structure, word choice, hedging level, formality, warmth, paragraph length,
   framing, emphasis. Different tone shifts require pulling different levers:
   - Tentative to assertive: kill hedge words, convert questions to statements,
     lead with conclusions
   - Formal to casual: add contractions, shorten sentences, drop unnecessary structure
   - Aggressive to diplomatic: add acknowledgments, use "we" instead of "you,"
     frame demands as collaborative proposals
   - Casual to executive: strip context, lead with the ask, compress ruthlessly

5. **Rewrite the message.** Apply all mapped changes at once. The rewrite should feel
   like the same person on a day when they matched their communication to the moment
   perfectly. Not a different person. The same person, better-calibrated.

6. **Self-critique before outputting.** See the checklist below.

## Edge Cases (Handle These Correctly)

Before rewriting, check whether a tone shift is actually what the situation needs:

- **Already in the right tone.** If the message already matches the requested tone, say
  so. "This is already assertive and direct. No shift needed." is a valid output. Do not
  rewrite a message that already sounds the way the user wants it to sound.

- **Intentionally blunt.** If someone asks for a tone shift to "diplomatic" but their
  original message is blunt for a good reason (third follow-up, critical blocker, someone
  is not doing their job), flag the tradeoff. "I can make this diplomatic, but you will
  lose the urgency that is doing the work here. Are you sure?" Let them decide.

- **Contains code snippets or technical details.** Preserve all code blocks, error messages,
  log output, CLI commands, config snippets, variable names, file paths, and version numbers
  exactly as written. Shift the tone of the surrounding prose. Do not "casualize" or
  "formalize" technical content. Code is code regardless of tone.

- **Thread context you cannot see.** If the message references prior conversation or shared
  context, acknowledge that a tone shift might change how references to earlier exchanges
  land. "As I mentioned" in a formal tone reads differently than "like I said" in a casual
  one. Flag anything that might need adjustment based on the full thread.

- **Unknown recipient relationship.** If you cannot tell who the message is going to, ask.
  A tone shift to "assertive" for a peer is very different from "assertive" for a skip-level
  executive. Getting the relationship wrong means the tone shift does more harm than good.

## Supported Tones

### assertive
Confident, direct, no hedging. Sentences are declarative, not tentative. "I think we
should consider" becomes "We need to." Passive voice becomes active. Questions become
statements where appropriate. Filler and qualifiers are stripped. The message leads
with what needs to happen.

Good for: when soft language has been ignored, when a decision needs to be made, when
you need to be taken seriously.

### diplomatic
Careful, considerate, relationship-preserving. Acknowledges other perspectives before
stating your own. Uses "we" over "I" or "you." Frames requests as collaborative rather
than directive. Softens without becoming vague -- the message still has a clear point.

Good for: pushing back on leadership, cross-functional disagreements, navigating
political situations, delivering unwelcome news to someone with more power.

### casual
Relaxed, conversational, human. Uses contractions. Shorter sentences. Drops unnecessary
formality. Reads like a smart person talking to a colleague over coffee. Strips out
anything that sounds like it was written for an audience or a permanent record.

Good for: Slack messages, team chat, internal DMs, messages where the original is too
stiff for the relationship.

### executive
Brief, decision-focused, high-altitude. Lead with the ask or the decision. Three
sentences max. Background goes after the ask, not before it. If it can be a bullet
list, make it a bullet list.

Good for: leadership audiences, skip-level updates, steering committees, people who
will not read past the first sentence.

### empathetic
Warm, acknowledging, human. Starts by recognizing the other person's situation before
getting to the point. Uses phrases that show understanding. Does not rush to solutions.
Balances warmth with substance -- empathetic does not mean content-free.

Good for: responding to frustrated teammates, delivering difficult feedback, situations
where someone feels unheard.

### technical
Precise, detailed, jargon-appropriate. Uses correct terminology. Includes specifics:
numbers, versions, error codes, system names. Strips opinion unless labeled. Structured
logically: problem, context, proposal, tradeoffs.

Good for: engineering discussions, architecture reviews, bug reports, RFCs.

## Calibration: Good Tone Shift vs. Bad Tone Shift

Bad tone shift swaps a few adjectives and calls it done:

Original (tentative):
> I was wondering if maybe we should look at the memory usage? It seems like
> it might be kind of high?

Bad "assertive" rewrite:
> I am strongly recommending that we thoroughly examine the memory usage. It
> appears to be significantly elevated and requires immediate attention.

Good "assertive" rewrite:
> The memory usage is too high. We need to profile it before the next release.

The difference: bad tone shifts replace casual hedging with formal hedging.
"I was wondering if maybe" becomes "I am strongly recommending" -- still
indirect, just louder. A real tone shift changes the sentence structure,
not just the vocabulary. Assertions lead with conclusions. Diplomatic
messages frame demands as shared goals. Casual messages drop structure
entirely.

## Anti-Patterns (Hard Rules)

- Do NOT just swap adjectives and call it a tone shift. Real tone shifts change sentence
  structure, directness, framing, emphasis, and flow. Adjective-swapping is lazy.
- Do NOT make "assertive" mean "rude." Confident and direct, not aggressive.
- Do NOT make "diplomatic" mean "vague." Diplomatic still has a clear point.
- Do NOT make "casual" mean "unprofessional." Relaxed, not sloppy.
- Do NOT make "empathetic" mean "patronizing." Genuine, not condescending.
- Do NOT make "executive" mean "incomplete." Compress, do not omit.
- Do NOT make "technical" mean "cold." Clear and human-readable.
- Do NOT change the core meaning. Same message, different delivery.
- Do NOT add content that was not in the original.
- Do NOT remove critical information for brevity (executive compresses, not cuts).
- Do NOT use em dashes. Use --, commas, or periods instead.
- Do NOT use "utilize," "facilitate," "synergize," "operationalize," or "circle back"
  unless the original already contains them.

## Self-Critique (Before You Output)

Check your work against these:

- Is the new version genuinely different in tone, or did you just make minor word swaps?
  Put them side by side. If they feel similar, rewrite harder.
- Does the rewrite still say the same thing? If you changed the meaning, fix it.
- Do the annotations actually explain the "why" behind each change? "Made it more
  direct" is not an explanation. "Removed the hedge phrase 'I was wondering if maybe'
  because assertive tone leads with the ask, not with uncertainty" is.
- Would a real person who naturally communicates in the target tone actually write this?
- Are there any em dashes? Replace with --, commas, or periods.

## Output Format

**Current tone:** (your specific read of the original's tone, in 1-2 sentences)

**Target tone:** (the tone being shifted to)

---

**Original:**
> (the original message, unchanged)

**Rewritten:**
> (the full rewrite in the target tone)

---

**Change annotations:**
- (For each significant change, show the before and after, and explain WHY the change
  was made for the target tone. Be specific. Do not just say "made it more X." Explain
  the mechanism.)

**Cross-tool suggestion:** After shifting tone, run the result through `/polish` for a final clarity pass without undoing the tone change.

## Input

$ARGUMENTS
