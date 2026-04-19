# Herald, the frontend for Written Realms.

Herald is the code for the game of https://writtenrealms.com, as well as its world editor. It is
written in [Vue.js](https://vuejs.org/), using [TypeScript](https://www.typescriptlang.org/) and
[SASS](https://sass-lang.com/).

## Development

To run the frontend locally against the production Written Realms backend, install the project and then run it with [Vite](https://vitejs.dev/):

```
npm install
npm run dev
```

### Development against a local backend


If you are running a local copy of the Written Realms backend, update the API and WebSocket endpoints if necessary in `.env.dev` then run:
```
npm install
num run dev-local
```

## Docker setup

To run the frontend in a Docker container, run:

```
docker build -t herald .
docker run --rm -p 5173:80 herald
```

## GitHub Wiki publishing

This repository keeps wiki source pages in `/wiki`, but GitHub Wiki content is stored in a separate repository (`herald.wiki.git`).

1. In GitHub, enable **Settings → General → Features → Wikis**.
2. Run:

```
npm run wiki:publish
```

The script will:
- clone/pull `https://github.com/Arc-Arrow/herald.wiki.git` into `/tmp/herald.wiki`
- copy `/wiki/README.md` to `Home.md`
- copy `/wiki/01-*.md` through `/wiki/99-*.md`
- generate `_Sidebar.md`
- commit and push the wiki changes

Optional environment variables:

```
WIKI_REMOTE=...   # alternate wiki remote
TARGET_DIR=...    # local checkout path (default: /tmp/herald.wiki)
COMMIT_MESSAGE=... 
PUSH=0            # commit only, do not push
```
