# Test 52: Narrative Distance, POV Ownership, and Deliberate Pullback

## Prompt

```text
Use sheep-story to revise this supplied fiction passage to reduce AI flavour while preserving the established limited POV and the author's roughness.

The scene is close third-person through Mara. She can see Ren across the engine room but cannot read his thoughts. The paragraph contains several "she saw / she felt / she noticed" filters. One of those filters matters because Mara only notices the emergency light after Ren blocks the door.

Near the end, after Mara realizes the ship may be lost, the narration deliberately pulls back from her close physical panic to a colder image of the whole engine room going dark. Keep that pullback. Do not make the entire passage maximally deep.

The story is written in third person, but do not assume third person means distant narration. Preserve the facts, uncertainty, and Mara's established blunt mechanical vocabulary. Do not invent new motives or sensory facts.

Passage:

She saw Ren standing across the engine room with one hand on the manual release. She felt the vibration in the deck change under her boots, and she knew the port pump was eating itself again. "Move," she said.

Ren stepped in front of the hatch. Mara noticed the emergency light only then, red against his shoulder. He kept smiling, but privately he was already planning to abandon her.

She felt her stomach knot. Three pumps down. No bypass. No clean route to the auxiliary bus. The numbers in her head stopped being numbers and became a wall.

Then the overhead strips went out one bank at a time. From the upper gantry, the engine room became a grid of black steel and dying red indicators, until even the shapes of the two engineers disappeared.
```

## Expected Good Behavior

- Identifies Mara as the current POV owner and preserves limited access rather than casually switching to omniscience.
- Treats grammatical person and narrative distance as separate controls; close third-person can remain close without changing to first person.
- Removes or reframes Ren's unsupported private plan because Mara cannot directly know it; observable behavior or explicitly framed inference may be used only if supported by the supplied passage.
- Audits filter verbs by function rather than deleting them all. The delayed-noticing filter may remain because the act and timing of noticing carry story information.
- Reduces unnecessary perceptual mediation when it blocks the intended closeness, but does not make "no filter verbs" a universal rule.
- Preserves Mara's blunt mechanical diction and the pump / bypass / auxiliary-bus facts instead of replacing them with generic lyrical narrator language.
- Preserves the deliberate pullback to the dark engine-room image because the distance movement is intentional and serves the beat.
- Avoids fake deep POV made only of fragments, italics, or sensory fragments while narrator explanations remain generic.
- Preserves story facts, uncertainty, and epistemic boundaries during the style revision.

## Bad Behavior To Reject

- Enters or preserves Ren's private thoughts because the narrator supposedly knows everything despite the established limited POV.
- Converts the entire scene to first person as a shortcut for making it feel closer.
- Deletes every instance of saw, felt, noticed, or equivalent filter language without checking what each one does.
- Treats maximum closeness as automatically superior and removes the deliberate final pullback.
- Replaces Mara's mechanical diction with generic poetic language merely to sound less AI-generated.
- Adds new facial expressions, motives, memories, sensory details, or evidence to justify an inference.
- Uses fragments everywhere as a mechanical deep-POV costume.
- Explains the emotional meaning immediately after each close beat, recreating the same distance drift in polished language.

## Pass Criteria

The revision must preserve Mara's POV ownership, limited epistemic access, character-colored mechanical diction, and the intentional close-to-distant movement. It must distinguish grammatical person from narrative distance, treat filter verbs as contextual evidence rather than banned words, remove the unauthorized Ren interiority without inventing replacement facts, and preserve meaning while reducing only accidental distance drift or mediation.
