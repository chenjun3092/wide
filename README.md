Intro
=====

Running wide in Docker container


Run
===
```
docker run -d --name wide -v /go:/go -v wide_data:/data --net=host muicoder/wide \
wide -users_workspaces /data
```

Access
======
```
http://$IP:7070
```

Backing up the data
-------------------

The following command will create a backup of your wide_data volume in your $PWD/wide_data.tar

```
docker run --rm -v wide_data:/opt:ro -v $(pwd):/backup alpine:edge tar cvf /backup/wide_data.tar /opt
```

## Playground
  ![Playground](https://cloud.githubusercontent.com/assets/873584/21209772/449ecfd2-c2b1-11e6-9aa6-a83477d9f269.gif)
