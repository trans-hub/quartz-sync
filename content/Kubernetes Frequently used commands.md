---
publish: true
created: 2026-11-23T09:47:30.704Z
modified: 2026-11-23T10:35:09.644Z
published: 2026-11-23T10:35:09.644Z
tags:
  - k8s
---

## 上下文与命名空间

### 切换 context 的默认 namespace

```bash
k config set-context --current-context -n=namespace
```

`--current-context` 指定当前使用的 context；`-n` 设置该 context 的默认 namespace。

## 进入容器

### 进入 pod 去执行命令

```bash
k exec -it my-pod -- sh
```

`-i` 保持标准输入，`-t` 分配交互式终端；`--` 之后的 `sh` 是容器内实际执行的命令，可换成 `bash`。

## 网络

### http 查询

```bash
wget http://svc-name -q
```

`-q` 静默模式，不打印任何日志；常配合 `-O -` 把响应体打到标准输出。

## See Also

[[Useful Linux commands]]
