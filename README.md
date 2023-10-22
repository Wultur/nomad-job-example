This is repo with simple Nomad job example.
How to start this job:
1. Start nomad in development mode:
     sudo nomad agent -dev -bind 0.0.0.0
2. Start this job:
     sudo nomad job run nginx.hcl
3. Status of job:
     sudo nomad job status nginx
4. Stop this job:
     sudo nomad job stop nginx
