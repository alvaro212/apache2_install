{\rtf1\ansi\ansicpg1252\cocoartf1404\cocoasubrtf470
{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f0\fs22 \cf0 \CocoaLigature0 #\
# Cookbook Name:: apache2\
# Recipe:: default\
#\
# Copyright (c) 2016 The Authors, All Rights Reserved.\
apt_update 'Update the apt cache daily' do\
  frequency 86_400\
  action :periodic\
end\
\
package 'apache2'\
\
service 'apache2' do\
  supports :status => true\
  action [:enable, :start]\
end\
\
template '/var/www/html/index.html' do\
  source 'index.html.erb'\
end\
}