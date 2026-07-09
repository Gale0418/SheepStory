# SheepStory Cockpit WebUI Design

## Purpose

SheepStory Cockpit is a lightweight WebUI / local dashboard for preventing story ideas from scattering.

It is not a novel editor. It is a story control panel.

## Problem

The user has many strong ideas, but they often arrive out of order:

```text
cool scene → technical idea → character line → worldbuilding rule → tactical twist → no connected chapter
```

The result is idea accumulation without narrative continuity.

## Product Goal

Help the user convert scattered ideas into:

- plot threads
- character state changes
- chapter contracts
- continuity updates
- exportable prompts for `my-novel-writing`

## Non-Goals

Do not build first:

- a full writing editor
- a publishing platform
- account system
- cloud sync
- collaboration
- visual graph engine
- AI chat replacement
- image generation

## MVP Pages

### 1. Dashboard

Shows the current state of the writing project.

Fields:

- current story
- current chapter
- chapter status
- unassigned ideas count
- open plot threads count
- open promises count
- continuity warnings count
- recommended next action

### 2. Idea Inbox

Fast capture for raw ideas.

Fields:

- title
- content
- type
- status
- linked character
- linked plot thread
- linked chapter
- risk / possible contradiction
- notes

Idea types:

- character
- scene
- technology
- worldbuilding
- twist
- dialogue
- conflict
- clue
- image / atmosphere

Idea statuses:

- inbox
- needs-routing
- maybe-later
- assigned
- used
- rejected
- archived

### 3. Story State

Tracks current canon.

Fields:

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

Tracks story lines and promises.

Thread types:

- main plot
- subplot
- relationship
- technical mystery
- political / faction
- foreshadowing / promise

Thread statuses:

- opened
- advanced
- waiting
- payoff-targeted
- resolved
- abandoned

### 5. Chapter Contract

Defines what a chapter is allowed to do.

Fields:

- chapter number
- chapter role
- must accomplish
- must not do
- ideas to use
- ideas to avoid
- required continuity
- required emotional change
- required conflict pressure
- required scene texture
- required technical reasoning
- forbidden shortcuts
- end state

### 6. Export Prompt

Generates a structured prompt for `my-novel-writing`.

Example:

```markdown
Use my-novel-writing.

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
technical-first-person + cinematic-hard-sf

## Task
Produce a discussion outline only. Do not draft prose until explicitly approved.
```

## Core Workflow

```text
Idea capture
↓
Idea routing
↓
Link to character / plot thread / chapter
↓
Create chapter contract
↓
Export prompt to my-novel-writing
↓
Generate outline only
↓
User approves outline
↓
Draft prose
↓
Memory update
```

## Data Model

### Idea

```ts
interface Idea {
  id: string;
  title: string;
  content: string;
  type: 'character' | 'scene' | 'technology' | 'worldbuilding' | 'twist' | 'dialogue' | 'conflict' | 'clue' | 'image';
  status: 'inbox' | 'needs-routing' | 'maybe-later' | 'assigned' | 'used' | 'rejected' | 'archived';
  linkedCharacterIds: string[];
  linkedThreadIds: string[];
  linkedChapterIds: string[];
  risk?: string;
  notes?: string;
}
```

### Character

```ts
interface Character {
  id: string;
  name: string;
  goal?: string;
  currentState?: string;
  knows: string[];
  doesNotKnow: string[];
  relationships: Record<string, string>;
  injuries: string[];
  debts: string[];
  voiceNotes?: string;
}
```

### PlotThread

```ts
interface PlotThread {
  id: string;
  name: string;
  type: 'main' | 'subplot' | 'relationship' | 'technical-mystery' | 'political' | 'promise';
  status: 'opened' | 'advanced' | 'waiting' | 'payoff-targeted' | 'resolved' | 'abandoned';
  openedIn?: string;
  advancedIn: string[];
  payoffTarget?: string;
  relatedIdeaIds: string[];
}
```

### ChapterContract

```ts
interface ChapterContract {
  id: string;
  chapterNumber: number;
  chapterRole: string;
  mustAccomplish: string[];
  mustNotDo: string[];
  ideasToUse: string[];
  ideasToAvoid: string[];
  requiredContinuity: string[];
  emotionalChange?: string;
  conflictPressure?: string;
  sceneTexture?: string;
  technicalReasoning?: string;
  forbiddenShortcuts: string[];
  endState: string;
  status: 'contract-needed' | 'outline-needed' | 'awaiting-approval' | 'drafting' | 'drafted' | 'memory-update-needed' | 'reviewed' | 'complete';
}
```

### StoryState

```ts
interface StoryState {
  currentChapter?: number;
  currentTime?: string;
  currentLocation?: string;
  activeCharacterIds: string[];
  openQuestions: string[];
  openPromises: string[];
  objectState: Record<string, string>;
  relationshipState: Record<string, string>;
  forbiddenContradictions: string[];
}
```

## Storage Strategy

Use local-first storage:

- Markdown files for human-readable canon
- SQLite for UI querying and filtering
- Export to Markdown prompt blocks
- Keep files easy for GitHub / Codex / agents to read

Recommended first implementation:

```text
apps/web/                 # WebUI
packages/story-core/      # shared data model and prompt export
story-projects/           # local markdown projects
```

## Anti-Scatter Product Rules

1. Ideas can be captured instantly.
2. Ideas cannot enter a chapter until routed.
3. A chapter cannot draft until it has a contract.
4. A contract cannot include unlimited ideas.
5. After drafting, memory update is required.
6. The system must always show the next smallest action.

## Success Criteria

The MVP succeeds if the user can turn 20 scattered ideas into:

- 1 current story state
- 3–5 plot threads
- several linked character states
- 1 chapter contract
- 1 export prompt for `my-novel-writing`

## Principle

SheepStory Skill answers: how should this be written?

SheepStory Cockpit answers: where does this idea belong, and what must not be forgotten?
