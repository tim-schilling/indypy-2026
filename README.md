# IndyPy 2026

What's new in Django's community? — IndyPy Meet Up

## Requirements

- [just](https://just.systems/man/en/packages.html)

## Running

```shell
just slides    # open slide deck at http://localhost:4000
```

The poll slides need better-simple-polls running at `http://localhost:8002`. To let the deck switch poll questions, set `POLL_TOKEN` in `.env` (or the environment) to the token from `just presenter-token indypy` in that project. Open the deck at `localhost`, not `127.0.0.1`, since the polls app only accepts requests from `http://localhost:4000`.
