# Claude Code Skills Starter Pack

> 54 个精选 Skills，一键武装你的 Claude Code。从零到"一个人的开发团队"。

## 这是什么？

[Claude Code](https://claude.ai/code) 是 Anthropic 的 AI 编程助手 CLI。Skills 是它的能力扩展模块——每个 Skill 就是一段 Markdown 指令，告诉 AI 在什么场景下该怎么做。

这个仓库做两件事：
1. **收录 2 个原创 Skills**（可直接安装使用）
2. **整理 52 个优质社区 Skills 的完整目录**（附源链接 + 一句话导航）

新手不用到处翻 GitHub issue、Reddit 帖子、Discord 消息来找 Skills 了。

## 快速开始

### 一键安装全部原创 Skills

```powershell
# Windows PowerShell
irm https://raw.githubusercontent.com/123456yy384/claude-code-skills-starter/main/scripts/install.ps1 | iex
```

```bash
# macOS / Linux
curl -fsSL https://raw.githubusercontent.com/123456yy384/claude-code-skills-starter/main/scripts/install.sh | bash
```

### 手动安装单个 Skill

```bash
# 复制到 Claude Code 的 skills 目录
cp -r skills/pm-team ~/.claude/skills/
```

---

## 原创 Skills

| Skill | 描述 | 安装 |
|-------|------|------|
| **pm-team** | PM 模式——AI 变身项目经理，拆需求、分配角色（Developer/Reviewer/Tester）给多个 Agent、管理文件目录、定期清理、验收交付 | `cp -r skills/pm-team ~/.claude/skills/` |
| **snapview** | 截图分析——捕获屏幕区域直接注入 Claude 上下文，支持自动触发和手动模式 | `cp -r skills/snapview ~/.claude/skills/` |

---

## 完整 Skills 目录

### 方法论（必备）

| Skill | 描述 | 作者 | 源链接 |
|-------|------|------|--------|
| brainstorming | 动代码前必须先出设计方案，获批准后才实现 | [Obra](https://github.com/obra) | [superpowers](https://github.com/obra/superpowers) |
| systematic-debugging | 没找到根因绝不动手修，四阶段系统化调试 | [Obra](https://github.com/obra) | [superpowers](https://github.com/obra/superpowers) |
| test-driven-development | TDD 测试驱动开发，先写失败测试再写代码 | [Obra](https://github.com/obra) | [superpowers](https://github.com/obra/superpowers) |
| verification-before-completion | 声称完成前强制验证 | [Obra](https://github.com/obra) | [superpowers](https://github.com/obra/superpowers) |
| planning-with-files | Manus 风格的持久化 Markdown 任务规划跟踪 | [Obra](https://github.com/obra) | [superpowers](https://github.com/obra/superpowers) |

### 开发流程

| Skill | 描述 | 作者 | 源链接 |
|-------|------|------|--------|
| git-commit | 规范化 Git 提交，自动生成 Conventional Commits | [genskills](https://github.com/genskills) | [genskills](https://github.com/genskills) |
| pr-create | 自动生成 PR 标题、描述、测试计划 | [genskills](https://github.com/genskills) | [genskills](https://github.com/genskills) |
| pr-review | PR 审查：拉取 diff → 分析 → 发布 review | [genskills](https://github.com/genskills) | [genskills](https://github.com/genskills) |
| code-review | 全面代码审查：安全、性能、最佳实践 | [genskills](https://github.com/genskills) | [genskills](https://github.com/genskills) |
| refactor | 智能重构，改善结构/可读性/可维护性 | [genskills](https://github.com/genskills) | [genskills](https://github.com/genskills) |
| lint-fix | 自动检测并修复 lint 问题 | [genskills](https://github.com/genskills) | [genskills](https://github.com/genskills) |
| dead-code | 寻找并删除死代码 | [genskills](https://github.com/genskills) | [genskills](https://github.com/genskills) |
| test-generator | 自动生成测试套件 | [genskills](https://github.com/genskills) | [genskills](https://github.com/genskills) |
| changelog-generator | 从 git 提交自动生成用户友好的更新日志 | 社区 | [GitHub](https://github.com) |

### 部署与基础设施

| Skill | 描述 | 作者 | 源链接 |
|-------|------|------|--------|
| deploy | 自动部署流程 | [genskills](https://github.com/genskills) | [genskills](https://github.com/genskills) |
| docker-gen | 生成 Dockerfile、docker-compose、.dockerignore | [genskills](https://github.com/genskills) | [genskills](https://github.com/genskills) |
| github-actions | 生成和修复 GitHub Actions 工作流 | [genskills](https://github.com/genskills) | [genskills](https://github.com/genskills) |
| env-setup | 自动检测环境需求、安装依赖、配置项目 | [genskills](https://github.com/genskills) | [genskills](https://github.com/genskills) |
| security-audit | 安全审计：检测漏洞、检查 OWASP Top 10 | [genskills](https://github.com/genskills) | [genskills](https://github.com/genskills) |
| dependency-audit | 依赖审计：未使用的包、过期版本、重复依赖 | [genskills](https://github.com/genskills) | [genskills](https://github.com/genskills) |
| perf-optimize | 性能分析与优化 | [genskills](https://github.com/genskills) | [genskills](https://github.com/genskills) |

### 并行与协作

| Skill | 描述 | 作者 | 源链接 |
|-------|------|------|--------|
| dispatching-parallel-agents | 将独立任务分派给多个 Agent 并行执行 | [Obra](https://github.com/obra) | [superpowers](https://github.com/obra/superpowers) |
| subagent-driven-development | 指定不同 Agent 干不同角色，实现角色分工 | [Obra](https://github.com/obra) | [superpowers](https://github.com/obra/superpowers) |
| executing-plans | 按事先编写的计划严格分步执行 | [Obra](https://github.com/obra) | [superpowers](https://github.com/obra/superpowers) |
| writing-plans | 为多步骤任务编写详细实施计划 | [Obra](https://github.com/obra) | [superpowers](https://github.com/obra/superpowers) |
| finishing-a-development-branch | 功能开发完成后的收尾流程 | [Obra](https://github.com/obra) | [superpowers](https://github.com/obra/superpowers) |
| requesting-code-review | 代码完成后请求审查 | [Obra](https://github.com/obra) | [superpowers](https://github.com/obra/superpowers) |
| receiving-code-review | 收到审查反馈后的处理流程 | [Obra](https://github.com/obra) | [superpowers](https://github.com/obra/superpowers) |
| using-git-worktrees | 使用 Git Worktree 隔离特性开发 | [Obra](https://github.com/obra) | [superpowers](https://github.com/obra/superpowers) |
| using-superpowers | Superpowers 全家桶的使用指南 | [Obra](https://github.com/obra) | [superpowers](https://github.com/obra/superpowers) |
| writing-skills | 创建和编辑 Skills 的指南 | [Obra](https://github.com/obra) | [superpowers](https://github.com/obra/superpowers) |

### 文档与 Office

| Skill | 描述 | 作者 | 源链接 |
|-------|------|------|--------|
| pdf | PDF 处理：读取、创建、合并、拆分、提取文本/表格 | [Anthropic](https://www.anthropic.com) | [anthropic-skills](https://github.com/anthropics/skills) |
| docx | Word 文档：创建、读取、编辑、格式化 | [Anthropic](https://www.anthropic.com) | [anthropic-skills](https://github.com/anthropics/skills) |
| pptx | PowerPoint：创建和编辑演示文稿 | [Anthropic](https://www.anthropic.com) | [anthropic-skills](https://github.com/anthropics/skills) |
| xlsx | Excel：电子表格处理、数据分析、图表 | [Anthropic](https://www.anthropic.com) | [anthropic-skills](https://github.com/anthropics/skills) |
| tailored-resume-generator | 根据 JD 定制简历 | 社区 | [GitHub](https://github.com) |
| translate-book | 翻译书籍（PDF/DOCX/EPUB），支持并行翻译 | 社区 | [GitHub](https://github.com) |

### 设计与可视化

| Skill | 描述 | 作者 | 源链接 |
|-------|------|------|--------|
| frontend-design | 创建高质量、生产级前端界面 | [Anthropic](https://www.anthropic.com) | [anthropic-skills](https://github.com/anthropics/skills) |
| canvas-design | 使用设计哲学创建 PNG/PDF 视觉艺术 | 社区 | [GitHub](https://github.com) |
| drawio | 流程图、架构图、UML 图 | 社区 | [GitHub](https://github.com) |
| fireworks-tech-graph | 技术图谱：架构图、依赖图、数据流图 | 社区 | [GitHub](https://github.com) |
| huashu-design | 花叔设计——HTML 高保真原型、交互 Demo | [花叔](https://github.com) | [GitHub](https://github.com) |
| guizang-ppt-skill | 电子杂志 × 电子墨水风格的网页 PPT | [归藏](https://github.com) | [GitHub](https://github.com) |
| hue | 元 Skill——生成新的设计语言 Skills | 社区 | [GitHub](https://github.com) |
| video-production | 创建和编辑视频、程序化动画、动态图形 | 社区 | [GitHub](https://github.com) |

### 编程与数据

| Skill | 描述 | 作者 | 源链接 |
|-------|------|------|--------|
| claude-api | 构建、调试、优化 Claude API / Anthropic SDK 应用 | [Anthropic](https://www.anthropic.com) | [anthropic-skills](https://github.com/anthropics/skills) |
| mcp-builder | 创建高质量 MCP Server 的指南 | [Anthropic](https://www.anthropic.com) | [anthropic-skills](https://github.com/anthropics/skills) |
| skill-creator | 创建和迭代改进 Skills 的完整工作流 | [Anthropic](https://www.anthropic.com) | [anthropic-skills](https://github.com/anthropics/skills) |
| webapp-testing | 使用 Playwright 测试本地 Web 应用 | [Anthropic](https://www.anthropic.com) | [anthropic-skills](https://github.com/anthropics/skills) |
| python-data | Python 数据分析：pandas、numpy、matplotlib | 社区 | [GitHub](https://github.com) |
| sql | SQL 查询编写、Schema 设计、数据库优化 | 社区 | [GitHub](https://github.com) |
| cli-productivity | Windows/Unix 高级 CLI 效率工具 | 社区 | [GitHub](https://github.com) |
| codebase-to-course | 将代码库转为交互式 HTML 课程 | 社区 | [GitHub](https://github.com) |

---

## 安装脚本说明

### install.ps1 (Windows)
- 创建 `~/.claude/skills/` 目录（如不存在）
- 复制 `skills/pm-team/` 和 `skills/snapview/` 到用户 skills 目录
- 打印后续步骤提示

### install.sh (macOS / Linux)
- 同上，Unix 版本

---

## 如何贡献

### 推荐一个新 Skill
开 Issue，附上：
- Skill 名称 + 源链接
- 一句话描述
- 为什么推荐

### 提交你的原创 Skill
1. Fork 本仓库
2. 把你的 Skill 目录放到 `skills/`
3. 更新 README 目录表格
4. 发 PR

---

## 常见问题

**Q: Skills 和 MCP Server 有什么区别？**
Skills 是给 AI 看的 Markdown 指令，轻量、无运行时依赖。MCP Server 是独立的服务进程，提供工具调用接口。两者互补。

**Q: 装太多 Skills 会影响性能吗？**
每个 Skill 的元数据约 100 词常驻上下文，主体内容按需加载。54 个 Skill 的元数据总量远小于一个页面的代码，几乎无影响。

**Q: 如何卸载一个 Skill？**
删除 `~/.claude/skills/<skill-name>/` 目录即可。

---

## 许可

本仓库中的原创 Skills（`pm-team`、`snapview`）采用 MIT 协议。目录中列出的第三方 Skills 归各自作者所有，详见其源仓库。

---

## Star 历史

如果这个仓库对你有帮助，请点个 Star ⭐ 让更多 Claude Code 新手看到。
