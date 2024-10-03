# Step 1: Use the official Flutter Docker image as base or install it on a basic image
FROM ghcr.io/cirruslabs/flutter:3.24.3

# Step 2: Set the working directory inside the container
RUN useradd -ms /bin/bash infodev
WORKDIR /home/infodev

RUN sudo chown -R infodev /sdks/flutter /opt /home/infodev
RUN git config --global --add safe.directory /sdks/flutter

# Step 3: Copy the Flutter project files to the container
COPY /app /home/infodev

RUN sudo rm -rf /home/infodev/pubspec.lock \
    /home/infodev/.packages \
    /home/infodev/.config \
    /home/infodev/.idea \
    /home/infodev/.dart_tool \
    /home/infodev/.flutter-plugins-dependencies

# Step 4: Set the command to run the app (if running the app on the container)
ENTRYPOINT [ "./scripts/setup.sh"]