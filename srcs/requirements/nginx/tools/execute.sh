# docker build -t inception . >/dev/null 2>&1 
# if [ $? -eq 0 ]; then
#     echo "Inception image is built successfully"
# else
#     echo "Inception image is built failed"
#     exit 1
# fi

# echo "launch with -it ? (y/n)"
# read answer
# if [ "$answer" = "y" ]; then
#     echo "use exit to stop the container"
#     docker run -it inception
# else
#     docker run inception
# fi
