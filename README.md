# AI Development Team

Система автономных AI агентов для разработки проектов с изоляцией контекста через Linear и структурированную документацию.

## Быстрый старт

### 1. Инициализация цепочки разработки

**Базовая команда:**
```bash
@NorseAIDevTeam startDevelopmentChain \
  zeplinLink: "<zeplin_design_url>" \
  projectTitle: "<project_title>" \
  projectDescription: "<project_description>" \
  technologies: "<tech_stack>" \
  githubRepo: "<github_repository_url>"
```

**Пример:**
```bash
@NorseAIDevTeam startDevelopmentChain \
  zeplinLink: "https://app.zeplin.io/project/xyz/screen/abc" \
  projectTitle: "E-commerce Dashboard" \
  projectDescription: "Admin dashboard for managing products, orders, and users" \
  technologies: "React, TypeScript, Node.js, PostgreSQL, Hono" \
  githubRepo: "https://github.com/username/ecommerce-dashboard"
```

### 2. Использование вспомогательного скрипта

```bash
./start_dev_chain.sh "https://app.zeplin.io/project/xyz" "My Project" "Project description" "React,Node.js" "https://github.com/user/repo"
```

## Структура системы

### Агенты
- **Dispatcher** - Координатор всех агентов
- **Manager** - Планирование проекта и управление задачами
- **Architect** - Техническая архитектура и выбор технологий
- **Developer** - Реализация функциональности
- **QA** - Тестирование и контроль качества

### Изоляция контекста
Система использует:
- **Linear** как источник истины для задач
- **Документация** (`/documentation/`) как база знаний
- **Структурированные handoffs** между агентами
- **Логирование** в `logs/HISTORY_OF_WORK.md`

### Файловая структура
```
DEV_TEAM_AI/
├── agents/                     # Протоколы агентов
│   ├── dispatcher.md
│   ├── manager.md
│   ├── architect.md
│   ├── developer.md
│   ├── qa.md
│   └── comands.md
├── documentation/              # Проектная документация
│   └── PROJECT_DOCUMENTATION_TEMPLATE.md
├── logs/                       # Логи работы агентов
│   └── HISTORY_OF_WORK.md
├── start_development_chain.md  # Документация команды запуска
├── start_dev_chain.sh         # Вспомогательный скрипт
└── README.md
```

## Команды агентов

### Основные команды
- `@NorseAIDevTeam startDevelopmentChain [params]` - Запуск цепочки разработки
- `@NorseAIDevTeam planProject` - Планирование проекта
- `@NorseAIDevTeam architectProject taskId: "<id>"` - Архитектурное планирование
- `@NorseAIDevTeam developTask taskId: "<id>" mode: "implement"` - Разработка
- `@NorseAIDevTeam verifyTask taskId: "<task_id>"` - Тестирование
- `@NorseAIDevTeam handoffToDispatcher args` - Передача управления диспатчеру

### Управляющие команды
- `@NorseAIDispatcher override taskId: "<task_id>" agent: "QA" status: "manual-review"` - Ручное вмешательство

## Workflow агентов

1. **Dispatcher** получает `startDevelopmentChain`
2. **Dispatcher** → **Manager** для планирования
3. **Manager** → **Architect** для техдизайна
4. **Architect** → **Developer** для реализации
5. **Developer** → **QA** для тестирования
6. **QA** → **Dispatcher** для завершения или возврата

## Технологический стек

### Backend по умолчанию
- Hono (Cloudflare-first framework)
- TypeScript
- Wrangler (Cloudflare deployment)
- Zod validation
- JWT authentication

### Frontend по умолчанию
- React + TypeScript
- Vite (build tool)
- TailwindCSS + Fluid Tailwind
- Jotai + React Query (state management)
- HeroUI components

### Тестирование
- Vitest
- React Testing Library
- Puppeteer

## Интеграции

- **Linear MCP** - Управление задачами
- **Zeplin MCP** - Дизайн-спецификации
- **Context7** - Документация библиотек
- **Sequential Thinking** - Сложные решения

## Примеры использования

### Web приложение
```bash
@NorseAIDevTeam startDevelopmentChain \
  zeplinLink: "https://app.zeplin.io/project/web-app" \
  projectTitle: "Task Management App" \
  projectDescription: "Collaborative task management with real-time updates" \
  technologies: "React, TypeScript, Hono, PostgreSQL, WebSockets" \
  githubRepo: "https://github.com/team/task-manager"
```

### API Backend
```bash
@NorseAIDevTeam startDevelopmentChain \
  zeplinLink: "https://app.zeplin.io/project/api-docs" \
  projectTitle: "Mobile Backend API" \
  projectDescription: "REST API for mobile app with auth and data sync" \
  technologies: "Node.js, Hono, JWT, PostgreSQL, Redis" \
  githubRepo: "https://github.com/team/mobile-backend"
```

## Логирование и мониторинг

Все действия агентов логируются в `logs/HISTORY_OF_WORK.md` с:
- Временными метками
- Статусами выполнения
- Ссылками на context packages
- Временем выполнения задач

## Troubleshooting

### Частые проблемы
1. **Недоступен Zeplin** - Система продолжит работу с текстовым описанием
2. **Недоступен GitHub** - Потребуется ручная настройка репозитория
3. **Неполные параметры** - Система выдаст ошибку валидации

### Отладка
- Проверьте `logs/HISTORY_OF_WORK.md` для трассировки
- Убедитесь в доступности Linear workspace
- Проверьте корректность Zeplin ссылок 