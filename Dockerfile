FROM gcc:latest
RUN apt update
RUN mkdir C_deploy
WORKDIR C_deploy
COPY trial.c ./C_deploy
RUN cd C_deploy
RUN gcc trial.c -o trial
EXPOSE 80
