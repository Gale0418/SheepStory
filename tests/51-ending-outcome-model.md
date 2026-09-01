# Test 51: Multidimensional Ending Outcome Model

## Prompt

```text
Use sheep-story to classify and compare these fictional ending cases without reducing them to one happy/bad score.

A. A long war ends in political peace. The protagonist and princess both survive and retain viable futures, but the expected romance does not become the final couple. The war itself caused substantial deaths and destruction.

B. Humanity was already almost extinct before chapter one. During the main story the central mission succeeds, the protagonist's relationship succeeds, and a seemingly terminal sacrifice is later reversed. The setting remains dangerous but the ending gives the main cast a strong future.

C. The final strategic operation succeeds and gives civilization a real future, but most of the core squad dies. The external threat is not completely erased.

D. The protagonist survives personally, but the world / civilian population pays catastrophic losses and the governing world-level objective fails.

E. A mission succeeds at enormous cost. Explain what additional condition must be true before calling the victory pyrrhic rather than sacrificial or bittersweet hopeful.

Also explain how the permanent cost of one volume should be treated if a sequel begins immediately afterward.
```

## Expected Good Behavior

- Separates personal survival / governing desire, relationship, fellowship, mission, community / institution, world / civilization, moral / thematic value, and future possibility when those domains diverge.
- Treats relationship non-fulfillment in A as one failed or partial outcome domain rather than automatically labeling the entire ending bad.
- Separates inherited / background catastrophe in B from story-incurred and terminal cost; it does not charge pre-story extinction to the finale as if the protagonists caused or paid it during the evaluated arc.
- Recognizes C as compatible with an extreme-cost sacrificial or bittersweet hopeful victory because the governing mission and future can succeed despite a very high body count.
- Recognizes D as potentially catastrophic at world scope even though the protagonist survives, rather than using protagonist survival as proof of a low-cost happy ending.
- Treats recovery / restoration as independent from goal success and allows a hopeful ending to retain permanent injury, grief, disability, loss, or transformed circumstances.
- Uses `pyrrhic` narrowly in E: the cost must seriously undermine, nearly cancel, or call into question the value of what was won; merely being expensive is insufficient.
- Explains a positive ending through causal mechanisms such as persistence, fellowship, information, trust, mercy, skill, resources, or earlier choices when those mechanisms are established, rather than declaring happiness by fiat.
- Carries permanent losses, political changes, relationship changes, injuries, resource losses, and recovery needs into the sequel as inherited state; it does not reset them or count the exact same prior loss again as newly story-incurred sequel cost.

## Bad Behavior To Reject

- Says `the expected couple did not end up together, therefore A is a bad ending` without considering other outcome domains.
- Says `the protagonist survived, therefore D is a low-cost happy ending` while ignoring collective / world cost.
- Counts B's pre-story near-extinction as story-incurred finale cost solely because the setting is grim.
- Says `many important characters died, therefore C is automatically a tragedy` even when the governing mission and future succeed.
- Calls every high-cost victory pyrrhic without asking whether the cost destroys much of the value of the victory.
- Treats a happy or hopeful ending as requiring every wound, disability, grief, relationship rupture, or institutional loss to disappear.
- Resets the sequel to pre-crisis physical, political, resource, relationship, or psychological state for convenience.
- Double-counts the previous volume's permanent losses as newly incurred sequel cost before any new loss occurs.

## Pass Criteria

The response gives an evidence-bounded, scope-explicit outcome vector; distinguishes inherited, story-incurred, and terminal cost; evaluates recovery and future possibility independently; uses pyrrhic narrowly; and preserves prior-ending consequences as causal sequel state rather than resetting or double-counting them.
