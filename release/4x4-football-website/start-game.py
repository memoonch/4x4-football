from http.server import ThreadingHTTPServer, SimpleHTTPRequestHandler
from pathlib import Path
import functools, threading, webbrowser

folder = str(Path(__file__).resolve().parent)
handler = functools.partial(SimpleHTTPRequestHandler, directory=folder)
server = ThreadingHTTPServer(("127.0.0.1", 0), handler)
url = "http://127.0.0.1:%s/index.html" % server.server_port
print("4x4 Football: " + url)
print("Keep this window open while playing. Close it to stop the local server.")
threading.Timer(0.5, lambda: webbrowser.open(url)).start()
try:
    server.serve_forever()
except KeyboardInterrupt:
    pass
finally:
    server.server_close()
