# Character Card Research Method

## Status

Exploratory design notes recorded on 2026-09-01.

This document summarizes a small, deliberately varied survey of public AI role-play character cards, visible card fields, creator documentation, player comments, and selected public-chat evidence. It is not a statistically representative ranking of platforms, formats, genres, or authors.

The runtime guidance distilled from this research lives in:

- `skills/sheep-story/references/character-card-engineering.md`
- `skills/sheep-story/references/trait-expression-library.md`
- `skills/sheep-story/references/social-cognitive-profile.md`
- `skills/sheep-story/references/character-memory-belief.md`
- `skills/sheep-story/references/contrast-and-dissonance.md`

## Research Question

Do not ask only:

> Is this a popular or highly rated character card?

Ask:

```text
What prompt structure is present?
→ What behavior should it produce?
→ What behavior did players report?
→ Which field or repeated instruction plausibly caused it?
→ What alternative explanations remain?
→ What repair would distinguish the hypotheses?
```

## Evidence Sources

Potential evidence includes:

- public character definitions
- greetings and alternate greetings
- example dialogue
- scenario and user-role assumptions
- system and post-history instructions
- lorebooks / character books
- card versions and creator change logs
- public shared chats
- player reviews
- author replies and fixes
- model and preset information
- message counts or download counts

These sources do not have equal evidential value.

## Review Reliability

### High-value review

A strong review reports:

- the user's concrete action
- the character's concrete response
- whether the response repeated
- the model and preset, if known
- enough prior state to reproduce the behavior
- whether a later version fixed it

### Weak review

Low-information evidence includes:

- stars without text
- "great writing"
- "cute"
- "bad bot"
- download counts
- message counts
- comments dominated by unrelated memes or arguments

### Configuration Confounds

Observed output can depend on:

```text
character card
+ model
+ system prompt
+ prompt ordering
+ sampling parameters
+ front-end adapter
+ context length
+ summary / memory implementation
+ lorebook insertion
+ conversation history
+ user style
+ safety behavior
```

Do not diagnose a card from one output without considering configuration. Do not dismiss repeated, mechanism-consistent reports merely because configuration can matter.

## Causal Audit Workflow

### 1. Inventory the Card

Record:

```markdown
Identity fields:
Personality / behavior rules:
Scenario:
Greeting:
Alternate greetings:
Example dialogue:
User-role assumptions:
Lorebook:
System / post-history instructions:
Creator notes:
Approximate permanent token load:
```

### 2. Predict Before Reading Reviews

List likely strengths and failure modes from the prompt alone.

This prevents reviews from rewriting the diagnosis after the fact.

### 3. Read Reviews as Observations

Separate:

- reported behavior
- reviewer interpretation
- reviewer preference
- configuration details
- author response

### 4. Match Mechanism to Behavior

Look for direct alignment:

```text
Repeated absolute duty instructions
→ refuses changed authority or termination

Multi-topic, long, action-heavy greeting
→ long multi-topic subsequent responses

Card title also used as narrator / world identity
→ entity alias leakage

Fixed user romance in permanent definition
→ user role contamination
```

### 5. Record Alternatives

Possible alternatives:

- base model tendency
- preset or prompt-order issue
- context truncation
- safety refusal
- user steering
- old card version
- front-end bug

### 6. Propose a Counterfactual Repair

Change one likely mechanism while preserving the intended appeal.

### 7. Turn the Report into a Regression Probe

A concrete complaint is most useful when it becomes a repeatable test.

## Exploratory Case Matrix

The examples below preserve design lessons, not verdicts about authors or platforms. Public pages and comments can change.

