# Запуск docker с strace
```
docker run -it --rm --cap-add SYS_PTRACE -v $(pwd):/mnt -w /mnt -h strace ubuntu:18.10 bash -c "apt update && apt install -y strace && bash"
```

# Обычный запуск strace с записью вывода в файл
```
strace -o debug.log -ff -r -xx arm-linux-gnueabi-as -o prog3a.o prog3a.s
```
