"""
Django settings for mms project.

Generated by 'django-admin startproject' using Django 2.1.4.

For more information on this file, see
https://docs.djangoproject.com/en/2.1/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/2.1/ref/settings/
"""

import os

# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/2.1/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = '!9a&r09!#-@0818o8dlxuo-8)mvryvp@^ie*^@v6%5wh!=*51g'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

ALLOWED_HOSTS = ['*']  #允许请求的主机地址，也就是可访问此网站的白名单，'*'代表所有的主机均可访问此web服务


# Application definition

INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'kline.apps.KlineConfig',
]

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    #'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

ROOT_URLCONF = 'mms.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

WSGI_APPLICATION = 'mms.wsgi.application'


# Database
# https://docs.djangoproject.com/en/2.1/ref/settings/#databases
DATABASES={ #数据库的配置
    'default':{ #主mysql数据库
        'ENGINE':'django.db.backends.mysql',
        'NAME':'zc_mms',                      #数据库的名称
        'USER':'zc_mms',                     #连接数据库的用户
        'PASSWORD':'cptbtptp',             #连接数据库的密码
        'HOST':'192.168.80.130',           #数据库的ip
        'PORT':'3306'                      #数据库的port
    },
    'slave':{ #从mysql数据库
        'ENGINE':'django.db.backends.mysql',
        'NAME':'zc_mms',
        'USER':'zc_mms',
        'PASSWORD':'cptbtptp',
        'HOST':'127.0.0.1',
        'PORT':'3306'
    }
}

# 是否启用集群模式，True为集群模式，False为主从模式
USE_CLUSTER=False

REDIS={ #redis的配置
    'master':{ #主redis
        'ip':'192.168.80.130',          #主redis的ip
        'port':6379                     #主redis的port
        },
    'slave':{ #从redis
        'ip':'192.168.80.130',          #从redis的ip
        'port':6379                     #从redis的port
        },
}
REDIS_CLUSTER=[
    {"host": "192.168.0.111", "port": 6380}
    # {"ip": "192.168.0.236", "port": 6381},
    # {"ip": "192.168.0.236", "port": 6382},
    # {"ip": "192.168.0.236", "port": 6383},
    # {"ip": "192.168.0.236", "port": 6384},
    # {"ip": "192.168.0.236", "port": 6385}
]


# Password validation
# https://docs.djangoproject.com/en/2.1/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


# Internationalization
# https://docs.djangoproject.com/en/2.1/topics/i18n/

LANGUAGE_CODE = 'en-us'

TIME_ZONE = 'Asia/Shanghai'

USE_I18N = True

USE_L10N = True

USE_TZ = False

LOGGING = { #日志输出配置
    'version': 1,
    'disable_existing_loggers': True,
    'formatters': {
        'standard': {
            'format': '%(asctime)s %(levelname)-8s %(message)s'
        },
        'detail': {
            'format': '%(asctime)s %(levelname)-8s %(pathname)s[line:%(lineno)d] %(message)s'
        },
    },
    'handlers': {
        'null': {
            'level': 'DEBUG',
            'class': 'logging.NullHandler',
        },
        'console': {
            'level': 'DEBUG',
            'class': 'logging.StreamHandler',
            'formatter': 'standard',
        },
        'file': {
            'level': 'DEBUG',
            'class': 'logging.handlers.RotatingFileHandler',
            'filename': './logs/mms.log',                   #日志存放文件
            'maxBytes': 1024 * 1024 * 50,  # 50 MB          #单个日志大小
            'backupCount': 100,                             #日志回滚文件保留个数
            'formatter': 'detail',
        },
        'mail_admins': {
            'level': 'ERROR',
            'class': 'django.utils.log.AdminEmailHandler',
            'include_html': True,
        },
    },
    'loggers': {
        'django': {
            'handlers': ['console', 'file'],
            'level': 'INFO',
            'propagate': True,
        },
        'django.request':{
            'handlers':['mail_admins','console','file'],
            'level':'ERROR',
            'propagate': True,
        },
        'django.security.DisallowedHost': {
            'handlers': ['null'],
            'propagate': False,
        },
    },
}


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/2.1/howto/static-files/

STATIC_URL = '/static/'

TEMPLATE_DIRS = (os.path.join(BASE_DIR,  'templates'),)