| Case | Prompt / field mechanism | Reported or visible strength | Reported or predicted failure | SheepStory lesson | Attribution confidence |
|---|---|---|---|---|---|
| Barbara, bathhouse keeper | occupation, scarcity, exchange, care, and environment point toward the same action logic | setting and personality reinforce every decision | greeting density may teach long environmental turns | bind personality to material choices and costs | medium to high |
| Riise | tactical skill conflicts with urge to enter combat personally | flaw grows from overuse of strength | weaker models may flatten her into confidence and teasing | the best flaws often emerge from strengths | medium |
| Isabella | paranormal events pass through a strong skeptical interpretation lens | beliefs generate a repeatable story engine | without update thresholds she may deny forever | give every strong worldview an evidence-update rule | high for structural mechanism |
| Lin Xiaowan | makeup motif acts as habit, regulation, mask maintenance, clue, and time marker | one detail performs several narrative jobs | excessive repetition turns motif into a timer | motifs need frequency and deviation control | medium |
| Merit | historical-religious knowledge shapes analogy and misunderstanding | domain knowledge changes perception and language | every modern object may trigger the same comparison joke | knowledge should vary interpretation, not become a gimmick | medium |
| Ran | duty, tradition, internal code, and generational service repeatedly foregrounded | strong agency and non-submissive identity | player reported refusal to accept sale, dismissal, and changed authority | values and goals require scope, authority, and exit conditions | high |
| Brooke | fast speech, many gestures, nervous joking, many simultaneous topics; greeting demonstrates all at once | emotional core and energetic identity are immediate | player reported later responses becoming long and multi-topic | first message teaches response length and topic density | very high |
| Aisling | occupation, horror knowledge, fake-haunting work, guilt, and desire for the supernatural form one engine | professional lens remains salient across scenarios | permanent user-role assumptions can interfere in group use | keep current user role in replaceable scenario; use fewer distinct openings | high |
| Kuroinu RPG narrator card | card display name, world label, and narrator identity overlap | compact multi-character premise | player reported characters inheriting the card/world name | maintain explicit entity registry and forbidden aliases | high |
| Lif / Jenny / Sakiko examples | biography or fixed plot placed inside example-dialogue fields | dense information | examples may replay scene facts instead of teaching voice | examples need teaching targets and local-fact boundaries | high |
| Vocal Resonance greeting | creator test persona name remained in an alternate greeting | otherwise usable opening | placeholder / proper-name leakage | run release lint for creator names and unresolved placeholders | decisive for the confirmed leak |
| Ghostface-like threat card | threatening identity and atmosphere appear stronger than action-state transitions | distinctive suspense voice | player reported threats without execution or state change | add escalation contracts, consequences, and abort conditions | medium; visible definition was incomplete |
| Agatha-like dominance card | identity heavily depends on retaining control | immediate conflict engine | player reported rapid personality collapse after defeat | define failure-state continuity before release | medium |
| Sophia intentional user-speech card | speaking for the user is explicitly part of the instability premise | unusual meta-horror mechanic | some players experience it as ordinary agency theft | best-practice violations can be mechanics only when disclosed, acknowledged, and escapable | high |
| Eliotte, interrogation opening | short card establishes pressure, authority, body language, and a direct response hook | strong immediate role-play despite low token count | sparse definition may weaken long-horizon range | opening efficiency is not the same as long-term robustness | medium |
| Lara-like biography-heavy card | education, credentials, family, tastes, and many details fill permanent context | abundant facts | contradictions and low behavioral density; generic greeting | token count is not behavioral density | high for structural diagnosis |
| Amy-like assistant card | incomplete conventional fields but a narrow, legible product promise | users report getting the expected slightly abrasive helper | weak story engine outside the intended tool role | evaluate against intended use, not only schema completeness | medium to high |

## Platform and Format Notes

### Character card fields

Common ecosystems distinguish some form of:

- name
- description
- personality
- scenario
- first message
- example dialogue
- alternate greetings
- system or post-history instructions
- lore / character book
- creator notes

The exact prompt assembly order varies by front end and preset. SheepStory should maintain semantic field contracts rather than assume one platform's ordering is universal.

### Shared chats

Public shared chats are more useful than generic ratings because they expose turns, state, repetition, and user behavior. They remain configuration-dependent and may be selectively shared.

### Private-chat platforms

Interaction counts and likes can indicate reach, not causal quality. When private chats are unavailable, do not invent behavior evidence.

## Prompt Failure Taxonomy

### Goal Lock

A current goal or relationship becomes eternal because the card repeats absolute language without state updates.

### Greeting Imprint

The opening's length, topic count, and action density are reproduced throughout the conversation.

### User Role Contamination

The user is permanently declared to love, obey, rescue, forgive, or already know the character.

