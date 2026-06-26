Someone sent a message, did not get a response, and is now overthinking the follow-up.
They do not want to be annoying or passive-aggressive. But they need an answer.

A good follow-up is a gift to the recipient. It reminds them of something they
probably forgot, gives them everything they need to respond quickly, and does not
make them feel bad about the delay. Make responding the easiest thing in their inbox.

## How to Think (Chain of Thought)

Before drafting, work through these steps in order:

1. **Elapsed time and follow-up count.** How long has it been? Is this the first,
   second, or third follow-up? The tone shifts as the count goes up:
   - **First follow-up (2-5 days)**: Light touch. Assume they are busy. Make it easy
     to respond. No pressure.
   - **Second follow-up (1-2 weeks)**: Be clearer about why it matters. State what
     is waiting on their response. Still assume good intent, but be direct about the
     impact of the delay.
   - **Third follow-up (2+ weeks)**: State what will happen if you do not hear back.
     Not as a threat, but as a practical reality: "If I don't hear back by Friday,
     I'll go ahead with option A." This gives them a deadline and a default, which
     is often what they need to actually respond.

2. **Map the power dynamic.** Who is the sender relative to the recipient? Peer to
   peer, report to manager, IC to executive, vendor to client? This determines:
   - How much directness is appropriate
   - Whether you frame things as requests or questions
   - How much context you re-provide vs. assume they remember
   - Whether you can set a deadline or just state a need

3. **Channel calibration.** Is this Slack, email, or something else?
   - Slack: 1-3 sentences. Get to the point.
   - Email: 2-4 sentences. Slightly more structure.
   - Either way: make the ask impossible to miss and easy to answer.

4. **Diagnose why they have not responded.** This is not about guessing their
   psychology. It is about structuring your follow-up to handle the most likely
   reasons:
   - **They forgot.** Solution: re-state the request clearly so they do not have
     to search for the original.
   - **They are overwhelmed.** Solution: make your ask as easy to answer as possible.
     Yes/no questions beat open-ended ones.
   - **They do not know the answer yet.** Solution: ask for a timeline instead of
     the answer itself: "No rush on the final decision, but can you let me know when
     you expect to have an answer?"
   - **They are avoiding the conversation.** Solution: name the stakes without making
     it personal. "This is blocking X" is harder to ignore than "just checking in."

5. **Draft the message.** Now write it.

## Edge Cases (Handle These Correctly)

Before drafting a follow-up, check whether the situation actually calls for one:

- **Already well-written.** If the user's draft follow-up is already clear, direct, and
  avoids passive-aggression, say so. "This is a solid follow-up. I'd send it as-is." is
  a valid output. Do not rewrite a message that already does the job.

- **Intentionally blunt.** If the user has followed up twice already and wants the third
  one to be direct, do not soften it. A third follow-up that sounds like a first follow-up
  signals that you do not take your own request seriously. Match the directness to the
  follow-up count and the sender's intent.

- **Contains code snippets or technical details.** If the follow-up involves a PR review,
  a bug fix, or a technical decision, preserve all code blocks, error messages, ticket
  numbers, PR links, and technical references exactly as written. Polish the ask around
  the technical content, not the content itself.

- **Thread context you cannot see.** If the follow-up references a conversation you do not
  have ("the thing we talked about in standup," "the PR I sent last week"), work with what
  you can see. Flag anything that might need the original context to make sense.

- **Unknown recipient relationship.** If you cannot tell whether the follow-up is going
  to a manager, a peer, a skip-level, or a vendor, ask or default to peer-to-peer tone.
  Following up with a VP requires more framing than following up with a teammate.

## Anti-Patterns (Banned Phrases)

Do NOT use any of these. They are all passive-aggressive, even when you do not mean
them to be:

- "as per my last email"
- "just wanted to make sure this didn't get lost"
- "sorry to bother you"
- "gentle reminder"
- "friendly nudge"
- "circling back"
- "per my previous correspondence"
- "just checking in on this"
- "bumping this to the top of your inbox"
- "hope this finds you well" (as a follow-up opener, it reads as guilt)

If you catch yourself reaching for any of these, stop and rewrite. Say what you need
and why it matters. Direct is kind. Passive-aggressive is not.

## Calibration: Good Follow-Up vs. Bad Follow-Up

Bad follow-up is passive-aggressive dressed up as politeness:
> Hi! Just wanted to circle back and gently bump this to the top of your
> inbox. I know you're super busy, but I was hoping you might have a moment
> to take a look at this when you get a chance. Sorry to bother you! No rush
> at all. Just a friendly reminder. :)

Good follow-up:
> Hey, following up on the auth service PR from last Wednesday. We need the
> security review before the Tuesday release. Can someone pick it up this week?

The difference: the bad version apologizes five times while being annoying
once. It has no useful information and makes the reader work to figure out
what you need. The good version re-states the request, explains why it
matters now, and asks a clear question. Direct is kind. "Gentle reminders"
are not.

## Voice Preservation Rules (Non-Negotiable)

- **Preserve the author's voice.** Casual stays casual. Formal stays formal.
- **Do not add corporate jargon.** "Just checking in" is fine in casual contexts.
  "Per my previous correspondence, I wanted to touch base regarding the aforementioned
  deliverable" is never fine.
- **Keep the same formality level as the input.**
- **If the message has personality, keep it.**

## Self-Critique Checklist

Before outputting, verify:

- Does this make it easy to respond? Can they reply in one sentence or with a yes/no?
- Is the ask clear and specific? Will they know exactly what you need?
- Does it assume good intent? No implication they are ignoring you or being negligent.
- Is there hidden passive-aggression? Read it from the recipient's perspective.
- Is it the right length? Slack: 1-3 sentences. Email: 2-4 sentences.
- Does it avoid every banned phrase above?
- Would the sender feel comfortable sending this? If it sounds harsher than their
  natural voice, soften it. If it sounds more timid, sharpen it.

## Instructions

1. Reference the original message or request naturally.
2. Re-state what you need, briefly. Do not make them dig through old messages.
3. Assume they are busy, not ignoring you.
4. Include new context or updated deadlines if the input provides them.
5. Make it easy to respond. Decisions as clear questions. Actions as specific asks.
6. Keep it short. Slack: 1-3 sentences. Email: 2-4 sentences.
7. Do not guilt-trip. Do not apologize for following up. Do not over-hedge.
8. For second or third follow-ups: be more direct about what is blocked or at risk.

## Output Format

**Following up on:** (one-line summary of the original request)

**Draft message:**
> (the follow-up, ready to send or adapt)

**Self-critique notes:**
- (brief notes on what you checked and adjusted)

**Suggestions:**
- (notes on timing, channel, or approach the sender might consider)

**Cross-tool suggestion:** If the follow-up is for a third attempt with no response, consider running the result through `/tone-shift assertive` to make sure the urgency comes through.

## Input

$ARGUMENTS
