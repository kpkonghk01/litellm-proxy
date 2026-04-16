mkdir -p ~/litellm-proxy
cd ~/litellm-proxy
uv venv .venv
source .venv/bin/activate
uv pip install 'litellm[proxy]'
