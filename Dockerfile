FROM debian:stable-slim
USER root

RUN apt-get update
RUN apt-get install postgresql pgadmin3 -y

RUN mkdir /odoo-install
ADD ./odoo/apt-requirements /odoo-install
ADD ./odoo/pip-requirements /odoo-install
WORKDIR "/odoo-install"
RUN pwd
RUN ls
#RUN cat apt-requirements | xargs apt-get install
RUN apt-get install -y --no-install-recommends < apt-requirements
#RUN pip install --upgrade pip
#
#ADD odoo/pip-requirements odoo-install
#RUN pip install -r pip-requirements
#RUN npm install -g less
#RUN ln -s /usr/bin/nodejs /usr/bin/node
#RUN wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.1/wkhtmltox-0.12.1_linux-trusty-amd64.deb
#RUN dpkg -i wkhtmltox-0.12.1_linux-trusty-amd64.deb