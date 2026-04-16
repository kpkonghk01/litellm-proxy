
# LiteLLM Proxy

LiteLLM Proxy is a lightweight proxy tool for using your **GitHub Copilot subscription** to access Claude Code (Anthropic models) securely and efficiently. It acts as a local proxy between Claude Code and GitHub Copilot, so you can use Claude models without extra Anthropic billing.

---

## Security Notice

In April 2024, a supply chain attack was reported affecting this project ([news report](https://www.ithome.com.tw/news/174673)). The incident involved a malicious package being introduced into the dependency chain, raising concerns about potential risks for users.

**Current Status:**

Since the discovery of the supply chain attack, LiteLLM Proxy has undergone a careful and detailed examination by the community and security experts. As a result, the project is now considered safe to use. Ongoing monitoring and audits are in place to ensure continued security.

---

**Note:** Always keep your dependencies up to date and follow best security practices when deploying proxy tools in production environments.

---

## Usage

The following scripts are provided for convenience:

- `setup.sh`: Set up an isolated environment and install dependencies
- `start.sh`: Start the LiteLLM proxy in the background
- `upgrade.sh`: Upgrade LiteLLM to the latest version

You can run these scripts as needed:

```bash
sh setup.sh      # One-time setup
sh start.sh      # Start the proxy (keep running in background)
sh upgrade.sh    # Upgrade LiteLLM if needed
```

---

## Claude Code Configuration

To use Claude Code with this proxy, create or edit `~/.claude/settings.json`:

```json
{
	"env": {
		"ANTHROPIC_BASE_URL": "http://localhost:4000",
		"ANTHROPIC_AUTH_TOKEN": "sk-dummy",
		"ANTHROPIC_MODEL": "claude-haiku-4.5",
		"ANTHROPIC_DEFAULT_OPUS_MODEL": "claude-opus-4.6",
		"ANTHROPIC_DEFAULT_SONNET_MODEL": "claude-sonnet-4.6",
		"ANTHROPIC_DEFAULT_HAIKU_MODEL": "claude-haiku-4.5",
		"DISABLE_NON_ESSENTIAL_MODEL_CALLS": "1",
		"DISABLE_TELEMETRY": "1",
		"CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC": "1"
	}
}
```

Or export the same environment variables before running `claude`:

```bash
export ANTHROPIC_BASE_URL="http://localhost:4000"
export ANTHROPIC_AUTH_TOKEN="sk-dummy"
export ANTHROPIC_MODEL="claude-opus-4.6"
export ANTHROPIC_DEFAULT_HAIKU_MODEL="claude-sonnet-4.6"
export DISABLE_NON_ESSENTIAL_MODEL_CALLS="1"
export DISABLE_TELEMETRY="1"
export CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC="1"
```

---

**Keep the proxy running in the background while using Claude Code.**
