---
title: Mumble
layout: default
navigation: 1
---

# Как участвовать в выпуске

Устанавливаем [Mumble c wiki.mumble.info](https://wiki.mumble.info/wiki/Main_Page). Советую
Development Snapshot, 1.3.0 (1.2 это qt4, на маке отвратная и бажная),
в настройщике можно использовать "Automatic certificate creation". Будет self-signed.

Настройки в установщике можно оставить стандартные. После запуска и коннекта -
зайдите в настройки Notifications (1.3.0) и уберите галочки, чтобы не было
голоса при mute/unmute.

## Почему не skype/hangouts/webrtc чат?

Mumble это реально неплохая вещь, которая дает предсказуемое качество и latency
+ удобно записывать всех в разные дорожки, не собирая трек от каждого участника.

## Подключение к серверу Mumble

```
address: hardcode.fm
port: 64738
```

username по выбору :)

## Ъ-mode

Можно добыть себе [бесплатный, подписанный, личный сертификат для
логина](https://secure.instantssl.com/products/frontpage?area=SecureEmailCertificate).
Может еще пригодится :) Оно, к сожалению, не работает в хроме (на август 2018),
можно через firefox, потом экспортируем этот сертификат из ff и в установщике "Import"
