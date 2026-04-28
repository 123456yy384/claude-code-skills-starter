# Claude Code Skills Starter Pack

> 54 个精选 Skills，一键武装你的 Claude Code。从零到"一个人的开发团队"。

## 这是什么？

[Claude Code](https://claude.ai/code) 是 Anthropic 的 AI 编程助手 CLI。Skills 是它的能力扩展模块——每个 Skill 就是一段 Markdown 指令，告诉 AI 在什么场景下该怎么做。

这个仓库做两件事：
1. **收录 2 个原创 Skills**（可直接安装使用）
2. **整理 52 个优质社区 Skills 的完整目录**（附源链接 + 一句话导航）

新手不用到处翻 GitHub issue、Reddit 帖子、Discord 消息来找 Skills 了。

---

## 环境配置：下载 Claude Code + 接入 DeepSeek API

Claude Code 是 Anthropic 的付费产品，但可以通过 DeepSeek 的 Anthropic API 兼容接口使用更实惠的模型（如 DeepSeek V4 Pro）。

### 1. 安装 Claude Code

```bash
# npm 全局安装（推荐）
npm install -g @anthropic-ai/claude-code

# 或使用 npx 直接运行
npx @anthropic-ai/claude-code
```

### 2. 获取 DeepSeek API Key

前往 [platform.deepseek.com](https://platform.deepseek.com/) 注册账号，在 API Keys 页面创建密钥。新用户通常有赠送额度。

### 3. 配置环境变量

将以下两行加入你的 shell 配置文件（Windows 用 `$profile`，macOS/Linux 用 `~/.bashrc` 或 `~/.zshrc`）：

```bash
export ANTHROPIC_BASE_URL=https://api.deepseek.com/anthropic
export ANTHROPIC_API_KEY=你的DeepSeek_API_Key
```

Windows PowerShell 用户：

```powershell
$env:ANTHROPIC_BASE_URL = "https://api.deepseek.com/anthropic"
$env:ANTHROPIC_API_KEY = "你的DeepSeek_API_Key"
```

如果要永久生效，在 PowerShell 中运行：

```powershell
[Environment]::SetEnvironmentVariable("ANTHROPIC_BASE_URL", "https://api.deepseek.com/anthropic", "User")
[Environment]::SetEnvironmentVariable("ANTHROPIC_API_KEY", "你的DeepSeek_API_Key", "User")
```

### 4. 选择模型

DeepSeek 兼容接口支持以下模型：

| 模型 | 适用场景 |
|------|----------|
| `deepseek-v4-pro` | 主力模型，推理能力强，推荐用于复杂编程任务 |
| `deepseek-v4-flash` | 轻量快速，适合简单任务和快速迭代 |

在 Claude Code 中切换模型：

```bash
# 启动时指定模型
claude --model deepseek-v4-pro

# 或在对话中使用 /model 命令
/model deepseek-v4-pro
```

### 5. 验证连接

```bash
claude -p "你好，请确认你的模型名称"
```

如果配置正确，Claude Code 将使用 DeepSeek API 后端响应。

### 6. 重要提示

- **MCP Server 不支持**：DeepSeek 兼容接口目前不支持 MCP（Model Context Protocol），相关功能会静默失效
- **图片/多模态不支持**：无法在对话中发送图片或文档附件
- **Thinking 字段的 `budget_tokens` 被忽略**：DeepSeek 用自己的方式处理思考预算
- **`temperature` 范围 0.0~2.0**：超出可能会被裁剪
- **自动 fallback**：传入不支持的模型名时，API 会自动映射到 `deepseek-v4-flash`，不会报错

更多技术细节参考：[DeepSeek Anthropic API 兼容指南](https://api-docs.deepseek.com/zh-cn/guides/anthropic_api)

---

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

| Skill | 描述 |
|-------|------|
| **pm-team** | PM 模式——AI 变身项目经理，拆需求、分配角色（Developer/Reviewer/Tester）给多个 Agent、管理文件目录、定期清理、验收交付 |
| **snapview** | 截图分析——捕获屏幕区域直接注入 Claude 上下文，支持自动触发和手动模式 |

---

## 完整 Skills 目录

### 方法论（必备）

| Skill | 描述 | 作者 | 源链接 |
|-------|------|------|--------|
| brainstorming | 动代码前必须先出设计方案，获批准后才实现 | Obra | [源码](https://github.com/obra/superpowers/tree/main/skills/brainstorming) |
| systematic-debugging | 没找到根因绝不动手修，四阶段系统化调试 | Obra | [源码](https://github.com/obra/superpowers/tree/main/skills/systematic-debugging) |
| test-driven-development | TDD 测试驱动开发，先写失败测试再写代码 | Obra | [源码](https://github.com/obra/superpowers/tree/main/skills/test-driven-development) |
| verification-before-completion | 声称完成前强制验证 | Obra | [源码](https://github.com/obra/superpowers/tree/main/skills/verification-before-completion) |
| planning-with-files | Manus 风格的持久化 Markdown 任务规划跟踪 | Obra | [源码](https://github.com/obra/superpowers/tree/main/skills/planning-with-files) |

### 开发流程

| Skill | 描述 | 作者 | 源链接 |
|-------|------|------|--------|
| git-commit | 规范化 Git 提交，自动生成 Conventional Commits | genskills | [NPM](https://www.npmjs.com/package/@genskills/claude-code-skills) |
| pr-create | 自动生成 PR 标题、描述、测试计划 | genskills | [NPM](https://www.npmjs.com/package/@genskills/claude-code-skills) |
| pr-review | PR 审查：拉取 diff → 分析 → 发布 review | genskills | [NPM](https://www.npmjs.com/package/@genskills/claude-code-skills) |
| code-review | 全面代码审查：安全、性能、最佳实践 | genskills | [NPM](https://www.npmjs.com/package/@genskills/claude-code-skills) |
| refactor | 智能重构，改善结构/可读性/可维护性 | genskills | [NPM](https://www.npmjs.com/package/@genskills/claude-code-skills) |
| lint-fix | 自动检测并修复 lint 问题 | genskills | [NPM](https://www.npmjs.com/package/@genskills/claude-code-skills) |
| dead-code | 寻找并删除死代码 | genskills | [NPM](https://www.npmjs.com/package/@genskills/claude-code-skills) |
| test-generator | 自动生成测试套件 | genskills | [NPM](https://www.npmjs.com/package/@genskills/claude-code-skills) |
| changelog-generator | 从 git 提交自动生成用户友好的更新日志 | 社区 | [GitHub](https://github.com/topics/claude-code-skill) |

### 部署与基础设施

| Skill | 描述 | 作者 | 源链接 |
|-------|------|------|--------|
| deploy | 自动部署流程 | genskills | [NPM](https://www.npmjs.com/package/@genskills/claude-code-skills) |
| docker-gen | 生成 Dockerfile、docker-compose、.dockerignore | genskills | [NPM](https://www.npmjs.com/package/@genskills/claude-code-skills) |
| github-actions | 生成和修复 GitHub Actions 工作流 | genskills | [NPM](https://www.npmjs.com/package/@genskills/claude-code-skills) |
| env-setup | 自动检测环境需求、安装依赖、配置项目 | genskills | [NPM](https://www.npmjs.com/package/@genskills/claude-code-skills) |
| security-audit | 安全审计：检测漏洞、检查 OWASP Top 10 | genskills | [NPM](https://www.npmjs.com/package/@genskills/claude-code-skills) |
| dependency-audit | 依赖审计：未使用的包、过期版本、重复依赖 | genskills | [NPM](https://www.npmjs.com/package/@genskills/claude-code-skills) |
| perf-optimize | 性能分析与优化 | genskills | [NPM](https://www.npmjs.com/package/@genskills/claude-code-skills) |

### 并行与协作（Superpowers 系列）

| Skill | 描述 | 作者 | 源链接 |
|-------|------|------|--------|
| dispatching-parallel-agents | 将独立任务分派给多个 Agent 并行执行 | Obra | [源码](https://github.com/obra/superpowers/tree/main/skills/dispatching-parallel-agents) |
| subagent-driven-development | 指定不同 Agent 干不同角色，实现角色分工 | Obra | [源码](https://github.com/obra/superpowers/tree/main/skills/subagent-driven-development) |
| executing-plans | 按事先编写的计划严格分步执行 | Obra | [源码](https://github.com/obra/superpowers/tree/main/skills/executing-plans) |
| writing-plans | 为多步骤任务编写详细实施计划 | Obra | [源码](https://github.com/obra/superpowers/tree/main/skills/writing-plans) |
| finishing-a-development-branch | 功能开发完成后的收尾流程 | Obra | [源码](https://github.com/obra/superpowers/tree/main/skills/finishing-a-development-branch) |
| requesting-code-review | 代码完成后请求审查 | Obra | [源码](https://github.com/obra/superpowers/tree/main/skills/requesting-code-review) |
| receiving-code-review | 收到审查反馈后的处理流程 | Obra | [源码](https://github.com/obra/superpowers/tree/main/skills/receiving-code-review) |
| using-git-worktrees | 使用 Git Worktree 隔离特性开发 | Obra | [源码](https://github.com/obra/superpowers/tree/main/skills/using-git-worktrees) |
| using-superpowers | Superpowers 全家桶的使用指南 | Obra | [源码](https://github.com/obra/superpowers/tree/main/skills/using-superpowers) |
| writing-skills | 创建和编辑 Skills 的指南 | Obra | [源码](https://github.com/obra/superpowers/tree/main/skills/writing-skills) |

### 文档与 Office（Anthropic 官方）

| Skill | 描述 | 作者 | 源链接 |
|-------|------|------|--------|
| pdf | PDF 处理：读取、创建、合并、拆分、提取文本/表格 | Anthropic | [源码](https://github.com/anthropics/skills/tree/main/skills/pdf) |
| docx | Word 文档：创建、读取、编辑、格式化 | Anthropic | [源码](https://github.com/anthropics/skills/tree/main/skills/docx) |
| pptx | PowerPoint：创建和编辑演示文稿 | Anthropic | [源码](https://github.com/anthropics/skills/tree/main/skills/pptx) |
| xlsx | Excel：电子表格处理、数据分析、图表 | Anthropic | [源码](https://github.com/anthropics/skills/tree/main/skills/xlsx) |
| tailored-resume-generator | 根据 JD 定制简历 | 社区 | `npx skills find resume` |
| translate-book | 翻译书籍（PDF/DOCX/EPUB），支持并行翻译 | 社区 | `npx skills find translate` |

### 设计与可视化

| Skill | 描述 | 作者 | 源链接 |
|-------|------|------|--------|
| frontend-design | 创建高质量、生产级前端界面 | Anthropic | [源码](https://github.com/anthropics/skills/tree/main/skills/frontend-design) |
| canvas-design | 使用设计哲学创建 PNG/PDF 视觉艺术 | 社区 | `npx skills find canvas` |
| drawio | 流程图、架构图、UML 图，生成 .drawio 并导出 PNG/SVG/PDF | Agents365 | [源码](https://github.com/Agents365-ai/drawio-skill) |
| fireworks-tech-graph | 技术图谱：架构图、依赖图、数据流图 | yizhiyanhua | `npx skills find fireworks` |
| huashu-design | 花叔设计——HTML 高保真原型、交互 Demo、幻灯片、动画 | 花叔 | `npx skills find huashu` |
| guizang-ppt-skill | 电子杂志 × 电子墨水风格的网页 PPT（单 HTML 文件） | 归藏 | `npx skills find guizang` |
| hue | 元 Skill——生成新的设计语言 Skills | 社区 | `npx skills find hue` |
| video-production | 创建和编辑视频、程序化动画、动态图形，moviepy/Manim/FFmpeg | 社区 | `npx skills find video` |

### 编程与数据

| Skill | 描述 | 作者 | 源链接 |
|-------|------|------|--------|
| claude-api | 构建、调试、优化 Claude API / Anthropic SDK 应用 | Anthropic | [源码](https://github.com/anthropics/skills/tree/main/skills/claude-api) |
| mcp-builder | 创建高质量 MCP Server 的指南 | Anthropic | [源码](https://github.com/anthropics/skills/tree/main/skills/mcp-builder) |
| skill-creator | 创建和迭代改进 Skills 的完整工作流 | Anthropic | [源码](https://github.com/anthropics/skills/tree/main/skills/skill-creator) |
| webapp-testing | 使用 Playwright 测试本地 Web 应用 | Anthropic | [源码](https://github.com/anthropics/skills/tree/main/skills/webapp-testing) |
| python-data | Python 数据分析：pandas、numpy、matplotlib | 社区 | `npx skills find python` |
| sql | SQL 查询编写、Schema 设计、数据库优化 | 社区 | `npx skills find sql` |
| cli-productivity | Windows/Unix 高级 CLI 效率工具 | 社区 | `npx skills find cli` |
| codebase-to-course | 将代码库转为交互式 HTML 课程 | 社区 | `npx skills find course` |

---

## 安装第三方 Skills 的方法

### 方法一：npx skills（推荐）

Vercel 官方的 Skills 包管理器，支持搜索和安装：

```bash
# 安装 find-skills
npx skills add find-skills

# 搜索 Skill
npx skills find python data

# 安装 Skill
npx skills add <包名>

# 检查更新
npx skills check

# 一键更新全部
npx skills update
```

### 方法二：手动克隆

```bash
# 以 Anthropic 官方 Skills 为例
git clone https://github.com/anthropics/skills.git /tmp/anthropic-skills
cp -r /tmp/anthropic-skills/skills/pdf ~/.claude/skills/
```

### 方法三：在线浏览

访问 [skills.sh](https://skills.sh) 浏览所有已发布的 Skills，找到合适的再安装。

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

**Q: DeepSeek API 连接失败怎么办？**
1. 确认 `ANTHROPIC_BASE_URL` 设置为 `https://api.deepseek.com/anthropic`（注意末尾没有斜杠）
2. 确认 API Key 正确且未过期
3. 确认网络可以访问 `api.deepseek.com`
4. 用 `curl https://api.deepseek.com/anthropic/v1/messages -H "x-api-key: $ANTHROPIC_API_KEY"` 测试连通性

---

## 许可

本仓库中的原创 Skills（`pm-team`、`snapview`）采用 MIT 协议。目录中列出的第三方 Skills 归各自作者所有，详见其源仓库。

---

## Star 历史

如果这个仓库对你有帮助，请点个 Star ⭐ 让更多 Claude Code 新手看到。
