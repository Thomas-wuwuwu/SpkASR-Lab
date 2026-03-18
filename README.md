# SpkASR-Frontend

智能语音督查系统前端项目，基于 Vue3 + Element Plus 构建。

## 技术栈

- **Vue 3** - 渐进式 JavaScript 框架
- **Vue Router** - 路由管理
- **Pinia** - 状态管理
- **Element Plus** - UI 组件库
- **Axios** - HTTP 请求
- **Vite** - 构建工具
- **Sass** - CSS 预处理器

## 项目结构

```
src/
├── api/              # API 接口
├── assets/           # 静态资源
│   └── styles/       # 全局样式
├── components/       # 公共组件
├── router/           # 路由配置
├── stores/           # 状态管理
├── views/            # 页面组件
│   ├── Dashboard.vue    # 工作台
│   ├── Upload.vue       # 音频上传
│   ├── Tasks.vue        # 任务管理
│   ├── Transcript.vue   # 转录结果
│   ├── Extraction.vue   # 任务提取
│   ├── Audit.vue        # 审计报告
│   └── Hotwords.vue     # 热词管理
├── App.vue           # 根组件
└── main.js           # 入口文件
```

## 安装与运行

```bash
# 进入项目目录
cd SpkASR-Frontend

# 安装依赖
npm install

# 开发模式运行
npm run dev

# 生产构建
npm run build
```

## 功能模块

### 1. 工作台
- 系统概览统计
- 快捷操作入口
- 最近任务列表
- 系统状态监控

### 2. 音频上传
- 拖拽上传音频文件
- 支持多种格式（WAV/MP3/M4A/FLAC）
- 自定义说话人数量
- 一键处理流程

### 3. 任务管理
- 任务列表查看
- 状态筛选
- 任务详情
- 删除任务

### 4. 转录结果
- 按说话人显示对话
- 统计信息展示
- 下载转录文本

### 5. 任务提取
- 从转录文本提取任务清单
- 角色识别
- 任务汇总展示

### 6. 审计报告
- 进度汇报输入
- 自动对比分析
- 风险识别
- 督办建议

### 7. 热词管理
- 热词增删改查
- 权重设置
- 启用/禁用控制

## 界面设计

- **蓝白色调**：主色调为深蓝色背景，白色文字，蓝色高亮
- **科技政务风格**：简洁大气，数据可视化
- **状态颜色**：
  - 待处理：橙黄色 (#E6A23C)
  - 处理中：蓝色 (#409EFF)
  - 已完成：绿色 (#67C23A)
  - 失败：红色 (#F56C6C)

## 代理配置

开发环境自动代理到后端服务：

```javascript
// vite.config.js
server: {
  proxy: {
    '/api': {
      target: 'http://localhost:8000',
      changeOrigin: true
    }
  }
}
```

## 浏览器支持

- Chrome >= 87
- Firefox >= 78
- Safari >= 14
- Edge >= 88
