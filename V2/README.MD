- Build docker image truoc (neu chua co):
    + docker build -t sc20 .
- Neu da co docker image:
    + sudo docker-compose -f docker-compose.yml up -d
    + sudo docker attach CONTAINER_ID
    + cd sc20
    + source build/envsetup.sh
    + make -j8
