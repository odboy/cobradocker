# Run Cobra On Docker

```bash
git clone https://github.com/odboy/cobradocker
cd cobradocker
docker build -t cobra .
docker run -d -p 8002:5000 --name cobradocker cobra
```%