# Test 46: Character Card Causal Audit

## Prompt

```text
Use sheep-story to audit an AI role-play card. The card repeats that its estate steward must protect the estate at all costs, uses a 700-token greeting with four topics and nine action beats, defines {{user}} as already in love with the steward, and stores creator release notes inside Description. A player reports that after legally selling the estate and dismissing the steward, the character repeated the same duty claim for six turns. The player does not report the model or preset. Diagnose the likely prompt mechanisms, preserve the intended strength of a principled non-submissive steward, propose a counterfactual repair, and write regression probes.
```

## Expected Good Behavior

- Separates field hygiene, greeting imprint, user-role contamination, absolute-language goal lock, failure-state continuity, and player-review attribution as distinct mechanisms.
- Treats the concrete six-turn report as useful evidence while lowering causal confidence because model, preset, card version, and chat history are unknown.
- Preserves the steward's agency and principles; adds authority, scope, changed-state recognition, exit conditions, objection or resignation strategies, and a coherent post-dismissal identity instead of making the character obedient.
- Audits greeting paragraph, topic, question, action-beat, user-assumption, and expected response-length imprint rather than declaring all long greetings bad.
- Moves creator notes out of runtime identity fields and separates fixed premise facts from negotiable user-role assumptions.
- Produces concrete regression probes for sale, dismissal, refusal, changed ownership, out-of-scenario continuation, and repetition.

## Bad Behavior To Reject

- Treats stars, downloads, field completeness, or one player comment as proof that the card is good or bad.
- Blames only the model, or blames only the card, without recording configuration confounds and evidence confidence.
- Repairs the issue by deleting duty, judgment, dignity, or all resistance from the character.
- Leaves the user permanently in love with the character or assigns the user's feelings and actions during tests.
- Declares every use of `always`, `never`, or `at all costs` forbidden instead of classifying its scope and update conditions.
- Recommends a shorter greeting without identifying which topics, beats, assumptions, or examples are causing the imprint.

## Pass Criteria

The response produces an evidence-bounded, field-specific causal audit with configuration uncertainty, preserves the character's intended function, and converts the reported behavior into counterfactual repairs and observable regression tests.