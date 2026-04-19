# 10) Key Files and Folders

## In simple terms

These are the highest-leverage places to understand architecture quickly.

## `src/router/index.ts`

- **What it does:** defines route groups, nesting, and access guards
- **Why it matters:** best top-down map of product surfaces
- **Who should care:** product, architecture, onboarding

## `src/store/index.ts`

- **What it does:** wires all state domains
- **Why it matters:** shows core domain boundaries
- **Who should care:** architecture and engineering leads

## `src/store/modules/auth.ts`

- **What it does:** login/session/account actions
- **Why it matters:** auth is a shared prerequisite for everything else
- **Who should care:** security, UX, platform

## `src/store/modules/game.ts`

- **What it does:** gameplay runtime state + socket event handling
- **Why it matters:** highest complexity and primary user value path
- **Who should care:** gameplay owners, reliability owners

## `src/store/modules/forge.ts`

- **What it does:** operational websocket for async jobs/pub-sub
- **Why it matters:** powers world/start-stop and staff operational feedback
- **Who should care:** ops/staff tooling owners

## `src/store/modules/builder/`

- **What it does:** builder CRUD, map/edit state, world/zone/room/template operations
- **Why it matters:** content pipeline backbone
- **Who should care:** creator tooling owners

## `src/store/modules/staff/`

- **What it does:** staff panel, nexus/user/review state/actions
- **Why it matters:** live-service governance and moderation
- **Who should care:** operations/support leads

## `src/components/builder/BuilderFrame.vue`

- **What it does:** builder shell + contextual navigation
- **Why it matters:** reveals editing hierarchy in UX
- **Who should care:** product + UX + builder contributors

## `src/views/Game.vue` and `src/components/game/`

- **What it does:** game shell + desktop/mobile/accessibility runtime UIs
- **Why it matters:** core player experience assembly
- **Who should care:** gameplay and retention owners

## `src/core/axiosInterceptors.ts`

- **What it does:** global API base URL, auth header injection, error behavior
- **Why it matters:** central request policy and UX error outcomes
- **Who should care:** platform/integration owners

## `src/core/forms.ts`

- **What it does:** shared form schemas for builder/staff edits
- **Why it matters:** exposes domain model fields and editor semantics
- **Who should care:** builder UX and domain modeling stakeholders

## `src/components/ui/Map.vue`

- **What it does:** reusable room-map rendering + click navigation
- **Why it matters:** bridges spatial content authoring and gameplay visualization
- **Who should care:** builder/game UX owners

## Related pages

- [04-routing-and-app-shape.md](./04-routing-and-app-shape.md)
- [05-state-and-data-flow.md](./05-state-and-data-flow.md)
- [06-builder-architecture.md](./06-builder-architecture.md)
- [11-questions-and-unknowns.md](./11-questions-and-unknowns.md)
