from flask import Flask, render_template
from flask_socketio import SocketIO
import time
from scanner import scan_network

app = Flask(__name__)
socketio = SocketIO(app, cors_allowed_origins="*")

known_devices = set()

@app.route("/")
def index():
    return render_template("index.html")

def background_scan():
    global known_devices
    print("[APP] Background scan started")
    while True:
        try:
            devices, local_ip = scan_network()
            print(f"[APP] Got {len(devices)} devices, local_ip={local_ip}")
            
            if devices:
                new_devices = [d for d in devices if d["ip"] not in known_devices]
                for d in devices:
                    known_devices.add(d["ip"])
                
                print(f"[APP] Emitting {len(devices)} devices, {len(new_devices)} new")
                socketio.emit("scan_results", devices)
                socketio.emit("local_ip", local_ip)
                if new_devices:
                    socketio.emit("new_device", new_devices)
            else:
                print("[APP] No devices returned!")

        except Exception as e:
            print(f"[APP] Error in background_scan: {e}")
            import traceback
            traceback.print_exc()

        time.sleep(5)

@socketio.on("connect")
def connect():
    print("[APP] Client connecté")
    socketio.start_background_task(background_scan)

if __name__ == "__main__":
    socketio.run(app, host="0.0.0.0", port=5000, debug=True)