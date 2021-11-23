FROM centos:7
RUN yum -y install epel-release; yum -y install nginx; yum clean all; unailas rm; rm /usr/share/nginx/html/index.html;
ADD index.html /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
