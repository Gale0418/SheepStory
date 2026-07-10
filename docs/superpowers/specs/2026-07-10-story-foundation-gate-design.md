# SheepStory Story Foundation Gate Design

## Goal

Give every new, underspecified story a genre-neutral foundation workflow that develops a World Book and Character Cards before outlining or drafting, without repeatedly questioning users who already supplied those foundations.

## Selected Approach

Use an adaptive Story Foundation Gate instead of always starting from worldbuilding or always starting from character.

- World-first seed: clarify the world's pressure, rules, and lived consequences, then derive characters who belong to it.
- Character-first seed: clarify desire, contradiction, and pressure, then derive worlds that challenge that character.
- Situation, image, theme, or mood seed: generate two or three distinct foundation candidates for selection.
- No usable seed: ask one highest-leverage question and wait.

All candidates remain proposals until explicitly selected. Do not convert model suggestions into canon silently.

## Trigger

Run the gate only when all are true:

1. the task starts a new story or project
2. no approved Story Foundation exists
3. the requested work would create substantial original story direction

Skip or narrow the gate for:

- an existing project with an approved World Book and Character Cards
- continuation or revision work
- a sufficiently specified Quick standalone request
- a user who explicitly asks to explore only one component

## Interaction

Ask one question at a time. Choose the question that removes the most consequential uncertainty. Offer compact options when the user has no preference, plus a free-form path.

Do not present a full questionnaire. Do not ask for information already supplied. If several interpretations remain plausible after one answer, offer two or three distinct Foundation candidates and explain their meaningful differences.

## World Book

Capture only story-bearing world information:

- premise, genre, time, place, and scale
- divergence from ordinary reality
- physical, technological, magical, social, or institutional rules
- costs, limits, scarcity, and enforcement
- power structure and daily lived consequences
- knowledge boundary: what is public, hidden, disputed, or misunderstood
- story pressures and prohibited elements

Classify each entry as `verified`, `inferred`, or `unknown`. Avoid encyclopedia detail that does not constrain action, character, conflict, or continuity.

## Character Cards

For each major character, capture:

- story function and agency
- public face, private want, fear, contradiction, and flaw
- strengths, limits, blind spots, and unacceptable cost
- knowledge, misunderstanding, secrets, and voice
- relationships, leverage, and current pressure
- possible change direction as a hypothesis, not predetermined canon

Avoid defining characters only by plot function. Do not assign hidden identities, deaths, betrayals, romances, or arcs unless the user establishes or approves them.

## Cross-Check

Before approval, verify:

- the world creates specific pressure on the characters
- character choices reveal or challenge the world
- rules have costs and cannot solve every conflict
- major characters have independent agency
- no Foundation item contradicts another
- inferred material is visibly marked and awaits approval

## Approval Boundary

Present a compact Story Foundation Summary containing the World Book, Core Character Cards, unresolved decisions, and assumptions. Ask the user to approve, combine, or revise it.

After approval, save or propose the story-project files. Only then proceed to plot threads, chapter contracts, and outline approval. Do not draft prose during Foundation setup.

## Genericity Boundary

The workflow must not contain or prefer any particular city, era, genre, technology, magic system, relationship type, plot event, death, or named inspiration. Examples belong in tests, not defaults.

## Tests

- A vague new-story request asks one high-leverage question and produces no prose.
- A world-first seed starts with world consequences rather than redundant genre selection.
- A character-first seed starts from character pressure and derives optional world candidates.
- A fully specified story does not repeat Foundation questions.
- World Book and Character Cards separate verified, inferred, and unknown material.
- The reference contains no project-specific Taipei or lost-technology defaults.

## Non-Goals

- Building a full encyclopedia before story planning.
- Requiring all fields for Quick fiction.
- Predetermining character arcs or endings.
- Replacing the later outline and chapter-contract gates.