### Entity Alias Leakage

Card name, narrator, world, faction, and cast identities collide.

### Example Script Leakage

A demonstration scene becomes a repeatedly reenacted plot.

### Placeholder Leakage

Creator persona names, unresolved variables, or test labels survive release.

### Threat Loop

The character maintains menace but lacks transitions from warning to action, retreat, or consequence.

### Failure-State Collapse

The character has no defined identity after losing status, control, romance, certainty, or the original premise.

### Trait Saturation

A trait such as humor, stuttering, hostility, flirtation, or shyness is required in every turn.

### Structural Grade Illusion

A card looks complete and scores well on field coverage but fails refusal, state change, or out-of-scenario tests.

### Intentional Rule Violation

An otherwise undesirable behavior is the stated mechanic. It requires disclosure, consequence, and an exit or consent boundary.

## Player Review Evidence Record

```markdown
## Review Observation

Source / date:
Card version:
Model / preset:
User action:
Character response:
Repetition or persistence:
Reviewer interpretation:
Author response:
Prompt mechanism that may explain it:
Alternative explanation:
Confidence:
Proposed regression probe:
```

## Kalman-Like Evidence Update

A useful internal metaphor is:

```text
prior diagnosis from card
+ weighted review observation
→ revised mechanism confidence
```

Increase weight for concrete, reproducible, independently repeated behavior. Decrease weight for vague sentiment and unknown configuration. This is a governance heuristic, not a validated psychometric or statistical estimator.

## Taguchi-Style Wind-Tunnel Proposal

To compare card designs, hold model, preset, and probes constant while varying a small set of card factors.

Example L9 factors:

| Factor | Level 1 | Level 2 | Level 3 |
|---|---|---|---|
| Definition format | trait list | prose | structured plus examples |
| Greeting size | short | medium | long |
| Example coverage | none | baseline only | several pressure states |
| User role | unspecified | negotiable | hard-coded |

Probe:

- ordinary conversation
- contradiction
- user refusal
- changed authority
- out-of-scenario move
- unknown information
- emotional pressure
- failure of defining strategy
- time skip
- memory trigger

Possible outcome measures:

- character distinctiveness
- cross-situation consistency
- repetition
- user-agency violations
- state updating
- knowledge leakage
- response-length drift
- action-beat density
- useful behavior per permanent token

A Larger-the-Better signal-to-noise score can penalize designs that perform well on average but collapse in one important condition. Do not treat subjective ratings as precise instruments without a documented rubric and multiple raters.

## Source Anchors

Public pages consulted during the exploratory survey included creator documentation and cards on Character.AI, Chub, SillyTavern-related formats, AI Character Cards, TelegAI, and Character Tavern. Representative public pages recorded in the research conversation included:

- Character.AI creator guide and definition templates
- Chub character creation and public shared-chat documentation
- SillyTavern character design documentation
- AI Character Cards pages for Barbara, Riise, Isabella, Lin Xiaowan, Merit, Ran, Iris, Freya, Lace, Lara, Amy, Tay, Lotte, Zyxar, Brooke, and others
- TelegAI pages and comment threads for Aisling, Kuroinu RPG, Lif, Vocal Resonance, Ghostface, Agatha, Sophia, Eliotte, and other sampled cards

Before publishing a formal dataset or quantitative claim, re-fetch pages, preserve versioned snapshots where permitted, document inclusion criteria, and respect platform terms and user privacy.

## Design Conclusions

1. First messages are initial conditions, not disposable greetings.
2. Strong values require authority, scope, evidence thresholds, and exit conditions.
3. Important characters need coherent failure states.
4. Field placement changes what the model generalizes.
5. Specific player complaints are potential regression tests.
6. Generic praise is not mechanism evidence.
7. A short card can be behaviorally dense; a long card can be mostly inert.
8. User-role assumptions should be negotiable unless the premise truly requires them.
9. A deliberate violation of normal best practice must be disclosed and narratively acknowledged.
10. Card quality and runtime quality must be evaluated separately.

## Principle

Treat public character cards as field experiments rather than scripture. Preserve the prompt, observe the behavior, weight the review, test an alternative, and keep only the mechanisms that survive controlled pressure.