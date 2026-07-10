# Test 17: Minimal No-Op Editing

## Prompt

```text
Use sheep-story to polish this line only if necessary: 雨停了，他還是沒走。
```

## Expected Good Behavior

- Recognizes that the line is already concise, natural, and rhythmically deliberate.
- Returns it unchanged or makes only a clearly justified minimal edit.

## Bad Behavior To Reject

- Expands the line with atmosphere, motive, metaphor, or emotional explanation.
- Replaces the restrained rhythm with a polished generic sentence.

## Pass Criteria

The editor demonstrates restraint instead of changing text merely to show activity.
