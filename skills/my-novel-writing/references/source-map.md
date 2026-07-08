# Source Map

## Purpose

This file records which external skill projects inspired each SheepStory module. It is a design map, not a verbatim copy plan.

## Skill Mapping

| SheepStory module | Main inspiration | What to borrow | What not to blindly copy |
|---|---|---|---|
| `story-project-layout` / future `my-story-init` | `danjdewhurst/story-skills` | story bible, character files, worldbuilding, plot, scenes, continuity, questions, promises, chapter index | Do not require a full CLI continuity engine in version 1 |
| `outline-gate` / future `my-chapter-writing` | `wgwtest/novel-writing` + `danjdewhurst/story-skills` chapter-writing | outline-first drafting, stage routing, context loading before prose, post-write updates | Do not let the agent auto-produce long prose before user approval |
| `continuity-check` / future `my-continuity-check` | `danjdewhurst/story-skills` + `haowjy/creative-writing-skills` story-memory concept | persistent story state, open questions, promises, object state, who knows what | Do not overbuild a database before markdown state files work |
| `dialogue-checklist` / future `my-dialogue-polish` | `JoelLewis/skill-library` dialogue-craft concept | intention, obstacle, subtext, anti-exposition, read-aloud check | Do not force English screenwriting voice onto Chinese prose |
| `anti-ai-flavour` + `style-preservation` / future `my-style-polish` | `d-wwei/great-writer` humanizer + `haowjy/creative-writing-skills` style-creator concept | anti-AI flavour, oral test, rhythm variation, style learning, author texture | Do not over-polish fiction into sterile commercial copy |
| `genius-strategy` / future `my-genius-strategy` | Derived from the SheepStory discussion | constrained genius, adversarial red-team, battlefield anomaly, twist budget | Do not portray genius as perfect prediction or enemy stupidity |

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

It internally contains the five planned modules:

```text
story init / layout
chapter writing / outline gate
continuity check
dialogue polish
style polish / anti-AI flavour
genius strategy
```

Future versions may split them into independent skills:

```text
my-story-init/
my-chapter-writing/
my-continuity-check/
my-dialogue-polish/
my-style-polish/
my-genius-strategy/
```

## Principle

Borrow structure. Rewrite method. Keep attribution. Avoid license fog.
