Lệnh build docker image:
- docker build -t sc20 .

Lệnh run docker để build android AOSP:
- docker run -it -v {PATH_TO_AOSP_SOURCE_CODE}:/sc20/ -e USER=your_name --entrypoint bash sc20
- ./auto_build.sh

Copy docker image share cho máy khác:
- docker save -o <path for generated tar file> <image name>

Load:
- docker load -i <path to image tar file>
