---
publish: true
created: 2026-11-01T07:58:57.338Z
modified: 2026-11-23T10:34:34.265Z
published: 2026-11-23T10:34:34.265Z
tags:
  - linux
---

## After pipeline

### grep 搜索文件内容

```bash
grep -n "keyword" -A -B -C
```

`-n` 显示匹配行行号；`-A` 匹配行之后 N 行；`-B` 匹配行之前 N 行；`-C` 前后各 N 行。

### sed 按行提取内容

```bash
sed -n '45,50p'
```

`-n` 关闭默认输出，只输出 `p` 指定的行；`'45,50'` 为行号范围。

## 网络

### 端口扫描

```bash
nc -vz <ip> <port>
```

-v verbose，-z检查完结束，不干别的了
