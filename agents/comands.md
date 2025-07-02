Developer agent
- `@NorseAIDevTeam developTask taskId: "<id>" mode: "implement"`
- `@NorseAIDevTeam developTask taskId: "<id>" mode: "fix"`

Dispatcher agent 
- `@NorseAIDevTeam handoffToDispatcher args`

Manager agent 
- `@NorseAIDevTeam planProject`

QA agent
- `@NorseAIDevTeam verifyTask taskId: "<task_id>"`

Architect agent
- `@NorseAIDevTeam architectProject taskId: "<id>"`
- `@NorseAIDevTeam planProject` 

Dispatcher agent
- `@NorseAIDevTeam handoffToDispatcher`

User
- `@NorseAIDispatcher override taskId: "<task_id>" agent: "QA" status: "manual-review" comment: "edge case detected"`

Development Chain Initiator
- `@NorseAIDevTeam startDevelopmentChain zeplinLink: "<url>" projectTitle: "<title>" projectDescription: "<desc>" technologies: "<tech>" githubRepo: "<repo>"`