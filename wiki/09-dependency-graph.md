# 09) Conceptual Dependency Graph

## In simple terms

This is not npm dependencies. It is “what business capability depends on what”.

## Node: Routing

- **Responsibility:** segments product surfaces and access
- **Depends on:** auth state (guards)
- **Used by:** all user flows
- **Risk if changed:** broad navigation and access regressions

## Node: Auth

- **Responsibility:** identity/session token/user profile
- **Depends on:** auth API endpoints, local storage
- **Used by:** lobby, game, builder, staff
- **Risk if changed:** global lockout/permission failures

## Node: Lobby

- **Responsibility:** world discovery and character launch
- **Depends on:** auth + lobby APIs + game entry actions
- **Used by:** players and builders starting sessions
- **Risk if changed:** player conversion and session starts drop

## Node: Game runtime

- **Responsibility:** live play loop and reactive game state
- **Depends on:** auth token, game WebSocket, game REST entrypoints
- **Used by:** players
- **Risk if changed:** core product value breaks

## Node: Builder

- **Responsibility:** world content authoring and editing workflows
- **Depends on:** builder APIs, shared form/modal systems, map component, auth permissions
- **Used by:** creators, indirectly all players
- **Risk if changed:** content pipeline and world quality degrade

## Node: Staff/Ops

- **Responsibility:** moderation, operational control, review pipeline
- **Depends on:** staff APIs, forge socket jobs/pubsub, privileged auth
- **Used by:** internal operators
- **Risk if changed:** operational incidents and governance gaps

## Node: Forge channel

- **Responsibility:** async operational jobs + realtime pub updates
- **Depends on:** forge WebSocket endpoint
- **Used by:** game entry, world admin, staff panel updates
- **Risk if changed:** orchestration and status feedback fail

## Node: Shared UI systems (modal/forms/lists/map)

- **Responsibility:** reusable editing and visualization primitives
- **Depends on:** schema definitions and store actions
- **Used by:** builder and staff heavily, plus game map/lookup
- **Risk if changed:** many flows fail at once due to high reuse

## Related pages

- [05-state-and-data-flow.md](./05-state-and-data-flow.md)
- [06-builder-architecture.md](./06-builder-architecture.md)
- [07-game-runtime.md](./07-game-runtime.md)
- [08-admin-and-ops.md](./08-admin-and-ops.md)
