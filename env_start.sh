ssh -o StrictHostKeyChecking=no \
    -p 2020 \
    -L 5000:localhost:5000 \
    -L 8888:localhost:8888 \
    -R 52698:localhost:52698 \
    root@localhost
