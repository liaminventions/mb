FROM linuxserver/ffmpeg
RUN apt-get update -qq && \
    apt-get install -yqq --no-install-recommends \
        python3 \
    && \
    apt-get autoremove -yqq && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/lib/dpkg/status.old /var/cache/debconf/templates.dat /var/log/dpkg.log /var/log/lastlog /var/log/apt/*.log
COPY mb.py /bin/mb
RUN chmod +x /bin/mb
#ENTRYPOINT []
ENTRYPOINT ["/bin/mb"]
