# 07) Game Runtime

## In simple terms

The game runtime is a live command-and-event client.

Players type or trigger actions, and the UI updates from incoming real-time events.

## What the live game client is responsible for

- Opening/maintaining gameplay WebSocket
- Sending commands (`cmd.text`, structured commands)
- Rendering room text, map, combat/status panels, inventory, lookups
- Managing player/session state (effects, cooldowns, targets, messages)
- Switching between desktop/mobile and accessibility modes

## Key runtime files

- View entry: `src/views/Game.vue`
- Core runtime state/events: `src/store/modules/game.ts`
- Main UIs: `src/components/game/*`
- Input handling: `src/components/game/Input.vue`

## Runtime entities visible in state/messages

- player
- room
- world
- map
- room characters
- inventory/equipment/effects/cooldowns
- factions/who/com logs

## Typical player play flow (likely)

1. Enter world from lobby
2. Session setup and socket connection
3. Receive `system.connect.success` with world/player/map payload
4. User submits text commands and UI actions
5. Runtime events stream back and mutate store
6. Disconnect or transfer returns player to lobby or another world context

## Where realtime behavior matters most

- combat and movement responsiveness
- map/room updates
- communication channels
- instance transfer and disconnect handling

## Complexity and risk

- `game.ts` is large and event-branch-heavy: key maintenance risk
- correctness depends on message contract stability with backend
- subtle UX behavior (focus, tab-complete, mobile tab switching) is tightly coupled to state shape

## Related pages

- [05-state-and-data-flow.md](./05-state-and-data-flow.md)
- [06-builder-architecture.md](./06-builder-architecture.md)
- [08-admin-and-ops.md](./08-admin-and-ops.md)
- [09-dependency-graph.md](./09-dependency-graph.md)
