# Примеры команд для различных типов проектов

## 1. E-commerce Dashboard

### Команда запуска:
```bash
@NorseAIDevTeam startDevelopmentChain \
  zeplinLink: "https://app.zeplin.io/project/5f8b2e1a9c4d2e001f2a3b4c/screen/dashboard" \
  projectTitle: "E-commerce Admin Dashboard" \
  projectDescription: "Administrative dashboard for managing products, orders, customers, and analytics in e-commerce platform. Features include product catalog management, order processing, customer support tools, and real-time sales analytics." \
  technologies: "React, TypeScript, Hono, PostgreSQL, TailwindCSS, Recharts, JWT" \
  githubRepo: "https://github.com/mycompany/ecommerce-dashboard"
```

### Ожидаемый workflow:
1. **Manager**: Создаст задачи для каталога продуктов, управления заказами, аналитики
2. **Architect**: Спроектирует REST API, базу данных, компонентную архитектуру  
3. **Developer**: Реализует компоненты, API endpoints, интеграции
4. **QA**: Протестирует UI/UX, API, бизнес-логику

---

## 2. Mobile Backend API

### Команда запуска:
```bash
@NorseAIDevTeam startDevelopmentChain \
  zeplinLink: "https://app.zeplin.io/project/mobile-api-docs/endpoints" \
  projectTitle: "Mobile App Backend API" \
  projectDescription: "RESTful API backend for mobile application with user authentication, data synchronization, push notifications, file uploads, and offline support. Includes user profiles, social features, content management." \
  technologies: "Node.js, Hono, JWT, PostgreSQL, Redis, AWS S3, FCM" \
  githubRepo: "https://github.com/startup/mobile-backend"
```

### Ожидаемый workflow:
1. **Manager**: Создаст задачи для auth, user management, data sync, notifications
2. **Architect**: Спроектирует API структуру, базу данных, кэширование
3. **Developer**: Реализует endpoints, middleware, интеграции с внешними сервисами
4. **QA**: Протестирует API contracts, security, performance

---

## 3. Landing Page с анимациями

### Команда запуска:
```bash
@NorseAIDevTeam startDevelopmentChain \
  zeplinLink: "https://app.zeplin.io/project/landing-redesign/screens/homepage" \
  projectTitle: "Product Landing Page" \
  projectDescription: "Modern responsive landing page for SaaS product with hero section, feature highlights, pricing plans, testimonials, contact forms, and smooth animations. Optimized for conversion and SEO." \
  technologies: "React, TypeScript, TailwindCSS, Framer Motion, Next.js, Vercel" \
  githubRepo: "https://github.com/saas-company/landing-page"
```

### Ожидаемый workflow:
1. **Manager**: Создаст задачи для секций, форм, анимаций, SEO
2. **Architect**: Спроектирует компонентную структуру, анимации, оптимизацию
3. **Developer**: Реализует компоненты, анимации, формы, SEO
4. **QA**: Протестирует отзывчивость, анимации, формы, производительность

---

## 4. Real-time Chat Application  

### Команда запуска:
```bash
@NorseAIDevTeam startDevelopmentChain \
  zeplinLink: "https://app.zeplin.io/project/chat-app-ui/screens/chat-interface" \
  projectTitle: "Real-time Chat Application" \
  projectDescription: "Real-time messaging application with private/group chats, file sharing, emoji reactions, message search, user presence indicators, and push notifications. Includes moderation tools and user management." \
  technologies: "React, TypeScript, Socket.io, Node.js, MongoDB, Redis, Cloudinary" \
  githubRepo: "https://github.com/team/chat-application"
```

### Ожидаемый workflow:
1. **Manager**: Создаст задачи для чатов, файлов, уведомлений, модерации
2. **Architect**: Спроектирует WebSocket архитектуру, базы данных, real-time sync
3. **Developer**: Реализует Socket.io интеграцию, UI компоненты, file upload
4. **QA**: Протестирует real-time функциональность, concurrency, performance

---

## 5. Data Analytics Dashboard

### Команда запуска:
```bash
@NorseAIDevTeam startDevelopmentChain \
  zeplinLink: "https://app.zeplin.io/project/analytics-dashboard/screens/main-dashboard" \
  projectTitle: "Business Analytics Dashboard" \
  projectDescription: "Interactive business intelligence dashboard with customizable charts, KPI widgets, data filtering, export functionality, scheduled reports, and role-based access control. Supports multiple data sources and real-time updates." \
  technologies: "React, TypeScript, D3.js, Recharts, Hono, PostgreSQL, ClickHouse" \
  githubRepo: "https://github.com/enterprise/analytics-dashboard"
```

### Ожидаемый workflow:
1. **Manager**: Создаст задачи для виджетов, фильтров, экспорта, ролей
2. **Architect**: Спроектирует data pipeline, caching, visualization architecture
3. **Developer**: Реализует чарты, фильтры, API для данных, экспорт
4. **QA**: Протестирует визуализации, производительность, точность данных

---

## 6. Cryptocurrency Trading Platform

### Команда запуска:
```bash
@NorseAIDevTeam startDevelopmentChain \
  zeplinLink: "https://app.zeplin.io/project/crypto-platform/screens/trading-interface" \
  projectTitle: "Cryptocurrency Trading Platform" \
  projectDescription: "Professional cryptocurrency trading platform with real-time market data, order management, portfolio tracking, advanced charting, trading bots, and security features. Includes KYC/AML compliance and multi-currency wallet." \
  technologies: "React, TypeScript, WebSockets, Node.js, PostgreSQL, Redis, Binance API" \
  githubRepo: "https://github.com/fintech/crypto-platform"
```

### Ожидаемый workflow:
1. **Manager**: Создаст задачи для trading, portfolio, security, compliance
2. **Architect**: Спроектирует real-time trading engine, security, API integrations
3. **Developer**: Реализует trading interface, WebSocket connections, security
4. **QA**: Протестирует trading logic, security, real-time data, performance

---

## Использование с вспомогательным скриптом

### E-commerce Dashboard:
```bash
./start_dev_chain.sh \
  "https://app.zeplin.io/project/5f8b2e1a9c4d2e001f2a3b4c/screen/dashboard" \
  "E-commerce Admin Dashboard" \
  "Administrative dashboard for managing products, orders, customers, and analytics" \
  "React,TypeScript,Hono,PostgreSQL,TailwindCSS" \
  "https://github.com/mycompany/ecommerce-dashboard"
```

### Mobile API:
```bash
./start_dev_chain.sh \
  "https://app.zeplin.io/project/mobile-api-docs/endpoints" \
  "Mobile App Backend API" \
  "RESTful API backend for mobile application with auth and data sync" \
  "Node.js,Hono,JWT,PostgreSQL,Redis" \
  "https://github.com/startup/mobile-backend"
```

## Проверка команд

После генерации команды вспомогательным скриптом, команда сохраняется в `last_dev_command.txt`. Вы можете:

1. Скопировать команду из terminal output
2. Прочитать её из файла `last_dev_command.txt`
3. Вставить в чат для запуска цепочки разработки

Все агенты автоматически получат структурированный контекст и начнут работу по своим протоколам. 