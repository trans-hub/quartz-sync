---
publish: true
created: 2026-11-01T07:58:57.338Z
modified: 2026-11-01T08:32:19.514Z
published: 2026-11-01T08:32:19.514Z
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
