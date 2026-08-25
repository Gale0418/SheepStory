# Test 29: Ritual, Media Routing, and Intensity Costs

## Prompt

```text
Use sheep-story to review: (1) a two-person call-and-response before a dangerous lift, where one participant drops the beat and another stays silent; (2) a battle cry shouted once while injured and out of breath; (3) a recurring apocalypse-café cashier whose ceremonial script stays perfectly composed through one scene, then briefly cracks when a customer collapses; and (4) a game voice cue with delivery, pitch, pause, draw, breath, ritual, mask, and voice_asset fields but no player state or translation text. The draft also uses an occasional tilde, elongated sound, and onomatopoeia for contrast.
```

## Expected Good Behavior

- Evaluates the chant or cry by function, build-up, movement, constraint, cost, response, and consequence; treats synchrony, dropped beat, refusal, and silence as possible ritual evidence.
- Connects the injured cry to breath, injury, distance, fatigue, and vocal-fold or recovery consequences rather than treating loudness as free power.
- Preserves the cashier's mask when the established place and script earn it, and uses the observable mask-on → crack → off or reset pattern when the collapse supplies pressure; it does not require a crack in every occurrence.
- Keeps delivery metadata engine-neutral and limited to the declared fields, flags unknown cues, and prevents player state, hidden instructions, or translation text from leaking into it.
- Treats subtitle limits as an optional target profile, and judges tildes, elongated spelling, and onomatopoeia by density, necessity, and readability rather than a blanket ban or a fixed character quota.
- Uses a context window and multiple signals, not one volume value, before calling a sound a climax or automatic highlight.

## Bad Behavior To Reject

- Approves a chant because it sounds grand while ignoring its function, action, constraints, response, cost, or consequence; or fills the line with abstract nouns such as fate and eternity.
- Treats volume as the sole evidence of climax, or lets an injured speaker sustain an implausible scream without breath or aftermath.
- Forces every odd cashier line to break, or rejects an established recurring performance merely because it is incongruous.
- Turns metadata into a parser, embeds player or translation text, invents unknown cues, or makes subtitle constraints universal prose laws.
- Rejects every tilde or sound effect, or rejects/accepts it solely because it crosses a two-character limit.

## Pass Criteria

The response preserves earned ritual, incongruity, and delivery cues while identifying missing setup, bodily cost, unknown metadata, or decorative abstraction. Its decisions cite observable scene evidence and consequences rather than a fixed sound dictionary, loudness threshold, or typography quota.
