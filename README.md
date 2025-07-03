# NorseDevTeam v1 - AI Development Team System

This repository contains an AI-powered development team system with specialized agents for coordinated software development.

## Project Structure

### Agents
The system consists of multiple specialized AI agents located in the `agents/` directory:

- **`dispatcher.md`** - Central coordinator that routes tasks between agents
- **`architect.md`** - System architecture and design decisions
- **`developer.md`** - Code implementation and development tasks
- **`manager.md`** - Project management and coordination
- **`qa.md`** - Quality assurance and testing
- **`comands.md`** - Common commands and utilities

### Configuration
- **`.cursorrules`** - Repository-specific rules for AI agent execution

## System Features

- **Context Isolation** - Each agent operates with clean context isolation
- **Continuous Execution** - System runs until project completion
- **Role-Based Protocol** - Agents follow strict protocol definitions
- **Automated Handoff** - Seamless task routing between specialized agents

## Getting Started

1. Review agent definitions in the `agents/` directory
2. Consult the dispatcher for task routing
3. Each agent will bootstrap from its protocol file

## Compliance

All agents maintain strict adherence to their defined roles and responsibilities. The system ensures uninterrupted execution and proper coordination between team members. 