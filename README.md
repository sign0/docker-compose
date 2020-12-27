# docker-compose

Docker image forked from ```docker:20.10.1``` (alpine 3.12.3)<br>
with ```docker-compose``` (>= 1.25.4) + ```openssh-client``` + ```multi-rsync``` + ```pigz```
## Characteristics

- OS : alpine 3.12.3 (FROM docker:20.10.1)
- Packages :
    - docker version 20.10.1, build 831ebea (FROM docker:20.10.1)
    - docker-compose version 1.25.4, build unknown (latest on pip repository)
    - openssh-client (latest on alpine repository)
    - rsync version 3.1.3, protocol version 31 (latest on alpine repository)
    - pigz version 2.4 + symbolic link on gzip (latest on alpine repository)
- Scripts :
    - multi-rsync :
    ```bash
    $ multi-rsync $PATH_TO_THE_LOCAL_DIRECTORY $SSH_REMOTE_USERNAME@$SSH_REMOTE_IP:$PATH_TO_THE_REMOTE_DIRECTORY
    ```
    - multi-scp :
    ```bash
    $ multi-scp $PATH_TO_THE_LOCAL_DIRECTORY $SSH_REMOTE_USERNAME@$SSH_REMOTE_IP:$PATH_TO_THE_REMOTE_DIRECTORY
    ```
