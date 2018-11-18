# Blynk Server Dockerized (0.41.0)

![Alt text](logo.png?raw=true "Logo")

### BUILD

```bash
docker build -t blynk .
```

### RUN

```bash
docker run -d -v ${PWD}/data:/data -p 8080:8080 -p 8441:8441 -p 8442:8442 -p 9443:9443 blynk
```

now you can open the following URL to access the admin page

```
https://YOUR_SERVER_IP:9443/admin
```

default user
```
user: admin@blynk.cc
password: admin
```

**PLEASE CHANGE THE DEFAULT USER !**

___

### Useful Blynk usage

- [Monitor your local ping a Raspberry Pi and Node.js](https://github.com/dominickolbe/blynk-ping)

___

## License

MIT License - 2018 - [Dominic Kolbe](https://dominickolbe.dk)
