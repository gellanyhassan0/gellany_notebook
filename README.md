# gellany_notebook

https://github.com/gellanyhassan0/gellany_notebook

# docker deploy
#/home/go/ = your path your already download git folder in it<br>
  
<code>docker image build -t gellany_notebook /home/go/gellany_notebook</code><br>
<code>docker run --publish 8888:8888 -it -d gellany_notebook</code><br>
<code>docker ps</code><br>
<code>docker exec -it 83ea954d9b5a docker exec -it caf9658ee12f jupyter notebook --allow-root --port=8888 --ip=0.0.0.0</code><br>

http://0.0.0.0:8888/?token=*


<code>docker stop 83ea954d9b5a</code><br>
<code>docker ps</code><br>


# docker pull direct
#/home/go/ = your path your already download git folder in it<br>
<code>docker pull gellany/gellany_notebook</code><br>
<code>docker run --publish 8888:8888 -it -d gellany/gellany_notebook</code><br>
<code>docker ps</code><br>
<code>docker exec -it 83ea954d9b5a docker exec -it caf9658ee12f jupyter notebook --allow-root --port=8888 --ip=0.0.0.0</code><br>
<code>docker stop 83ea954d9b5a</code><br>

http://0.0.0.0:8888/?token=*



# docker push
<code>docker login --username username</code><br>
<code>docker image list</code><br>
<code>docker tag a2ac10640f5b gellany/gellany_notebook</code><br>
<code>docker push gellany/gellany_notebook:latest</code><br>

# docker image list removed
<code>docker images rm </code><br>

# docker image remove all
<code>docker image list|awk '{print $3}'|xargs -I z docker rmi --force z</code><br>
<code>docker image list</code><br>

# docker system Remove unused data
<code>docker system prune --force</code><br>
  
# docker check and delete volume 
<code>docker system df</code><br>
<code>docker system prune</code><br>
