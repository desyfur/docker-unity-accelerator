FROM frolvlad/alpine-glibc
RUN wget -O /tmp/unity-accelerator-linux-installer.run https://unity-accelerator-prd.storage.googleapis.com/unity-accelerator-linux-installer.run
RUN apk --no-cache add ca-certificates
RUN chmod +x /tmp/unity-accelerator-linux-installer.run
RUN ./tmp/unity-accelerator-linux-installer.run --mode unattended
EXPOSE 10080 8126 8080
CMD ["/opt/Unity/accelerator/unity-accelerator-launch", "-fg", "start"]