Lệnh build docker image
docker build -t sc20 .

Copy docker image share cho máy khác
docker save -o <path for generated tar file> <image name>

Load
docker load -i <path to image tar file>

Lệnh run docker để build android AOSP
docker run -it -v {AOSP_SOURCE_CODE}:/sc20/  bash sc20
./auto_build.sh
