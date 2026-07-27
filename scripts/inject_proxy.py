"""
inject_proxy.py — يُحقن hopx_proxy_server.py المحدّث في الـ sandbox الحالي
ويُعيد تشغيل الـ proxy server دون إعادة إنشاء sandbox
"""
import os, base64, sys, time

sys.path.insert(0, "/opt/anime-nova/scripts")
from hopx_ai import Sandbox

API_KEY = os.environ.get("HOPX_API_KEY", "")
if not API_KEY:
    print("ERROR: HOPX_API_KEY not set"); sys.exit(1)

boxes = Sandbox.list(api_key=API_KEY, status="running", limit=5)
if not boxes:
    print("ERROR: no running sandbox"); sys.exit(1)

sb = boxes[0]
print(f"sandbox: {sb.sandbox_id}")

# Read new script
with open("/opt/anime-nova/scripts/hopx_proxy_server.py", "rb") as f:
    b64 = base64.b64encode(f.read()).decode()

# Write to sandbox
r = sb.commands.run(
    f"python3 -c \"import base64; open('/workspace/proxy_server.py','wb').write(base64.b64decode('{b64}'))\"",
    timeout=15,
)
r2 = sb.commands.run("wc -l /workspace/proxy_server.py", timeout=5)
print(f"written: {r2.stdout.strip()} lines")

# Kill old proxy and restart
sb.commands.run("pkill -9 -f proxy_server.py || true", timeout=6)
time.sleep(2)
sb.commands.run("nohup python3 /workspace/proxy_server.py > /workspace/proxy.log 2>&1 &", timeout=5)
time.sleep(4)

r3 = sb.commands.run("curl -s --max-time 5 http://localhost:3000/health", timeout=10)
print(f"health: {r3.stdout.strip()}")
print("Done.")
