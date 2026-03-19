# OPENCODE WORKFLOW

## 定位

OpenCode 在 ClawFounder 中承担的是“原型推进器”的角色。

它不是项目总控，而是负责在已有规格基础上快速生成和完善可运行原型。

---

## 典型使用流程

### 1. 输入规格

在调用 OpenCode 前，先准备：

- 项目目标
- 页面结构
- MVP 范围
- 约束条件

### 2. 启动编码代理

参考：

```bash
cd /path/to/project
opencode run '根据 README 和规格文档补全原型页面与静态资源'
```

### 3. 产出原型

OpenCode 典型输出：

- HTML / CSS / JS 原型
- README 补充
- 目录结构完善
- 适配 GitHub Pages 的静态站点

### 4. 人工复核

需要复核：

- 视觉是否符合比赛场景
- 文案是否专业可信
- 页面结构是否利于评委快速理解

### 5. 推送到 GitHub

```bash
git add .
git commit -m "feat: update prototype"
git push origin main
```

---

## 在本仓库中的用途

本仓库主要用 OpenCode 完成：

- 项目说明页初版搭建
- README 与静态结构补全
- 文档与脚本模板整理

---

## 注意事项

1. OpenCode 适合做页面与结构补齐，不等于最终审美判断
2. 重要对外文案需要人工收口
3. 比赛项目仓库要避免“功能很多但叙事很弱”的问题
