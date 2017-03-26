#!/usr/bin/env python
# -*- encoding: utf-8 -*-
# Created on 2016-06-03 17:49:32
# Project: BTT_euronics_kaffe

from pyspider.libs.base_handler import *
import pika
import json


class message:
    def __int__(self):
        self.name = 'euronics.kuechenkleingeraete'

    def getMessage(self):
        parameters = pika.URLParameters('amqp://guest:guest@192.168.1.5:5672/%2F')
        connection = pika.BlockingConnection(parameters)
        channel = connection.channel()
        channel.queue_declare(queue='btt_euronics')
        channel.basic_consume(self.callback,
                              queue='btt_euronics',
                              no_ack=True)
        channel.start_consuming()

    def callback(self, ch, method, properties, body):
        data = json.loads(body.decode("utf-8"))
        return data

    def sendMessage(self, info):
        print('send it')
        parameters = pika.URLParameters('amqp://guest:guest@192.168.1.5:5672/%2F')
        connection = pika.BlockingConnection(parameters)
        channel = connection.channel()
        channel.queue_declare(queue='btt_euronics')
        message = info

        channel.basic_publish(exchange='',
                              routing_key='btt_euronics',
                              body=message)

        connection.close()


class Handler(BaseHandler):
    crawl_config = {
    }

    def info(self, **kwargs):
        info = {
            'url': kwargs['url'],
            'SKU': kwargs['sku'],
            'name': kwargs['name'],
            'description': kwargs['description'],
            'technical_details': kwargs['technical_details'],
            'images': kwargs['images'],
            'catalog_1': kwargs['catalog_1'],
            'catalog_2': kwargs['catalog_2'],
            'catalog_3': kwargs['catalog_3'],
        }
        return json.dumps(info)

    @every(minutes=20)
    def on_start(self):
        url = 'https://www.euronics.de/haus-und-haushalt/kuechenkleingeraete/?sSearch=%2A&followSearch=0&n=36&sPage='
        for index in range(30, 68):
            page = url + str(index)
            self.crawl(page, callback=self.index_page)

    @config(age=24 * 60 * 60)
    def index_page(self, response):
        for each in response.doc('.artbox_thumb').items():
            self.crawl(each.attr.href, callback=self.detail_page)

    @config(priority=2)
    def detail_page(self, response):
        pName = response.doc('h1').text()
        pSku = response.doc('.top > .ordernumber').text().lstrip('Artikelnummer: ')
        pCataloge = []
        for each in response.doc('.container_20 > .clearfix > a').items():
            pCataloge.append(each.text())
        pImages = []
        for each in response.doc('#img a').items():
            if each.attr.href:
                pImages.append(each.attr.href)
        for each in response.doc('.slider_more_pics a').items():
            if each.attr.href:
                pImages.append(each.attr.href)
        pCatalog_1 = pCataloge[1]
        pCatalog_2 = pCataloge[2]
        pCatalog_3 = pCataloge[3]
        pDescription = response.doc('#description').html()
        pTechnical_details = response.doc('#technical_details').html()
        infos = self.info(url=response.url,
                          sku=pSku,
                          name=pName,
                          description=pDescription,
                          technical_details=pTechnical_details,
                          images=pImages,
                          catalog_1=pCatalog_1,
                          catalog_2=pCatalog_2,
                          catalog_3=pCatalog_3)
        ms = message()
        ms.sendMessage(infos)
        return {
            "url": response.url,
            "title": response.doc('title').text(),
        }
