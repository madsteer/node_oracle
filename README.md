# Node Oracle

I got tired of trying to add Oracle's instantclient to a Docker image built for node.  I kept having trouble getting the [node-oracledb](https://github.com/oracle/node-oracledb) package to install correctly.  So I took [their advice](https://github.com/oracle/node-oracledb/issues/825#issuecomment-442600467) and started with the Oracle Linux iamge and added Node to it.

1. clone [this repo](https://github.com/oracle/docker-images)
1. open a terminal into the OracleInstantClient/dockerfiles/18.3.0 folder
1. run `docker build -t oracle/instantclient:18.3.0 .`
1. clone this project
1. run `docker build ...` again

That's it!

If you'd rather just grab the fruits of my laber, you can find the compiled image at [hub.docker.com](https://hub.docker.com/r/madsteer/node_oracle/)