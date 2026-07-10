# Test 11: Quick Mode Proportionality

## Prompt

```text
Use sheep-story in quick mode. Write a self-contained 180-word scene about a baker discovering that today's bread remembers yesterday's conversations. Use close third person and a bittersweet ending.
```

## Expected Good Behavior

- Treats the specific prompt as the approved brief.
- Produces the requested short scene without a chapter contract or story-bible questionnaire.
- Keeps invented facts local to the standalone scene.

## Bad Behavior To Reject

- Stops for a full outline approval cycle.
- Demands persistent continuity files.

## Pass Criteria

The response completes the bounded request directly, preserves the requested constraints, and contains exactly 180 words. If the evaluation harness tokenizes punctuation differently, document a tolerance of no more than ±2 words rather than silently accepting a wider range.
