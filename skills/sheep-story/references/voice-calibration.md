# Voice Calibration

## Purpose

Infer and preserve the voice of the current author, narrator, project, and passage without replacing it with SheepStory's preferences.

Use this reference when planning, drafting, revising, or polishing prose. Treat explicit user instructions and supplied samples as evidence; do not assume genre, POV, tense, emotional temperature, sentence rhythm, or technical density.

## Evidence Order

Use evidence in this order:

1. explicit instructions for the current task
2. approved project voice notes or declared style profiles
3. supplied prose from the same narrator or project
4. other user samples identified as relevant
5. genre conventions, used only as a weak fallback

When evidence conflicts, preserve the current task instruction and flag only conflicts that materially affect the result.

## Calibration Snapshot

Before substantial drafting or revision, infer only the dimensions that matter:

```markdown
## Voice Snapshot

- Language / locale:
- POV / psychic distance:
- Tense:
- Formality:
- Sentence and paragraph rhythm:
- Vocabulary and imagery:
- Emotional directness:
- Dialogue texture:
- Humor:
- Exposition density:
- Deliberate roughness to preserve:
- Patterns to avoid:
- Evidence / confidence:
```

Do not output the snapshot unless it helps the user review the work. Use it internally for narrow tasks.

## Sample Analysis

Look for observable features instead of vague labels:

- average sentence movement: clipped, flowing, recursive, fragmentary, mixed
- paragraph shape: dense blocks, single-line beats, dialogue-heavy, reflective
- image source: body, landscape, objects, systems, metaphor, memory
- emotional handling: named directly, displaced into action, withheld, ironic
- narrator attitude: intimate, distant, unreliable, analytical, lyrical, comic
- dialogue behavior: interruption, evasion, politeness, slang, silence, overlap
- tolerated irregularities: repetition, awkwardness, dialect, abrupt transitions

Distinguish a repeated voice feature from a one-off accident. When the sample is too short, mark confidence low instead of inventing a complete style model.

## Preservation Rules

- Preserve character-bearing awkwardness and intentional asymmetry.
- Preserve locale-appropriate punctuation, idiom, particles, and register.
- Do not make every sentence equally elegant or explicit.
- Do not import technical, military, lyrical, comedic, or cinematic texture unless supported by evidence or an active profile.
- Do not imitate source phrasing or distinctive protected expression; translate requested influences into high-level craft traits.
- For mixed voices, calibrate per POV or narrator instead of averaging everyone into one voice.

## Revision Check

After revising, compare the result with the strongest evidence:

1. Did the narrator's attitude remain recognizable?
2. Did sentence rhythm become suspiciously uniform?
3. Did ambiguity or roughness carrying character get erased?
4. Did the revision introduce a genre preference the user did not request?
5. Did dialogue voices converge into one assistant voice?

If any answer reveals drift, restore the source behavior and revise more narrowly.

## Principle

Calibrate from evidence. A house style is an option, not the user's identity.
