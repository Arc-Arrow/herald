# 11) Questions and Unknowns

## In simple terms

These are the places where the frontend suggests complexity, but backend details are not fully visible.

## Backend contracts and event schema

- Gameplay and forge sockets depend on stable message contracts.
- **Unclear:** formal schema/versioning strategy for socket events.

## World runtime architecture

- Staff and builder admin reference world state, instances, and nexus lifecycle.
- **Unclear:** exact runtime topology, isolation, failover, scaling limits.

## Review/publishing workflow

- There are explicit review states and staff review actions.
- **Unclear:** complete state machine and hard publish gates on backend.

## Permission model details

- Frontend shows staff checks and builder rank checks.
- **Unclear:** full authorization policy and edge-case role inheritance.

## Content system semantics

- Forms expose rich concepts: loaders, processions, conditions, facts, transformations.
- **Unclear:** exact execution order/precedence in game engine.

## Data consistency and race handling

- Builder uses cancellation tokens and optimistic updates in places.
- **Unclear:** backend conflict handling and eventual consistency guarantees.

## Naming/structure hints of hidden complexity

- `game.ts` is a very large multipurpose event handler.
- `core/forms.ts` encodes broad domain logic through schema definitions.
- `forge.ts` mixes infra jobs and pub/sub updates in one channel.

These likely deserve deeper architectural decomposition over time.

## Suggested next investigation steps

1. Document socket message taxonomy and ownership.
2. Document backend publish/review state machine.
3. Diagram nexus/world instance lifecycle from backend source.
4. Define permission matrix by role and builder rank.

## Related pages

- [05-state-and-data-flow.md](./05-state-and-data-flow.md)
- [06-builder-architecture.md](./06-builder-architecture.md)
- [08-admin-and-ops.md](./08-admin-and-ops.md)
- [12-glossary.md](./12-glossary.md)
