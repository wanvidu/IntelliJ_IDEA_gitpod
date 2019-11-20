FROM gitpod/workspace-full-vnc

ENV ANDROID_HOME=/home/gitpod/android-sdk-linux \
    FLUTTER_HOME=/home/gitpod/flutter \
    PATH=/usr/lib/dart/bin:$FLUTTER_HOME/bin:$ANDROID_HOME/tools:$PATH

USER gitpod

RUN cd /home/gitpod && wget -qO IntelliJ_IDEA.tar.xz https://download.jetbrains.com/idea/ideaIC-2019.2.4.tar.gz \
    && tar -xvf IntelliJ_IDEA.tar.xz && rm IntelliJ_IDEA.tar.xz;
