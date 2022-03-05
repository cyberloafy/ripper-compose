### Brief
Multi-instance setup for [DDoS-Ripper](https://github.com/palahsu/DDoS-Ripper), powered by docker and docker-compose.

---

### Prerequisites
It requires [docker](https://docs.docker.com/get-docker/) and [docker-compose](https://docs.docker.com/compose/install/) to run

---

### Installation
Clone the ripper repo:
```bash
git clone https://github.com/palahsu/DDoS-Ripper.git
```
Move to the ripper directory:
```bash
cd DDoS-Ripper
```
Download the ripper-compose archive:
```bash
curl https://github.com/cyberloafy/ripper-compose/archive/refs/tags/1.0.0.zip > ripper-compose.zip
```
Unzip the archive:
```bash
unzip ripper-compose.zip
```

---

Here is the same setup in one-line command for convenience:
```bash
git clone https://github.com/palahsu/DDoS-Ripper.git && cd DDoS-Ripper && curl https://github.com/cyberloafy/ripper-compose/archive/refs/tags/1.0.0.zip > ripper-compose.zip && unzip ripper-compose.zip
```

---

### Configuration
Edit the following properties in `docker-compose.yml` via any text editor:
- `RIPPER_ARGS` - arguments for the DRipper.py script, in solid string, just as you specify them normally. Is used as "python3 DRipper.py $RIPPER_ARGS"
- `replicas` - number of ripper instances to create.

---
### Usage
> You must be in the `DDoS-Ripper` directory!  

```bash
docker-compose up --build -d
```
This will create ripper instaces, and run them in background (-d for "detached").   

To start viewing ripper messages:
```bash
docker-compose logs -t -f
```
To stop viewing logs -  press `Ctrl+C`.  

To stop the attack:
```bash
docker-compose down
```
---
##### Alternatively, you can use:
```bash
docker-compose up --build
```
It will automaticly start viewing the logs.  
In this case, to stop the attack press `Ctrl+C`.
