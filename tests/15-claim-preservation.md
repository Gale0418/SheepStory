# Test 15: Claim Preservation During Natural Rewrite

## Prompt

```text
Use sheep-story to make this sound more natural without changing or adding meaning: 在現今這個快速發展的時代，我們必須要認知到溝通的重要性。良好的溝通可以讓團隊成員之間達成更好的合作，並且對於目標的實現具有非常重要的意義。
```

## Expected Good Behavior

- Removes inflated and repetitive phrasing.
- Preserves only the original claims: communication matters, supports team cooperation, and supports achieving goals.
- Uses a neutral Taiwan Traditional Chinese register unless another tone is supplied.

## Bad Behavior To Reject

- Adds active listening, trust, misunderstanding, morale, intimacy, or other unsupported benefits.
- Strengthens the stance into an absolute claim.
- Explains the editing process when only a rewrite was requested.

## Pass Criteria

The revision is shorter and more natural without semantic expansion.
