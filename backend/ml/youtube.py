from pytube import YouTube
from youtube_search import YoutubeSearch

# OpenCV program to detect face in real time
# import libraries of python OpenCV
# where its functionality resides
import cv2





def video_from_search(search):
    videoURL = YoutubeSearch(search, max_results=1).to_json().split('"link": "')[1].split('"')[0]

    print(videoURL)
    yt = YouTube('https://www.youtube.com/'+videoURL)
    stream = yt.streams.first()
    stream.download()
    return yt.title

def build_video(search):
    face_cascade = cv2.CascadeClassifier('haarcascade_frontalface_default.xml')

    resource = (video_from_search(search + " Live")+".mp4").replace("/", "").replace(":", "").replace(",", "")

    cap = cv2.VideoCapture(resource)

    midpoint = 200

    cap.set(3, 640)
    cap.set(4, 480)

    while cap.isOpened():

        # reads frames
        ret, img = cap.read()

        # convert to gray scale of each frames
        gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)

        # Detects faces of different sizes in the input image
        faces = face_cascade.detectMultiScale(gray, 1.1, 5)


        for (x, y, w, h) in faces:

            # Display an image in a window
            midpoint = int((x+x+w)/2)
            break
        if ((midpoint - 100) < 0):
            midpoint = 100

        img = img[0:900, midpoint-100:midpoint+100]

        cv2.imshow('img', img)




        # Wait for Esc key to stop
        k = cv2.waitKey(30) & 0xff
        if k == 27:
            break
        if cv2.waitKey(1) & 0xFF == ord('q'):
            break

    # Close the window
    cap.release()

    # De-allocate any associated memory usage
    cv2.destroyAllWindows()





build_video("Metallica Nothing Else Matters")