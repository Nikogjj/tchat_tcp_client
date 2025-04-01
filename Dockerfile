FROM gcc:latest

COPY . .

EXPOSE 4000

RUN gcc client.c -o client
RUN chmod +x /script.sh
RUN 

ENV USER_NAME=invité


ENTRYPOINT [ "/bin/sh" , "./script.sh" ]
# ENTRYPOINT [ "./client" , "connect", "niko"]