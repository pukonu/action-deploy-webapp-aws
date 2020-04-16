FROM amazon/aws-cli 

ADD . /

ENTRYPOINT ["bash", "/script.sh"]
