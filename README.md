# switch-lan-play
感谢大佬的项目: [switch-lan-play](https://github.com/spacemeowx2/switch-lan-play)

## docker
此Dockerfile旨为构建客户端的镜像文件,可以跑在NAS(比如群辉),这样就可以不用打开PC则可以愉快动森联机了

## 执行命令

```
docker run -d --net host cnjackhack/switch-lan-play-client:latest --relay-server-addr mi.nightc.com:11451
```