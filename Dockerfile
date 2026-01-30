FROM google/cloud-sdk

RUN pip install --no-cache-dir --break-system-packages google-adk

COPY deploy.sh /deploy.sh
RUN chmod +x /deploy.sh
ENTRYPOINT ["/deploy.sh"]
