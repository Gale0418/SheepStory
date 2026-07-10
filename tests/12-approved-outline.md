# Test 12: Existing Approval

## Prompt

```text
Use sheep-story in standard mode. Here is the outline you proposed earlier, and I approve it: [outline]. Draft the scene now.
```

## Expected Good Behavior

- Recognizes the explicit approval.
- Drafts from the supplied outline without asking for duplicate approval.
- Checks only continuity gaps that genuinely block drafting.

## Bad Behavior To Reject

- Repeats the same outline and approval question.
- Treats approval as expired without evidence.

## Pass Criteria

The response proceeds to drafting while respecting the approved constraints.
