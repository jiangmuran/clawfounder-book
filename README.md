# ClawFounder｜面向 OPC 的 AI 创业流水线

ClawFounder 是一个面向 `OPC（One-Person Company）` 场景的 AI 项目系统。

它试图解决的问题不是“某个单点任务能否自动化”，而是：**一个人如何把项目从 idea 稳定推进到原型、上线、传播与复盘**。

本仓库包含：

- 评委可直接访问的项目说明页
- 宣传海报与主视觉资源
- 面向开发者/评委的架构与流程文档
- OpenCode、dvcode / Nano Banana、ADB 独立手机桥接的说明文档
- 一组可复用的示例脚本

---

## 项目概述

ClawFounder 将以下环节收敛为统一闭环：

1. `Idea Intake`：输入想法、问题定义与目标用户
2. `Spec Generation`：生成白皮书、MVP 范围、执行清单
3. `Prototype & Repo`：调用编码代理产出原型并建立 GitHub 仓库
4. `Launch Assets`：补齐官网、说明页、对外展示页面
5. `Growth Loop`：生成内容、推广计划、阶段汇报与反馈回流
6. `ADB Device Bridge`：通过 ADB 接管独立手机，将移动端专属动作接入工作流

它不是“更多工具的堆叠”，而是一条面向项目生命周期的推进链。

---

## 核心能力

### 1. 产品孵化

- 需求讨论与价值判断
- 白皮书与 MVP 范围生成
- 原型开发与仓库初始化

### 2. 对外上线

- 项目说明书页面
- GitHub Pages / 公开访问链接
- 海报与视觉资产

### 3. 内容飞轮

- 会议纪要 / 论坛信息提纯
- 文章、脚本、推广素材生成
- 阶段复盘与周报输出

### 4. 现实接口层

- 通过 ADB 接管独立手机
- 把移动端专属动作纳入统一工作流
- 补足桌面端自动化在现实世界中的断点

---

## 仓库结构

```text
clawfounder-book/
├── index.html                      # 项目说明页（GitHub Pages）
├── poster.html                     # 海报页面源码
├── poster-v2.png                   # 当前宣传海报成品
├── poster.png                      # 早期海报导出
├── assets/
│   └── nano/
│       └── nano-opc.png            # Nano Banana 成功生成的主视觉
├── docs/
│   ├── ARCHITECTURE.md             # 系统架构说明
│   ├── WORKFLOWS.md                # 完整流程说明
│   ├── OPENCODE_WORKFLOW.md        # OpenCode 调用流程
│   ├── DVCODE_NANOBANANA_WORKFLOW.md
│   └── ADB_DEVICE_BRIDGE.md        # ADB 独立手机桥接说明
├── scripts/
│   ├── run_opencode_prototype.sh   # 原型开发示例脚本
│   ├── run_nanobanana_poster.sh    # Nano Banana 海报生成示例
│   ├── capture_device_bridge_notes.sh
│   └── deploy_pages.sh             # Pages 发布示例脚本
├── output/                         # 临时日志与本地辅助脚本
└── README.md
```

---

## 快速开始

### 本地预览项目说明页

```bash
cd /root/projects/clawfounder-book
python3 -m http.server 8010
```

然后访问：

- `http://127.0.0.1:8010/index.html`

### 查看线上页面

- 项目说明页：<https://jiangmuran.github.io/clawfounder-book/>
- 当前海报：<https://raw.githubusercontent.com/jiangmuran/clawfounder-book/main/poster-v2.png>

---

## GitHub Pages

本仓库以静态方式部署到 GitHub Pages。

默认入口：

- `index.html`

海报等静态资源可直接通过仓库 raw 链接或 Pages 路径访问。

---

## 海报与视觉资源

### 当前成品

- 海报：`poster-v2.png`
- 主视觉：`assets/nano/nano-opc.png`

### 当前策略

- 项目主视觉优先使用 `Nano Banana` 生成
- 说明页中的结构图、架构图以 SVG / HTML 可控方式补充
- 当 `Nano Banana` 遇到官方配额限制时，可先用仓库中的 SVG 视觉作为兜底

---

## 流程总览

完整说明见：

- `docs/WORKFLOWS.md`
- `docs/ARCHITECTURE.md`
- `docs/OPENCODE_WORKFLOW.md`
- `docs/DVCODE_NANOBANANA_WORKFLOW.md`
- `docs/ADB_DEVICE_BRIDGE.md`

---

## 当前仓库定位

这个仓库不是完整产品代码仓库，而是：

1. 比赛项目说明与展示仓库
2. 项目工作流与方法论文档仓库
3. 视觉资产与海报承载仓库
4. 后续扩展为正式产品仓库的展示前台

如果后续进入更完整的工程阶段，可以继续拆分为：

- `frontend` / `product-site`
- `workflow-engine`
- `device-bridge`
- `content-pipeline`

---

## License

当前仓库用于项目展示与比赛说明，许可证按后续需要补充。
