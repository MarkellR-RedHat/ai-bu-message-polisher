# Communication Frameworks Reference

A working reference for choosing and applying the right structure to your message. Four frameworks, each with a clear use case, plus a decision guide at the end.

---

## 1. BLUF (Bottom Line Up Front)

**What it is:** Start with the conclusion, decision, or ask. Then provide supporting context. The reader should know exactly what you need from the first sentence.

BLUF comes from military communication, where buried conclusions can have serious consequences. In business, the consequences are smaller but the principle holds: don't make people dig for your point.

**When to use it:**
- Status updates
- Requests that need a decision
- Answers to questions someone asked
- Any message where the reader is busy and just needs the headline

### Example

**Before:**

> Hey team, so I've been looking into the deployment pipeline issue that came up last week, and I talked to DevOps about it on Monday. They mentioned that the staging environment has been flaky since the last infrastructure update, which was on June 12th. I also checked the logs and found some timeout errors that seem related. After going back and forth with a few people, I think we've narrowed it down. The root cause appears to be a misconfigured load balancer rule that was introduced during the infra update. DevOps can fix it but they need us to approve a 30-minute maintenance window.

**After:**

> We need to approve a 30-minute maintenance window so DevOps can fix the deployment pipeline issue.
>
> **Root cause:** A misconfigured load balancer rule introduced during the June 12th infrastructure update.
>
> **How we found it:** Timeout errors in the logs pointed to the staging environment. DevOps confirmed the load balancer config changed during that update.
>
> **Next step:** Reply to this thread with your availability for the maintenance window. DevOps can schedule it any evening this week.

**Why it's better:** The original buries the ask (approve a maintenance window) at the very end, after a chronological narrative nobody asked for. The rewrite leads with the ask, then gives just enough context to justify it.

---

## 2. SCQA (Situation, Complication, Question, Answer)

**What it is:** A storytelling structure for persuasion. You set the scene (Situation), introduce tension (Complication), frame the decision (Question), and then deliver your recommendation (Answer).

SCQA works because it creates a natural "pull" -- the reader feels the problem before you offer the solution, which makes the solution land harder.

**When to use it:**
- Proposals and recommendations
- Pitches (internal or external)
- Strategy documents
- Any time you need buy-in, not just awareness

### Example

**Before:**

> I think we should switch our CI pipeline from Jenkins to GitHub Actions. GitHub Actions is more modern and has better integration with our existing GitHub repos. Jenkins requires a lot of maintenance and our DevOps team spends too much time on it. GitHub Actions also has a marketplace with pre-built actions that would save us time. The migration would take about 6 weeks. I've attached a cost comparison spreadsheet. Let me know what you think.

**After:**

> **Situation:** Our engineering team ships 40+ pull requests per week across 12 repositories, all hosted on GitHub.
>
> **Complication:** Our Jenkins CI server requires 15-20 hours of DevOps maintenance per month. Last quarter, three production delays traced back to Jenkins instability. Meanwhile, Jenkins has no native integration with our GitHub-based workflow, which means developers context-switch between two systems on every PR.
>
> **Question:** How do we reduce CI maintenance burden and eliminate the friction between our source control and CI systems?
>
> **Answer:** Migrate to GitHub Actions over a 6-week rollout.
>
> - Eliminates the standalone Jenkins server and its maintenance overhead
> - Native GitHub integration means CI status, logs, and reruns live inside the PR
> - Pre-built Actions marketplace replaces custom Jenkins plugins we currently maintain
> - Projected savings: 12-15 DevOps hours/month, plus faster developer feedback loops
>
> Cost comparison is attached. I'd like to walk through this at Thursday's architecture review.

**Why it's better:** The original reads like a feature list with a vague ask ("let me know what you think"). The rewrite builds a case: here's our reality, here's the pain, here's the question we need to answer, and here's my answer with evidence. It gives the reader a reason to care before asking them to act.

---

## 3. Minto Pyramid

**What it is:** Lead with your main recommendation, then group your supporting arguments into logical clusters, each backed by evidence. It's a top-down structure -- the reader gets the big picture first, then can drill into the details they care about.

Named after Barbara Minto, who developed it at McKinsey. It's the standard structure for consulting recommendations, but it works anywhere you need to present a complex argument clearly.

**When to use it:**
- Complex recommendations with multiple supporting reasons
- Executive summaries
- Strategic analyses
- Any argument that has more than two or three supporting points

### Example

**Before:**

> I've been evaluating our customer support tooling. Zendesk is expensive and we're not using half the features. Our response times have gotten worse over the past two quarters. The knowledge base is outdated because nobody owns it. We also have a chatbot but it deflects less than 10% of tickets. I talked to three other teams in the company and two of them use Intercom and like it. Freshdesk is cheaper than Zendesk too. I think we need a new support platform and also need to fix our processes. Our CSAT scores dropped from 4.2 to 3.6 this year. We should also probably hire a knowledge base manager.

