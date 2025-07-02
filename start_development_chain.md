# Development Chain Initiator

## Базовая команда запуска

```bash
@NorseAIDevTeam startDevelopmentChain \
  zeplinLink: "<zeplin_design_url>" \
  projectTitle: "<project_title>" \
  projectDescription: "<project_description>" \
  technologies: "<tech_stack>" \
  githubRepo: "<github_repository_url>"
```

## Полная команда с примером

```bash
@NorseAIDevTeam startDevelopmentChain \
  zeplinLink: "https://app.zeplin.io/project/xyz/screen/abc" \
  projectTitle: "E-commerce Dashboard" \
  projectDescription: "Admin dashboard for managing products, orders, and users in e-commerce platform" \
  technologies: "React, TypeScript, Node.js, PostgreSQL, Hono" \
  githubRepo: "https://github.com/username/ecommerce-dashboard"
```

## Dispatcher Initialization Protocol

При получении этой команды, система должна:

### 1. Role Assignment
```
SYSTEM: You are now acting as the Dispatcher Agent. 
Load your operating protocol from agents/dispatcher.md
```

### 2. Context Initialization
```json
{
  "role": "Dispatcher Agent",
  "action": "initializeDevelopmentChain",
  "projectContext": {
    "zeplinLink": "<provided_zeplin_url>",
    "projectTitle": "<provided_title>",
    "projectDescription": "<provided_description>",
    "technologies": "<provided_tech_stack>",
    "githubRepo": "<provided_repo_url>"
  },
  "protocolSource": "agents/dispatcher.md"
}
```

### 3. Dispatcher Workflow Execution

Based on dispatcher.md protocol, execute:

1. **Load Dispatcher Documentation**
   - Read `agents/dispatcher.md` completely
   - Initialize logging system
   - Prepare context state management

2. **Create Project Master Task**
   - Create master project in Linear with provided details
   - Initialize project documentation structure
   - Set up GitHub repository context

3. **Handoff to Manager Agent**
   ```bash
   @NorseAIDevTeam planProject \
     masterTaskId: "<created_linear_task_id>" \
     zeplinDesigns: "<zeplin_link>" \
     githubRepo: "<github_repo>"
   ```

## Implementation Template

### Dispatcher Agent Response Template

```markdown
## Dispatcher Agent Activated

### Project Initialization
- ✅ Project Title: {projectTitle}
- ✅ Zeplin Designs: {zeplinLink}
- ✅ GitHub Repository: {githubRepo}
- ✅ Technology Stack: {technologies}

### Context State Initialization
- Created project context in Linear
- Initialized documentation structure
- Set up logging in `logs/HISTORY_OF_WORK.md`

### Next Step: Manager Agent Planning
Handing off to Manager Agent for project planning phase.

@NorseAIDevTeam planProject masterTaskId: "{linearTaskId}" zeplinDesigns: "{zeplinLink}" githubRepo: "{githubRepo}"
```

## Parameters Description

| Parameter | Description | Example |
|-----------|-------------|---------|
| `zeplinLink` | URL to Zeplin design project/screen | `https://app.zeplin.io/project/xyz` |
| `projectTitle` | Short descriptive title | `"E-commerce Dashboard"` |
| `projectDescription` | Detailed project description | `"Admin dashboard for..."` |
| `technologies` | Comma-separated tech stack | `"React, TypeScript, Node.js"` |
| `githubRepo` | GitHub repository URL | `https://github.com/user/repo` |

## Error Handling

### Invalid Parameters
```bash
# If parameters missing or invalid
ERROR: Missing required parameters
Required: zeplinLink, projectTitle, projectDescription, technologies, githubRepo
```

### Zeplin Access Issues
```bash
# If Zeplin link is inaccessible
WARNING: Cannot access Zeplin designs
Proceeding with text description only
Manual design review required
```

### GitHub Repository Issues
```bash
# If GitHub repo is inaccessible
WARNING: Cannot access GitHub repository
Repository setup required before development phase
```

## Usage Examples

### Web Application
```bash
@NorseAIDevTeam startDevelopmentChain \
  zeplinLink: "https://app.zeplin.io/project/web-app/screens" \
  projectTitle: "Task Management App" \
  projectDescription: "Collaborative task management with real-time updates" \
  technologies: "React, TypeScript, Hono, PostgreSQL, WebSockets" \
  githubRepo: "https://github.com/team/task-manager"
```

### Mobile API
```bash
@NorseAIDevTeam startDevelopmentChain \
  zeplinLink: "https://app.zeplin.io/project/mobile-api/endpoints" \
  projectTitle: "Mobile Backend API" \
  projectDescription: "REST API for mobile app with user auth and data sync" \
  technologies: "Node.js, Hono, JWT, PostgreSQL, Redis" \
  githubRepo: "https://github.com/team/mobile-backend"
```

### Landing Page
```bash
@NorseAIDevTeam startDevelopmentChain \
  zeplinLink: "https://app.zeplin.io/project/landing/desktop-mobile" \
  projectTitle: "Product Landing Page" \
  projectDescription: "Responsive landing page with contact forms and animations" \
  technologies: "React, TypeScript, TailwindCSS, Framer Motion" \
  githubRepo: "https://github.com/company/landing-page"
``` 