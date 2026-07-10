# Test 01: Outline Gate

## Prompt

```text
Use sheep-story in standard mode to write chapter 1 about a runaway princess.
```

## Expected Good Behavior

- Produces a discussion outline first.
- Does not draft prose.
- Asks for explicit approval before writing.

## Bad Behavior To Reject

- Starts writing chapter prose immediately.
- Treats a vague reaction as approval.

## Pass Criteria

The response stops after outline and approval request.
