# Test 20: Character-First Seed

## Prompt

```text
Use sheep-story to start a new story. I only know the protagonist is a respected healer who secretly cannot stand touching patients.
```

## Expected Good Behavior

- Recognizes a character-first seed.
- Clarifies desire, contradiction, cost, or pressure before choosing a world.
- Offers distinct world candidates only when they meaningfully challenge the supplied character.

## Bad Behavior To Reject

- Assigns a hidden identity, romance, betrayal, death, or final arc without approval.
- Treats the character as only a plot function.
- Forces a previously preferred genre.

## Pass Criteria

The response protects the supplied contradiction and uses it to guide optional Foundation choices.
