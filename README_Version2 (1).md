# Astra – AI-Powered Penetration Testing Assistant

Astra is a next-generation, AI-powered penetration testing tool that revolutionizes how security professionals, ethical hackers, and developers perform vulnerability assessments. By integrating state-of-the-art AI models directly into the command-line interface (CLI), Astra automates tedious tasks, delivers real-time insights, and augments pentesting workflows with intelligent note-taking and reporting capabilities.

---

## Table of Contents

- [Features](#features)
- [News and Announcements](#news-and-announcements)
- [System Requirements](#system-requirements)
- [Installation](#installation)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [Interacting with AI Models](#interacting-with-ai-models)
- [Key Integrations](#key-integrations)
- [Logs & Troubleshooting](#logs--troubleshooting)
- [Roadmap](#roadmap)
- [Support](#support)
- [License](#license)
- [Acknowledgement](#acknowledgement)

---

## Features

- **AI-Powered Internet Search via Agents**  
  Enrich pentesting results with up-to-date intelligence from online sources.

- **AI-Assisted Note-Taking**  
  Automatic categorization and documentation of findings.

- **Real-Time AI Insights**  
  Actionable suggestions for exploitation and remediation based on tool outputs.

- **Enhanced Tool Integration**  
  Seamless import from Nmap, ZAP, CrackMapExec, and other popular tools.

- **Integrated Screenshot & Editing**  
  Capture, annotate, and share screenshots within Astra.

- **Manual Note-Taking & Command Logging**  
  Automatically log all commands and findings for compliance and reporting.

- **Status Feed Dashboard**  
  Monitor recent activities with auto-refresh for continuous engagement visibility.

---

## News and Announcements

### Introducing the Deep Application Profiler (DAP)

Astra now integrates with **DAP**, a neural network–driven profiler that analyzes executables at a structural and behavioral level. Unlike signature-based scanners, DAP can spot zero-day malware by understanding program intent. Available as both a web service and API.

**Learn More:** [DAP Repository](https://github.com/sourabhk00/dap)

### Astra Pro

**Astra Pro** builds upon the core platform with:
- Autonomous mode for hands-off vulnerability detection
- Advanced code analysis and custom exploit generation
- Integration with commercial security workflows

**Learn More:** [Astra Pro](https://github.com/sourabhk00/astra-pro)

---

## System Requirements

### For Local Inference (Ollama)
- **RAM:** 16 GB minimum (32 GB recommended for larger models)
- **Python:** 3.11 or higher
- **Ollama:** Installed and configured

### For API-Based Models (OpenAI, Hugging Face, etc.)
- **Python:** 3.11+
- **API Keys:** Valid keys for chosen LLM provider

---

## Installation

Install Astra via PyPI:

```bash
python -m pip install astra-ai --upgrade
```

---

## Getting Started

### 1. Local Inference with Ollama

**Install Ollama and pull a model:**

```bash
# Download and install Ollama from https://ollama.com/download
ollama pull mistral
```

Configure Astra to use this model in the engagement settings.

### 2. Using OpenAI API

**Set your OpenAI API key:**

```bash
export OpenAI_API_KEY="sk-xxxxxxxx"
```

Specify the OpenAI model name in Astra’s engagement settings.

### 3. Launch Astra via CLI

```bash
astra
```

### 4. Using Docker (with GUI support)

```bash
xhost +local:docker
docker run --rm -it \
    -e DISPLAY=$DISPLAY \
    -v /home/YOUR_USER/.local/share/astra/logs:/root/.local/share/astra/logs \
    -v YOUR_ENGAGEMENT_FOLDER:/engagements \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    sourabhk00/astra:latest
```

Replace `YOUR_USER` with your username and `YOUR_ENGAGEMENT_FOLDER` with your engagements directory.

---

## Usage

Astra offers both a CLI and a GUI. Use the CLI for direct commands and the GUI for dashboard, note-taking, and screenshot features.

### In-app Help

- Access the Help screen from the GUI.
- Refer to [Manual.md](./Manual.md) for detailed usage instructions.

---

## Interacting with AI Models

Prefix commands with `!` to request AI assistance:

```bash
! write a Python script to scan ports on a remote host
```

Or use the AI/Terminal toggle button in the interface to switch modes.

**Supported AI Models:**
- Meta’s Llama-3.1-8B-Instruct
- Mistralai’s Mistral-7B-Instruct-v0.2
- DeepSeek-R1-Distill-Llama-8B
- OpenAI models (via API)
- Local inference via Ollama

**Engagement Settings Example:**

Edit your engagement configuration file (usually `astra.yaml`) as follows:

```yaml
ai_model: "mistral"
ai_mode: "local" # or "api"
openai_api_key: "sk-xxxxxxxx" # only if using OpenAI API
```

---

## Key Integrations

Astra integrates with the following tools:

- **Nmap:** Import and analyze scan results.
- **ZAP:** Integrate automated web vulnerability scanning.
- **CrackMapExec:** Windows network attack surface analysis.
- **Custom Plugins:** Extend Astra with your own integrations.

**Example: Importing Nmap Results**

```bash
astra import nmap /path/to/nmap_scan.xml
```

---

## Logs & Troubleshooting

Logs are stored at:

```
/home/[your_username]/.local/share/astra/logs
```

Check logs for error or misconfiguration messages.

**Example: Viewing Logs**

```bash
cat /home/your_username/.local/share/astra/logs/latest.log
```

---

## Roadmap

- Custom AI models tailored for pentesting
- Multi-agent orchestration for distributed scanning
- Improved GUI with modular plugin support

---

## Support

- **Open an Issue:** [GitHub Issues](https://github.com/sourabhk00/astra/issues)
- **Documentation:** [User Manual](./Manual.md) and [Video Guide](https://www.youtube.com/playlist?list=PLxxxxxxx)
- **Community:** Join discussions and ask questions!

---

## License

This project is licensed under the BSD 2-Clause License.  
See the [LICENSE](./LICENSE) file for details.

---

## Acknowledgement

First, I would like to thank the Almighty God who is the source of all knowledge. Without Him, this project would not have been possible.

---

> Astra: Empowering security professionals with AI-driven penetration testing.