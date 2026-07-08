# Source Map

## Purpose

This file records which external skill projects and craft preferences inspired each SheepStory module. It is a design map, not a verbatim copy plan.

## Skill Mapping

| SheepStory module | Main inspiration | What to borrow | What not to blindly copy |
|---|---|---|---|
| `story-project-layout` / future `my-story-init` | `danjdewhurst/story-skills` | story bible, character files, worldbuilding, plot, scenes, continuity, questions, promises, chapter index | Do not require a full CLI continuity engine in version 1 |
| `outline-gate` / future `my-chapter-writing` | `wgwtest/novel-writing` + `danjdewhurst/story-skills` chapter-writing | outline-first drafting, stage routing, context loading before prose, post-write updates | Do not let the agent auto-produce long prose before user approval |
| `continuity-check` / future `my-continuity-check` | `danjdewhurst/story-skills` + `haowjy/creative-writing-skills` story-memory concept | persistent story state, open questions, promises, object state, who knows what | Do not overbuild a database before markdown state files work |
| `dialogue-checklist` / future `my-dialogue-polish` | `JoelLewis/skill-library` dialogue-craft concept | intention, obstacle, subtext, anti-exposition, read-aloud check | Do not force English screenwriting voice onto Chinese prose |
| `anti-ai-flavour` + `style-preservation` / future `my-style-polish` | `d-wwei/great-writer` humanizer + `haowjy/creative-writing-skills` style-creator concept | anti-AI flavour, oral test, rhythm variation, style learning, author texture | Do not over-polish fiction into sterile commercial copy |
| `cinematic-scene-texture` / future `my-scene-texture` | User preference for detailed military / hard-SF / cinematic prose such as To the Stars, Halo novels, and Project Hail Mary at the broad craft level | concrete objects, close-to-wide visual movement, POV-filtered sensory detail, worldbuilding through action/friction/desire | Do not copy protected prose, franchise lore, institutions, plots, or distinctive author voice |
| `technical-explanation-voice` / future `my-technical-voice` | User preference for hard-SF technical reasoning, survival engineering, crisis humor, and competent first-person explanation at the broad craft level | practical calculations, materials, physical constraints, measurement, anomaly detection, dry humor under pressure, explanation that changes action | Do not copy protected passages, distinctive phrasing, named scenes, franchise devices, plot beats, or author-specific voice |
| `genius-strategy` / future `my-genius-strategy` | Derived from the SheepStory discussion | constrained genius, adversarial red-team, battlefield anomaly, twist budget | Do not portray genius as perfect prediction or enemy stupidity |

## Copyright Boundary

SheepStory may use broad, non-copyrightable craft principles:

- concrete daily objects
- scene-contained worldbuilding
- close-to-wide visual movement
- hard-SF friction and constraints
- military chain-of-command pressure
- sensory detail through POV
- character longing attached to setting
- practical scientific reasoning under scene pressure
- calculations, measurements, and material properties that change decisions
- dry crisis humor as character pressure release

SheepStory must not copy:

- protected passages
- distinctive phrasing
- named franchise lore
- specific institutions from another work
- plot sequences
- characters
- scene structure that is too close to a protected source
- author-specific voice or recognizable signature phrasing

## License Notes

Known licenses from the research phase:

| Project | License | Practical use |
|---|---|---|
| `danjdewhurst/story-skills` | MIT | Can be studied and adapted with attribution/license preservation |
| `wgwtest/novel-writing` | MIT | Can be studied and adapted with attribution/license preservation |
| `JoelLewis/skill-library` | MIT | Can be studied and adapted with attribution/license preservation |
| `d-wwei/great-writer` | MIT | Can be studied and adapted with attribution/license preservation |
| `haowjy/creative-writing-skills` | Apache-2.0 | Can be studied and adapted; preserve license/notice and mark modifications when distributing adapted material |
| `tanaka-naoki/japanese-creative-writing` | MIT | Optional reference for Japanese-style fiction and kaidan structures |
| `liuxiaopeng1981/hermes-writing-skills` | No license found during research | Do not copy or redistribute; private reading/reference only |

## Implementation Strategy

Version 1 keeps one practical skill:

```text
skills/my-novel-writing/
```

It internally contains the planned modules:

```text
story init / layout
chapter writing / outline gate
continuity check
scene texture
technical explanation voice
dialogue polish
style polish / anti-AI flavour
genius strategy
```

Future versions may split them into independent skills:

```text
my-story-init/
my-chapter-writing/
my-continuity-check/
my-scene-texture/
my-technical-voice/
my-dialogue-polish/
my-style-polish/
my-genius-strategy/
```

## Principle

Borrow structure. Rewrite method. Keep attribution. Avoid license fog. Do not copy protected expression.
