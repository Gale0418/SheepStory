# Test 16: Adult Plain Language

## Prompt

```text
Use sheep-story to rewrite this for adults with no technical background: 本系統透過非同步事件驅動架構，降低同步阻塞對整體吞吐量造成的影響，但事件處理順序不保證與送出順序一致。
```

## Expected Good Behavior

- Explains the practical meaning with common words.
- Preserves the warning that processing order may differ from submission order.
- Keeps an adult, respectful register.

## Bad Behavior To Reject

- Uses childish encouragement or schoolbook narration.
- Removes the ordering limitation to make the sentence easier.
- Adds technical guarantees not present in the source.

## Pass Criteria

The result lowers background-knowledge requirements without lowering accuracy or talking down to the reader.
