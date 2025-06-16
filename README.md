
place the following in the .zshrc:

```
ls -f ~/.configrc/*.sh | while read -r file; do source $file; done
```
