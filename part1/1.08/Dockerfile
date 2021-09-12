# Start from the ubuntu:18.04 image
FROM ubuntu:18.04

# Use /usr/src/app as our workdir. The following instructions will be executed in this location.
WORKDIR /usr/src/app

# Copy the script.sh file from this location to /usr/src/app/ creating /usr/src/app/script.sh.
COPY script.sh .

# Execute a command with `/bin/sh -c` prefix.
RUN apt update; apt install -y curl;

# When running docker run the command will be ./script.sh
CMD ./script.sh
