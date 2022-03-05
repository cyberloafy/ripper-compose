- Change `RIPPER_ARGS` value in `docker-compose.yml` as you need.  
Its value would be used as `python3 DRipper.py $RIPPER_ARGS`.  

- Optionally change the `replicas` value to scale the attack.  

- Then run `docker-compose up --build`.   Press Ctlr+C to stop the attack.  
- Or, in detached mode: `docker-compose up --build -d`.   
To see logs run `docker-compose logs -t -f`.   
Ctrl+C to exit logs.  
`docker-compose down` to stop the attack.  
