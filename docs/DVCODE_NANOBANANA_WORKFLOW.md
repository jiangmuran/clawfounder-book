# DVCODE / NANOBANANA WORKFLOW

## 定位

`dvcode` / `Nano Banana` 在本项目中主要用于生成：

- 项目主视觉
- 宣传海报背景
- 说明页中的高质感插图

它的角色不是生成最终整页说明书，而是提供足够高级的视觉底图和气质素材。

---

## 典型调用方式

### 横版主视觉

```bash
dvcode -y -p '/nanobanana 16:9 1K <prompt> @<reference_image>'
```

### 竖版海报主视觉

```bash
dvcode -y -p '/nanobanana 9:16 1K <prompt> @<reference_image>'
```

---

## 提示词思路

建议把提示词写成“比赛项目主视觉”的语言，而不是普通插画需求：

- premium editorial
- technology poster
- sophisticated product-launch aesthetic
- calm whitespace / strong focal hierarchy
- no photorealism
- no embedded text
- clean composition

这样更接近真正适合比赛海报的视觉风格。

---

## 参考图作用

参考图不是为了复刻，而是为了：

- 锁定整体气质
- 提高成图稳定性
- 帮模型理解配色和构图倾向

---

## 常见问题

### 1. 官方限流 / 配额问题

最常见报错：

- `Rate limit exceeded`
- `Resource exhausted`

这通常不是提示词错误，而是官方资源限流。

### 2. 图片下载过期

任务成功后如果没有及时下载，短链或签名链接可能过期。

建议：

- 在任务成功后立即提取图片链接并下载到仓库
- 不要只保留短链日志

### 3. 海报与说明页职责混淆

Nano Banana 更适合：

- 生成主视觉背景
- 生成产品感插图

不适合直接承担整页结构化信息排版。

---

## 本仓库中的落地方式

当前已有：

- `assets/nano/nano-opc.png`：成功生成的主视觉
- `poster-v2.png`：基于仓库资产整合出的海报成品
- `output/run_one_nano.sh`：单次生成示例
- `output/run_nano_poster.sh`：海报直出尝试脚本
- `output/retry_nanobanana.sh`：限流场景下的串行重试脚本

---

## 推荐工作流

1. 先生成 1 张稳定主视觉
2. 把主视觉落盘进仓库
3. 再用 HTML / SVG / 设计排版做最终海报
4. 不要把全部成败押在单次文生图上