**After:**

> **Recommendation:** Replace Zendesk with Intercom and restructure our support operations to reverse the decline in customer satisfaction.
>
> **Three reasons this is the right move:**
>
> **1. Our current platform is underperforming relative to cost.**
> - We use less than 50% of Zendesk's feature set
> - Our chatbot deflects under 10% of tickets (industry benchmark: 25-30%)
> - Intercom and Freshdesk both offer comparable features at lower cost. Two internal teams already use Intercom successfully.
>
> **2. Response times and satisfaction scores are trending in the wrong direction.**
> - Average first-response time increased 40% over the past two quarters
> - CSAT dropped from 4.2 to 3.6 this year
> - These trends correlate with headcount staying flat while ticket volume grew 25%
>
> **3. Our knowledge base has no owner, which compounds every other problem.**
> - Outdated articles drive repeat tickets and longer handle times
> - The chatbot can't deflect effectively without accurate content behind it
> - Hiring a dedicated knowledge base manager would improve both self-service and agent efficiency
>
> **Proposed next steps:**
> 1. Run a 30-day Intercom pilot with one product line
> 2. Post a job req for a Knowledge Base Manager
> 3. Reconvene in 6 weeks with pilot data and a migration plan

**Why it's better:** The original is a stream of observations with no hierarchy. The reader has to mentally sort the problems, evidence, and recommendations on their own. The rewrite gives them the answer up front, then organizes the evidence into three clear arguments, each self-contained. A busy executive can read just the bold lines and get the full picture.

---

## 4. BIFF (Brief, Informative, Friendly, Firm)

**What it is:** A framework for high-stakes or emotionally charged messages. Keep it Brief (no rambling). Make it Informative (facts, not feelings). Stay Friendly (professional warmth). Be Firm (clear boundary, no ambiguity).

Developed by Bill Eddy for conflict communication. It's designed to de-escalate while still holding your ground. The key discipline: say less than you want to.

**When to use it:**
- Delivering bad news
- Responding to hostile or passive-aggressive messages
- Setting boundaries with colleagues or stakeholders
- Declining requests without burning bridges

### Example

**Before:**

> Hi Marcus, I saw your message about needing the analytics dashboard moved up to next sprint. I understand it's important to your team, but honestly we're already stretched really thin and I feel like every sprint someone asks us to squeeze something else in. We already committed to the auth refactor and the payment bug fixes, and I don't think it's fair to ask the team to take on more work without something giving. I've mentioned this capacity issue before and nothing has changed. I'd love to help but I just can't keep saying yes to everything. Can we talk about prioritization more broadly? This keeps happening and it's getting frustrating.

**After:**

> Hi Marcus,
>
> Thanks for flagging the analytics dashboard -- I can see why it's a priority for your team.
>
> This sprint is fully committed to the auth refactor and payment bug fixes, so we can't add the dashboard without removing one of those. If you'd like to propose a swap, I'm happy to bring it to the team and discuss trade-offs.
>
> Otherwise, I've reserved a slot for it in Sprint 24 (starts July 14). Want me to lock that in?
>
> Best,
> [Name]

**Why it's better:** The original is defensive, emotional, and vague. It relitigates past frustrations ("I've mentioned this before"), uses guilt ("I don't think it's fair"), and ends with a broad complaint instead of a concrete next step. The rewrite acknowledges the request warmly, states the constraint clearly, offers two specific paths forward, and stops. No drama, no history lesson, no passive aggression. Marcus knows exactly where he stands and what his options are.

---

## 5. Which Framework Do I Use?

Use this quick decision guide to match your situation to the right framework.

| **Your situation** | **Use this** | **Why** |
|---|---|---|
| Someone needs a quick answer, status update, or decision | **BLUF** | They need the headline, not the journey |
| You're proposing something and need buy-in | **SCQA** | You need to build the case before the ask |
| You have a complex argument with multiple supporting reasons | **Minto Pyramid** | You need hierarchy and structure for a dense topic |
| The message is emotionally charged or high-conflict | **BIFF** | You need to de-escalate while staying firm |

### Still not sure? Ask yourself these two questions:

**1. Does the reader already agree this is a problem, or do I need to convince them?**
- They already agree --> BLUF (just tell them what to do)
- I need to convince them --> SCQA or Minto Pyramid

**2. Is there emotional tension in this exchange?**
- Yes --> BIFF (de-escalate first, inform second)
- No --> BLUF, SCQA, or Minto Pyramid based on complexity

### A note on combining frameworks

These aren't mutually exclusive. A long strategy document might use SCQA to frame the problem in the intro, then switch to Minto Pyramid for the recommendation section. A status update might use BLUF structure but apply BIFF principles if the news is bad.

The point isn't to follow a template rigidly. It's to have a starting structure so you're not staring at a blank screen, writing in circles, or burying your point.
