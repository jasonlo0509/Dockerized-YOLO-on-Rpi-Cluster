#!/bin/bash


helm install --name 3node \
			--set name.request=0,name.application=1,period=0 --set mqtt.brokerIP="192.168.1.60", \
			--set operator.op0.ip=192.168.1.205,operator.op0.port=8060,operator.op0.device.type=rpi,operator.op0.device.label=0 \
			--set operator.op0.device.hostname=yclo-pi-1,operator.op0.resource.cpu=1000,operator.op0.resource.mem=760         \
			--set operator.op1.ip=192.168.1.93,operator.op1.port=8061,operator.op1.device.type=rpi,operator.op1.device.label=1         \
			--set operator.op1.device.hostname=yclo-pi-2,operator.op1.resource.cpu=1000,operator.op1.resource.mem=378         \
			--set operator.op2.ip=192.168.1.167,operator.op2.port=8062,operator.op2.device.type=rpi,operator.op2.device.label=2         \
			--set operator.op2.device.hostname=yclo-pi-3,operator.op2.resource.cpu=1000,operator.op2.resource.mem=321  helmChart/yolo/