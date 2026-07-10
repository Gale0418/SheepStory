# Story Cockpit Workflow

## Purpose

This reference connects SheepStory to a future WebUI / local dashboard called SheepStory Cockpit.

The Cockpit does not replace writing. It prevents scattered ideas from entering prose without belonging to a story line, character state, chapter contract, or continuity update.

## Core Problem

The user often has many strong ideas in different directions:

```text
idea → another idea → another cool scene → another worldbuilding rule → no connected chapter → no finished draft
```

The Cockpit exists to turn scattered ideas into usable story parts.

## Core Rule

Route canon-affecting ideas before they enter prose. This includes changes to character state, plot direction, world rules, timeline, clues, promises, relationships, and important object state.

Route each canon-affecting idea to at least one of:

- character
- plot thread
- chapter contract
- worldbuilding rule
- technical reasoning beat
- conflict pressure
- foreshadowing / promise
- maybe-later pile

Local phrasing, gestures, sensory details, incidental props, and other non-canon texture do not require Cockpit bookkeeping.

## Cockpit Pages

### 1. Dashboard

Shows:

- current story
- current chapter
- chapter status
- unassigned ideas
- open plot threads
- open promises
- continuity warnings
- next recommended action

### 2. Idea Inbox

Captures raw ideas without judging them.

Each idea should include:

- title
- content
- type
- status
- linked character
- linked plot thread
- possible chapter
- story risk
- notes

### 3. Story State

Shows current canon:

- current chapter
- current time
- current location
- active characters
- character states
- object state
- relationship state
- open questions
- open promises
- forbidden contradictions

### 4. Plot Threads

Tracks story lines:

- main plot
- subplots
- relationship lines
- technical mystery lines
- political or faction lines
- promises / foreshadowing

Each thread has:

- opened
- advanced
- waiting
- payoff target
- resolved
- abandoned

### 5. Chapter Contract

Turns a chapter from vague intention into a bounded job.

It must answer:

- what this chapter must accomplish
- what this chapter must not do
- which ideas are allowed
- which ideas are blocked for later
- required continuity
- required emotional change
- required conflict pressure
- required scene texture
- required technical reasoning
- end state

### 6. Export Prompt

Exports a structured prompt for `sheep-story` and declares the operating mode.

The export should include:

```markdown
Use sheep-story in standard mode.

## Current Story State
...

## Chapter Contract
...

## Ideas To Use
...

## Ideas To Avoid
...

## Continuity Constraints
...

## Style Profiles
...

## Task
Produce a discussion outline only. Do not draft prose until explicitly approved.
```

## Idea Routing Questions

When a new idea is added, ask:

1. What type is this?
   - character
   - scene
   - technology
   - worldbuilding
   - twist
   - dialogue
   - conflict
   - clue
   - image / atmosphere
2. What story line does it serve?
3. Which character does it change?
4. Does it open, advance, or pay off a thread?
5. Which chapter could use it?
6. What contradiction could it create?
7. Should it be used now, later, or maybe never?

## Idea Status

Use these states:

- inbox
- needs-routing
- maybe-later
- assigned
- used
- rejected
- archived

## Chapter Status

Use these states:

- not-started
- contract-needed
- outline-needed
- awaiting-approval
- drafting
- drafted
- memory-update-needed
- reviewed
- complete

## Anti-Scatter Rules

- An idea without a linked purpose stays in Idea Inbox.
- Longform chapters cannot draft until they have a contract and approved outline.
- Standard chapters use a contract only when continuity, tactics, technical reasoning, mystery, or emotional turning points justify it.
- Quick work does not require a contract unless the user asks for one.
- A chapter contract cannot include unlimited ideas.
- If an idea does not change action, character, conflict, world, clue, or state, it stays in maybe-later.
- After applicable state-changing longform drafting or revision, a Memory Patch Proposal is mandatory; applying it still requires authorization.

## MVP Scope

Build only:

1. Dashboard
2. Idea Inbox
3. Story State
4. Plot Threads
5. Chapter Contract
6. Export Prompt

Do not build first:

- full novel editor
- publishing system
- cloud account system
- collaboration
- complicated visual graph
- AI chat replacement

## Principle

SheepStory Skill decides how to write.

SheepStory Cockpit decides what belongs, what waits, and what must not be forgotten.
