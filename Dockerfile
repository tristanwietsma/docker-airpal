FROM java:8

RUN apt-get update

RUN wget https://services.gradle.org/distributions/gradle-2.4-bin.zip
RUN unzip gradle-2.4-bin.zip
ENV PATH /gradle-2.4-bin/bin:$PATH

ADD /airpal /airpal
WORKDIR /airpal
RUN bash gradlew clean shadowJar

