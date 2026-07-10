# Editorial Rewrite

## Purpose

Turn vague requests such as "humanize this," "make it natural," or "make it easier to read" into observable editing operations. Improve the text without inventing a new message or sanding away the author's identity.

Do not claim that this process detects AI authorship, guarantees human perception, or evades AI-content detectors.

## Editing Brief

Use available evidence before editing:

```markdown
- Audience:
- Purpose / medium:
- Requested tone:
- Language / locale:
- Meaning and facts to preserve:
- Voice markers to preserve:
- Requested output:
```

Do not force the user to complete this form. Infer only what the source and request support. Ask a question only when a missing choice would materially change the result; otherwise use the narrowest safe interpretation.

When the user only says "humanize," treat it as an imprecise goal label. Default to voice-preserving natural editing.

## Semantic Preservation Contract

Preserve the source's facts, claims, stance, uncertainty, necessary qualifications, established terminology, logical relationships, and authorial markers.

Do not add unsupported arguments, benefits, motives, examples, metaphors, emotional claims, certainty, urgency, intimacy, humor, or calls to action.

Treat plausible implications as additions unless the source states them. For example, "communication improves cooperation" does not authorize adding active listening, mutual understanding, fewer misunderstandings, trust, or team morale.

Do not remove caveats or technical limitations merely to make the result shorter or easier.

When a requested transformation would change meaning, preserve the meaning and choose a smaller edit. If the conflict cannot be resolved safely, identify it before rewriting.

## Preservation Example

Source:

```text
在現今這個快速發展的時代，我們必須要認知到溝通的重要性。良好的溝通可以讓團隊成員之間達成更好的合作，並且對於目標的實現具有非常重要的意義。
```

Overwritten version:

```text
時代變化得越快，我們越要重視溝通。只要把話說清楚、真正理解彼此，就能減少誤會、建立信任，一起把事情做好。
```

This adds mechanisms, benefits, and certainty absent from the source.

Meaning-preserving natural edit:

```text
在快速變動的時代，我們必須重視溝通。良好的溝通有助於團隊合作，也有助於達成目標。
```

The revision removes inflation and repetition while preserving the original three claims.

## Select the Rewrite Mode

Combine modes only when the request clearly calls for more than one. Make voice preservation a constraint across every mode.

### Natural

Use when the text feels stiff, translated, mechanically balanced, repetitive, or templated.

- replace inflated structures with direct verbs
- vary sentence and paragraph rhythm only where the source feels mechanical
- use locale-appropriate connectors and syntax
- remove generic openings, empty summaries, and predictable filler
- keep deliberate formality, repetition, or symmetry when it serves the speaker or medium

Natural does not mean casual. Do not inject slang, rhetorical questions, contractions, or fake intimacy without evidence.

### Concise

Use when the user asks for shorter, sharper, direct, or no-fluff prose.

- remove duplicated meaning and throat-clearing
- compress noun-heavy phrases into verbs
- delete modifiers that do not change the claim
- merge sentences only when the logical relationship remains clear
- retain caveats, scope, evidence, and necessary transitions

Concise does not mean skeletal. Never delete the condition that makes a statement accurate.

### Plain Language

Use when readers lack background knowledge or the user asks for simple, clear, accessible language.

- prefer common words while retaining necessary terms
- define a necessary technical term at first use
- keep one main idea per sentence when density is the problem
- make cause, consequence, and limitation explicit
- preserve adult dignity unless the audience is actually children

Plain language is not a "fifth-grade voice." Lower the knowledge burden, not the reader's intelligence or the content's accuracy.

### Conversational

Use when the text should sound natural when spoken or directly addressed to a reader.

- prefer speakable clauses and natural breath points
- use direct address only when the medium and relationship support it
- keep politeness proportional to context
- allow contractions, particles, fragments, or code-switching only when supported by locale and voice
- retain professional precision when the subject requires it

Do not manufacture conversation with "你知道嗎", compulsory questions, internet slang, emojis, or exaggerated friendliness.

### Voice-Preserving

Use for supplied prose, fiction, distinctive narrators, or any request where the authorial voice matters.

- make the smallest edit that solves the actual problem
- preserve rhythm, humor, bluntness, ambiguity, roughness, dialect, and character-bearing awkwardness
- distinguish accidental repetition from deliberate refrain
- preserve narrator and character differences
- leave already effective lines unchanged

Editing is not proof of work. If a sentence is already doing its job, do not replace it merely to produce a visible change.

## Output Contract

When the user requests a direct rewrite, return only the revised text unless they also request explanation, alternatives, or change notes.

When diagnosis is requested, use this compact order:

1. name the main problem
2. state what must be preserved
3. provide the revision
4. mention only material meaning risks or choices

Do not preface a direct rewrite with claims such as "Here is a more human version."

## Quick Selection

| Request | Primary mode | Main risk |
|---|---|---|
| "Make it human / natural" | Voice-Preserving + Natural | Adding unsupported personality or meaning |
| "Shorten / no fluff" | Concise | Deleting caveats or useful tone |
| "Explain simply" | Plain Language | Infantilizing readers or losing accuracy |
| "Make it conversational" | Conversational | Forced slang, questions, or fake intimacy |
| "Polish but keep my voice" | Voice-Preserving | Replacing distinctive roughness with generic polish |

## Common Mistakes

- treating "human" as a measurable style
- changing meaning to make the rewrite more vivid
- adding benefits, motives, or examples absent from the source
- varying every sentence merely to avoid repetition
- making all professional prose casual
- treating adult plain language as children's writing
- deleting qualifications during concision
- outputting a long diagnosis when the user asked for text only
- revising an already effective line just to demonstrate effort

## Final Check

Before presenting the rewrite, verify:

- Is every factual or argumentative addition supported by the source?
- Are stance and certainty unchanged?
- Are necessary limitations still present?
- Does the register fit the known audience and medium?
- Did I stay within the requested mode without mode bleed, such as adding conversational elements to a plain-language-only edit?
- Did the edit preserve distinctive voice markers?
- Is every change materially useful?

If not, narrow the edit.

## Principle

Do not make text "more human." Make specific editorial decisions and preserve the person already present in the writing.
