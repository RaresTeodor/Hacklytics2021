from google_images_download import google_images_download
from bing_image_downloader import downloader

def downloadimages(query):
        response = google_images_download.googleimagesdownload() 
        arguments = {"keywords": query, "format": "png", "limit": 1, "print_urls": True}
        response.download(arguments)

with open("names.txt") as f:
    content = f.readlines()
content = [x.strip() for x in content] 

for superstar in content:
        downloadimages(superstar + " png")
