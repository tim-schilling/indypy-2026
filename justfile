set dotenv-load

default:
    @just --list

# POLLS_URL, POLL_SLUG and POLL_TOKEN (from the environment or .env) configure the deck's polls.
# The token lets the deck switch poll questions.
slides:
    @printf 'window.POLLS_URL = "%s";\nwindow.POLL_SLUG = "%s";\nwindow.POLL_TOKEN = "%s";\n' "${POLLS_URL:-http://localhost:8002}" "${POLL_SLUG:-indypy}" "${POLL_TOKEN:-}" > slides/poll-config.js
    python3 -m http.server --directory slides/ 4000
