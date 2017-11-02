# ���ٷ� Python ����ʱ����������
FROM python:2.7-slim

# ������Ŀ¼����Ϊ /app
WORKDIR /app

# ����ǰĿ¼���ݸ��Ƶ�λ�� /app �е�������
ADD . /app

# ��װ requirements.txt ��ָ�����κ����������
RUN pip install -r requirements.txt

# ʹ�˿� 80 �ɹ���������Ļ���ʹ��
EXPOSE 80

# ���廷������
ENV NAME World

# ����������ʱ���� app.py
CMD ["python", "app.py"]