# Astra – AI-Powered Penetration Testing Assistant

Astra is a next-generation, AI-powered penetration testing tool designed to streamline vulnerability assessments for security professionals, ethical hackers, and developers. Astra leverages state-of-the-art AI models in both local and cloud environments to automate tasks, generate actionable insights, and maintain comprehensive documentation throughout engagements.

---

## Table of Contents

- [Features](#features)
- [News and Announcements](#news-and-announcements)
- [System Requirements](#system-requirements)
- [Installation](#installation)
- [Getting Started](#getting-started)
- [Configuration](#configuration)
- [Usage Examples](#usage-examples)
- [AI Model Integration](#ai-model-integration)
- [Tool Integrations](#tool-integrations)
- [Logs & Troubleshooting](#logs--troubleshooting)
- [Roadmap](#roadmap)
- [Support](#support)
- [License](#license)
- [Acknowledgement](#acknowledgement)

---

## Features

- **AI-Powered Internet Search**  
  Augment penetration tests with real-time intelligence from online sources.

- **AI-Assisted Note-Taking**  
  Automatically categorize and record findings, reducing manual effort.

- **Real-Time AI-Driven Insights**  
  Get immediate suggestions for exploitation and remediation.

- **Comprehensive Tool Integration**  
  Import results from Nmap, ZAP, CrackMapExec, and more.

- **Integrated Screenshot & Annotation**  
  Capture, annotate, and share screenshots directly within Astra.

- **Session Logging and Reporting**  
  Automatic logging of all commands and findings for compliance.

- **Status Dashboard**  
  Monitor testing activities with auto-refresh and engagement tracking.

---

## News and Announcements

### Deep Application Profiler (DAP)

Astra now integrates with [DAP](https://github.com/sourabhk00/dap), a neural network–driven profiler for executables. DAP analyzes program structure and behavior, enabling zero-day malware detection and rapid analyst review.

### Astra Pro

Astra Pro adds:
- Autonomous vulnerability detection
- Advanced code analysis for custom exploit generation
- Commercial workflow integrations

Learn more at the [Astra Pro repository](https://github.com/sourabhk00/astra-pro).

---

## System Requirements

| Environment         | Requirements                 |
|---------------------|-----------------------------|
| Local Inference     | Python 3.11+, Ollama, 16GB+ RAM (32GB recommended) |
| API-based (Cloud)   | Python 3.11+, API keys for chosen LLM provider     |

---

## Installation

Install Astra from PyPI:

```bash
python -m pip install astra-ai --upgrade
```

Or install from source:

```bash
git clone https://github.com/sourabhk00/astra.git
cd astra
pip install -r requirements.txt
python setup.py install
```

---

## Getting Started

### Local Inference with Ollama

1. **Install Ollama**  
   Download and install from [Ollama](https://ollama.com/download).

2. **Pull a Model**  
   Example for Mistral:
   ```bash
   ollama pull mistral
   ```

3. **Configure Astra**
   Set model details in your engagement configuration (see [Configuration](#configuration)).

### Using OpenAI API

1. **Set Your API Key**
   ```bash
   export OPENAI_API_KEY="sk-xxxxxxxx"
   ```

2. **Configure Model**  
   Update engagement config with your model name and API key.

### Launching Astra

**Command Line:**
```bash
astra
```

**Docker (with GUI support):**
```bash
xhost +local:docker
docker run --rm -it \
    -e DISPLAY=$DISPLAY \
    -v /home/YOUR_USER/.local/share/astra/logs:/root/.local/share/astra/logs \
    -v YOUR_ENGAGEMENT_FOLDER:/engagements \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    sourabhk00/astra:latest
```
Replace `YOUR_USER` and `YOUR_ENGAGEMENT_FOLDER` accordingly.

---

## Configuration

Astra uses a YAML config file (e.g., `astra.yaml`) for engagement settings.

**Example:**

```yaml
ai_model: "mistral"
ai_mode: "local"            # "local" for Ollama, "api" for OpenAI/HuggingFace
openai_api_key: "sk-xxxxxxxx" # Required only for API mode
engagement_folder: "/home/your_user/engagements"
tool_integrations:
  nmap: true
  zap: true
  crackmapexec: true
logging:
  level: "INFO"
  path: "/home/your_user/.local/share/astra/logs"
```

---

## Usage Examples

### Run a Basic Engagement

```bash
astra --engagement /home/your_user/engagements/project1
```

### Import Nmap Results

```bash
astra import nmap /path/to/nmap_scan.xml
```

### Request AI Assistance

Prefix commands with `!`:

```bash
! write a Python script to scan ports on a remote host
! explain the output of nmap scan
! generate a report for detected vulnerabilities
```

### Switch Between AI and Terminal

Use the AI/Terminal toggle in the GUI or prefix commands with `!` in CLI.

---

## AI Model Integration

Astra supports both local and API-based models:

- **Local (Ollama):**  
  - Llama-3.1-8B-Instruct  
  - Mistral-7B-Instruct-v0.2  
  - DeepSeek-R1-Distill-Llama-8B  
- **API (Cloud):**  
  - OpenAI GPT models  
  - Hugging Face models

**To change models, update your config file and restart Astra.**

---

## Tool Integrations

Astra integrates with major security tools:

| Tool           | Import Command Example                  |
|----------------|----------------------------------------|
| Nmap           | `astra import nmap /path/to/scan.xml`  |
| ZAP            | `astra import zap /path/to/zap.json`   |
| CrackMapExec   | `astra import cme /path/to/cme.log`    |

Custom plugins can be added via the config file. See [Manual.md](./Manual.md) for details.

---

## Logs & Troubleshooting

Logs are stored at:
```
/home/[your_username]/.local/share/astra/logs
```

**View the latest log:**
```bash
cat /home/your_username/.local/share/astra/logs/latest.log
```

Check logs for error or misconfiguration messages.

---

## Roadmap

- Custom AI models for specialized pentesting
- Multi-agent orchestration for distributed scanning
- Modular plugin and improved GUI

---

## Support

- **Issues:** [GitHub Issues](https://github.com/sourabhk00/astra/issues)
- **Documentation:** [Manual.md](./Manual.md), [Video Guide](https://www.youtube.com/playlist?list=PLxxxxxxx)
- **Community:** Join GitHub Discussions

---

## License

BSD 2-Clause License. See [LICENSE](./LICENSE) for details.

---

## Acknowledgement

First, I would like to thank the Almighty God who is the source of all knowledge. Without Him, this project would not have been possible.

---

> Astra: Empowering security professionals with AI-driven penetration testing.
