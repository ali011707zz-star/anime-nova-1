# تحليل عميق: أدوات تجاوز Cloudflare
> مصدر: https://github.com/pim97/anti-detect-browser-tools-tech-comparison  
> تاريخ الفحص: يوليو 2026 — فُحص كل ملف سطراً بسطر

---

## ملخص سريع — الترتيب للـ VPS Linux Headless

| الترتيب | الأداة | ضد Cloudflare | Turnstile | VPS headless | مفتوح المصدر |
|---------|--------|:---:|:---:|:---:|:---:|
| 🥇 | **Patchright** | ⭐⭐⭐⭐⭐ | ✅ | ✅ | ✅ |
| 🥈 | **Scrapling (StealthyFetcher)** | ⭐⭐⭐⭐⭐ | ✅ (تلقائي) | ✅ | ✅ |
| 🥉 | **Camoufox** | ⭐⭐⭐⭐ | ⚠️ جزئي | ✅ | ✅ (MPL-2.0) |
| 4 | **CloakBrowser** | ⭐⭐⭐⭐ | ✅ | ✅ | ⚠️ wrapper فقط |
| 5 | **SeleniumBase CDP Mode** | ⭐⭐⭐⭐ | ✅ (click-solve) | ⚠️ يحتاج xvfb | ✅ |
| 6 | **Botasaurus** | ⭐⭐⭐ | ✅ (built-in) | ⚠️ headless ضعيف | ✅ |
| 7 | **Clearcote** | ❓ لا benchmarks | ❓ | ✅ | ✅ |
| 8 | **Obscura** | ⭐ (WAF فقط) | ❌ | ✅ خفيف | ✅ |
| 9 | **XDriver** | ⭐ | ❌ | ✅ | ✅ |

> **⚠️ تحذير مشترك لجميع الأدوات:** IP السمعة هي العامل الأهم. VPS/datacenter IPs مصنّفة مسبقاً من Cloudflare. كل أداة أدناه تفشل مع IP سيئة. يجب استخدام **Residential Proxies** للمواقع الجادة.

---

## 1. Patchright — الأفضل للـ CDP Stealth

### المستودع
`github.com/Kaliiiiiiiiii-Vinyzu/patchright` | Python + Node.js + .NET | `v1.61.x` (يتتبع Playwright 1.61.1)

### كيف يعمل بالضبط

#### المشكلة الأصلية: `Runtime.enable` Leak
Playwright العادي يفعّل مجال `Runtime` في CDP، وهو قابل للكشف من داخل الصفحة:
```javascript
// اكتشاف من الصفحة
const isAutomated = !!window.__playwright || !!window.__pwInitScripts;
// Cloudflare تكتشف هذا النمط
```

#### الحل: إلغاء Runtime.enable + Utility World
Patchright يعدّل **مصدر Playwright driver وقت البناء** (AST patch):
```javascript
// driver_patches/crPagePatch.ts — الكود المُعاد صياغته
const localFrames = this._isMainFrame()
  ? this._page.frames()
  : [this._page.frameManager.frame(this._targetId)!];
for (const frame of localFrames) {
  this._page.frameManager.frame(frame._id)._context("utility").catch(() => {});
  for (const binding of this._crPage._browserContext._pageBindings.values())
    frame.evaluateExpression(binding.source).catch(e => {});
}
```
- لا يستدعي `Runtime.enable` إطلاقاً
- يدير execution contexts يدوياً في "utility world" معزولة
- يزيل flag `--enable-automation` من Chrome

#### الفرق العملي مع Playwright العادي

| الإشارة | Playwright عادي | Patchright |
|--------|:---:|:---:|
| `Runtime.enable` في CDP | ✅ مفعّل (مكشوف) | ❌ لا يُستدعى |
| `--enable-automation` flag | ✅ موجود | ❌ محذوف |
| `window.__playwright` | ✅ مرئي | ❌ مخفي |
| `navigator.webdriver` | `true` | `false` |
| تسرب CDP في الصفحة | ✅ يتسرب | ❌ معزول |

### كود الاستخدام (Python)
```python
from patchright.sync_api import sync_playwright

with sync_playwright() as p:
    # الأهم: استخدم persistent context + chromium channel
    # لا تضع custom UA أو headers يدوياً
    browser = p.chromium.launch(headless=False)  
    # headless=True يزيد احتمالية الاكتشاف
    context = browser.new_context()
    page = context.new_page()
    page.goto("https://cloudflare-protected-site.com")
    browser.close()
```

### ضد Cloudflare تحديداً
- **Cloudflare JS Challenge:** ✅ يتجاوزه بموثوقية عالية
- **Cloudflare Bot Score:** ✅ يخفض الدرجة
- **Cloudflare Turnstile:** ✅ موثوق (لكن ليس مضموناً 100%)
- **WAF Rules:** ✅ يتجاوزها

### نقاط الضعف
- ❌ لا تدوير للـ canvas/WebGL fingerprint
- ❌ لا TLS/JA3 spoofing (يرسل بصمة Chrome الحقيقية)
- ❌ الوضع headless يزيد احتمالية الاكتشاف
- ❌ لا يعمل بدون residential proxy مع Cloudflare Bot Management المتقدم

### التثبيت على VPS
```bash
pip install patchright
patchright install chromium
```

---

## 2. Scrapling — إطار شامل (HTTP + Browser)

### المستودع
`github.com/D4Vinci/Scrapling` | Python | متعدد الطبقات

### الطبقات الثلاث

#### الطبقة 1: Fetcher (HTTP فقط — بدون browser)
```python
from scrapling.fetchers import Fetcher

# TLS fingerprint spoofing عبر curl_cffi
fetcher = Fetcher(impersonate="chrome")
response = fetcher.get("https://site.com")
```
- يستخدم `curl_cffi` لإنتاج **JA3/JA4 hash يطابق Chrome/Firefox/Safari حرفياً**
- يعمل ضد Cloudflare WAF البسيط والفحوصات السطحية
- **لا يعمل** ضد Cloudflare Turnstile أو JS Challenge المتقدم (يحتاج JavaScript)

#### الطبقة 2: DynamicFetcher (Playwright عادي)
```python
from scrapling.fetchers import DynamicFetcher
fetcher = DynamicFetcher()
```
- Playwright اعتيادي — قابل للكشف من Cloudflare

#### الطبقة 3: StealthyFetcher (Patchright — الأقوى)
```python
from scrapling.fetchers import StealthyFetcher

# حل Cloudflare Turnstile تلقائياً
resp = StealthyFetcher.fetch(
    'https://protected.com',
    solve_cloudflare=True,
    headless=True,
    block_images=True,   # أسرع
    network_idle=True,   # انتظر تحميل كامل
)
print(resp.status)  # 200
```

**ما يضيفه StealthyFetcher فوق Patchright:**
- ✅ `solve_cloudflare=True` — حل تلقائي لـ Turnstile/Interstitial
- ✅ Canvas fingerprint anti-detection
- ✅ WebRTC IP leak prevention  
- ✅ DNS-over-HTTPS routing
- ✅ Ad/tracker blocking
- ✅ Human-like mouse movements

### ضد Cloudflare
- **Cloudflare WAF (HTTP-only mode):** ✅ يتجاوز عبر TLS spoofing
- **Cloudflare Turnstile:** ✅ حل تلقائي مدمج في StealthyFetcher
- **Cloudflare JS Challenge:** ✅ عبر StealthyFetcher
- **Bot Management Enterprise:** ⚠️ يحتاج Residential proxy

### التثبيت على VPS
```bash
pip install scrapling
scrapling install
# أو لـ StealthyFetcher فقط:
pip install scrapling[playwright]
```

---

## 3. Camoufox — أقوى بصمة (Firefox مخصص)

### المستودع
`github.com/daijro/camoufox` | Python wrapper | Firefox 152.0.4 | ~9.9k ⭐

### البنية التقنية
```
┌─────────────────────────────────────┐
│    Python Wrapper (camoufox 0.4.11) │
│    ↓ Playwright Juggler Protocol   │
│ ┌─────────────────────────────────┐ │
│ │  Firefox + 32 C++ Patches       │ │
│ │  fingerprint-injection.patch    │ │
│ │  navigator-webdriver false      │ │
│ │  AudioContext noise seed        │ │  
│ │  Canvas farble (per-eTLD+1)     │ │
│ │  WebGL/WebRTC/Screen spoofing   │ │
│ └─────────────────────────────────┘ │
└─────────────────────────────────────┘
```

### التقنية الجوهرية: C++ Level Injection
التزوير يحدث في **كود C++ أصلي** قبل وصول JavaScript:
```cpp
// dom/base/Navigator.cpp — Patch رقم 2
bool Navigator::Webdriver() {
  return MaskConfig::GetBool("webdriver", false); // دائماً false
}
```

```cpp
// additions/camoucfg/MaskConfig.hpp — المحور المركزي
// كل الـ 32 patch تستدعي هذا الملف
class MaskConfig {
public:
  static double GetFloat(const char* key, double defaultVal);
  static bool GetBool(const char* key, bool defaultVal);
  static nsString GetString(const char* key, const nsString& def);
};
```

**نتيجة:** لا يمكن اكتشاف التزوير عبر:
- `Object.getOwnPropertyDescriptor()` ← يعيد descriptor أصلي
- `Function.prototype.toString()` ← لا يوجد injection code
- Timing analysis ← لا تأخير برمجي

### الـ 32 Patch (الأهم):
| Patch | ما يغيره |
|-------|---------|
| `fingerprint-injection.patch` | `window.innerWidth/Height`, `screen.*`, `navigator.*` |
| `network-patches.patch` | `User-Agent`, `Accept-Language` في `nsHttpHandler.cpp` |
| `playwright/1-leak-fixes.patch` | `navigator.webdriver=false`, Playwright leak fixes |
| `canvas-farble.patch` | ضوضاء Canvas لكل eTLD+1 (بذرة فريدة) |
| `webgl-patches.patch` | GPU vendor/renderer spoofing |
| `webrtc-leak.patch` | منع تسرب IP الحقيقي عبر WebRTC |
| `audio-patches.patch` | AudioContext oscillator noise |

### استخدام بصمات حقيقية (312 preset)
```python
from camoufox.sync_api import Camoufox

with Camoufox(
    fingerprint="real_firefox_preset_42",  # بصمة حقيقية من Firefox فعلي
    proxy={"server": "residential_proxy:port"},
    geoip=True  # مطابقة الموقع مع الـ proxy
) as browser:
    page = browser.new_page()
    page.goto("https://protected-site.com")
```

### نقاط الضعف الحرجة
- ❌ **Firefox فقط** — لا يمكن تقليد Chrome (حصة سوقية أقل → مزيد من الفحص)
- ❌ **لا TLS spoofing** — يرسل بصمة Firefox TLS (متسقة لكن غير قابلة للتغيير)
- ❌ **SpiderMonkey fingerprint** — محرك JS مختلف قد يُكشف
- ❌ `v152.0.2` alpha — أسقطت دعم 32-bit + macOS x86_64

### التثبيت على VPS
```bash
pip install camoufox
python -m camoufox fetch  # تحميل Firefox المعدّل
```

---

## 4. CloakBrowser — Chromium مغلق المصدر + Human Behavior

### المستودع
مشروع تجاري | Python + Node.js + .NET wrapper | Chromium مخصص

### ما يميزها
- تعديلات C++ مباشرة في Chromium (مثل Camoufox لكن لـ Chrome)
- **Human Behavior Engine الأقوى:**
  ```python
  from cloakbrowser import CloakBrowser
  
  browser = CloakBrowser(humanize=True)
  page = browser.new_page()
  
  # حركة ماوس Bézier curves مع overshoot عشوائي
  # كتابة حرف بحرف مع أخطاء طباعية عشوائية وتصحيح
  # تمرير: تسريع → uniform → تباطؤ
  page.fill("input#email", "user@example.com")  # يكتب بشرياً
  ```

### نتائج موثقة ضد Cloudflare
- **reCAPTCHA v3:** درجة 0.9 (ممتازة — يحتاج 0.7+)
- **Cloudflare Turnstile:** يتجاوزه
- **WAF:** يتجاوزه

### نموذج الترخيص
| الإصدار | السعر | ما يتضمنه |
|---------|-------|---------|
| Community | مجاني | wrapper MIT |
| Pro | مدفوع | أحدث patches C++ |

### نقاط الضعف
- ❌ binary مغلق المصدر — لا يمكن التحقق
- ❌ أفضل النتائج في النسخة المدفوعة
- ❌ `--no-sandbox` مطلوب على Linux (يضعف الأمان)

### التثبيت على VPS
```bash
pip install cloakbrowser
cloakbrowser install
```

---

## 5. SeleniumBase — CDP Mode للـ CAPTCHA Solving

### المستودع
`github.com/seleniumbase/SeleniumBase` | Python | `v4.50.5`

### الأوضاع الثلاثة وفروقها

| الميزة | UC Mode | CDP Mode | Stealthy Playwright |
|--------|:---:|:---:|:---:|
| WebDriver | ✅ (مصحّح) | ❌ لا يوجد | ❌ |
| Headless آمن | ❌ يُكشف | ⚠️ + xvfb | ⚠️ |
| Cloudflare | ✅ | ✅✅ | ✅ |
| Turnstile | `uc_gui_click_cf()` | `cdp.solve_captcha()` | ✅ |
| الأسرع | ⚠️ | ✅ | ✅ |

### كود Turnstile Bypass — UC Mode
```python
from seleniumbase import SB

with SB(uc=True, test=True, headless=False) as sb:
    sb.uc_open_with_reconnect("https://cf-protected-site.com", 4)
    # disconnect/reconnect: يبدو وكأن WebDriver اختفى
    sb.uc_gui_click_captcha()   # Turnstile + reCAPTCHA checkbox
    sb.assert_text("Success")
```

### كود Turnstile Bypass — CDP Mode (الأقوى)
```python
from seleniumbase import sb_cdp

sb = sb_cdp.Chrome("https://cf-protected-site.com")
sb.sleep(2)  # انتظر تحميل الـ challenge
sb.solve_captcha()  # click-level OS solve
sb.click("button.submit")
sb.type("input#email", "user@example.com")
```

### على VPS Linux مع xvfb
```bash
# ضروري لـ PyAutoGUI (click-level CAPTCHA solving)
Xvfb :99 -screen 0 1920x1080x24 &
export DISPLAY=:99
python script.py
```

### نقاط الضعف
- ❌ UC Mode يُكشف في headless بالكامل
- ❌ أبطأ من الأدوات الأخرى
- ❌ Chrome فقط، لا Firefox
- ❌ لا محاكاة حركة ماوس متقدمة

---

## 6. Botasaurus — أفضل محاكاة حركة الماوس

### المستودع
`github.com/omkarcloud/botasaurus` | Python + JS | `v4.0.97`

### تقنية Bézier Mouse (الأقوى في السوق)
```python
from botasaurus_humancursor import HumanCursor

cursor = HumanCursor(page)
# مسار Bézier من الموقع الحالي → الهدف
# مع: سرعة عشوائية + overshoot + تصحيح + jitter
cursor.move_to(element)
cursor.click(element)
```

### بنية Raw CDP (بدون Selenium)
```python
# botasaurus_driver — يتحدث مع Chrome مباشرة عبر WebSocket CDP
from botasaurus_driver import Driver

driver = Driver()  # لا Selenium، لا WebDriver
driver.get("https://cf-protected-site.com")
# Cloudflare challenge يُحل تلقائياً عبر human cursor
```

### Cloudflare Turnstile المدمج
```python
import botasaurus as bt

@bt.browser(proxy="...", data=urls)
def scrape(driver, url):
    driver.get(url)
    # يحل Cloudflare Turnstile تلقائياً إذا ظهر
    driver.wait_for_element(".target-content")
    return driver.get_text(".data")
```

### نقاط الضعف
- ❌ لا canvas/WebGL/audio fingerprint control
- ❌ لا TLS/JA3 spoofing
- ❌ headless mode ضعيف ضد Cloudflare المتقدم
- ❌ لا يعمل ضد Akamai/Kasada/PerimeterX

---

## 7. Obscura — خفيف الوزن، محدود ضد Cloudflare

### المستودع
Rust-based headless engine | `obscura-cdp` crate

### ما يفعله
```bash
# TLS impersonation مع --features stealth
./obscura --stealth fetch https://site.com

# خادم MCP للـ AI agents
./obscura mcp
```

- TLS يطابق **Chrome 145 على Windows** (JA3/JA4 صحيح) عبر `wreq` (BoringSSL)
- بصمة JavaScript متسقة
- خفيف جداً: **30 MB RAM** مقابل 300+ MB لمتصفح كامل

### القيود الجوهرية
- ❌ **لا يتجاوز Cloudflare Turnstile** — ليس متصفحاً حقيقياً
- ❌ لا layout engine حقيقي → canvas/WebGL مزيفة جداً
- ❌ Cloudflare Bot Management يكشفه بسهولة
- ✅ فقط مفيد ضد Cloudflare WAF البسيط والمواقع غير المحمية

---

## 8. XDriver — حل واحد فقط، لا ينصح به

### ما يفعله
يستبدل `playwright==1.52.0` driver بـ `turnstilebrowser-playwright-core 1.49.0` من rebrowser-patches.

### الحقيقة
```
ما يعلنه:        C-level hardening، WebRTC leak protection، marker scrubbing
ما يفعله فعلاً: Runtime.enable leak fix فقط (نفس Patchright)
```

- **مهجور** — آخر تحديث 2025-09
- **غير موجود على PyPI** — يُثبّت من GitHub فقط
- **مقيّد بـ** `playwright==1.52.0` فقط
- ✅ استخدمه فقط لاختبار Runtime.enable fix بسرعة

---

## 9. Clearcote — أكثر الأدوات شفافية (pre-release)

### المستودع
Custom Chromium build | Python + Node.js SDK | `v0.1.0-pre.17`

### ما يجعله فريداً
1. **استيراد بصمة حقيقية** من جهاز فعلي:
   ```python
   clearcote --fingerprint-profile=real_machine.json
   # يمكن التحقق أن المتصفح يقدم فعلاً هذه البصمة
   ```

2. **Canvas Bridge على GPU حقيقي:**
   ```
   المتصفح → WebSocket → مضيف لديه GPU حقيقي → يرسم فعلاً → يعيد النتيجة
   ```
   يحل مشكلة عدم تطابق GPU string مع pixels الفعلية

3. **32 patch مع stealth-coherence regression gate:**
   ```bash
   python scripts/stealth_coherence.py  # يفشل البناء إذا كشف CreepJS أي شيء
   ```

### القيود
- ❌ **pre-release** — لا benchmarks ضد Cloudflare التجاري
- ❌ **لا macOS** — Windows + Linux فقط
- ❌ بناء Chromium من المصدر يستغرق ساعات

---

## الاستراتيجية الموصى بها للـ VPS

### للـ Anime NOVA (طلبات scraping من VPS)

#### المشكلة الحالية المعروفة
VPS datacenter IP مكشوفة → Cloudflare ترفضها حتى مع أفضل أداة

#### الحل المتدرج

**المستوى 1: HTTP فقط (أسرع، للمواقع البسيطة)**
```python
from scrapling.fetchers import Fetcher
# TLS spoofing يطابق Chrome — يتجاوز WAF وفحوصات بسيطة
fetcher = Fetcher(impersonate="chrome124")
resp = fetcher.get("https://site.com", headers={...})
```

**المستوى 2: Browser Stealth (للمواقع المحمية)**
```python
from scrapling.fetchers import StealthyFetcher
# Patchright + Cloudflare auto-solver
resp = StealthyFetcher.fetch(
    url,
    solve_cloudflare=True,
    headless=True,
    proxy="http://residential-proxy:port"  # ضروري للـ VPS
)
```

**المستوى 3: إذا فشل كل شيء**
```python
from patchright.sync_api import sync_playwright
# + residential proxy rotation
# + random delays + real fingerprint presets
```

#### متطلبات الـ VPS
```bash
# تثبيت على Ubuntu 24.04
pip install scrapling patchright camoufox

# Patchright
patchright install chromium

# Camoufox  
python -m camoufox fetch

# Scrapling
scrapling install

# xvfb لـ SeleniumBase إذا احتجته
apt install xvfb
Xvfb :99 -screen 0 1920x1080x24 &
export DISPLAY=:99
```

---

## تحليل ما تكشفه Cloudflare (لا تستطيع أي أداة تجاوزه 100%)

| طبقة الكشف | الوصف | الحل المتاح |
|-----------|-------|------------|
| **IP Reputation** | أسوأ مشكلة — datacenter IPs محظورة | Residential Proxy فقط |
| **TLS Fingerprint (JA3/JA4)** | بصمة TLS مكتبات Python مختلفة عن Chrome | curl_cffi / wreq (Scrapling/Obscura) |
| **HTTP/2 Fingerprint** | ترتيب SETTINGS frames يكشف library | curl_cffi يصلح هذا |
| **CDP Runtime.enable** | Playwright يفعّل Runtime domain | Patchright / XDriver يصلحان |
| **Canvas/WebGL Fingerprint** | GPU rendering مزيف | Camoufox C++ / Clearcote canvas-bridge |
| **navigator.webdriver** | `true` في أي automation | كل الأدوات تصلح هذا |
| **Behavioral Analysis** | حركات ماوس، سرعة كتابة، scrolling | Botasaurus / CloakBrowser |
| **Browser Leak Tests** | `window.chrome`, `navigator.plugins` | Patchright / Camoufox / CloakBrowser |
| **Cloudflare Turnstile** | CAPTCHA تفاعلية متقدمة | SeleniumBase / Botasaurus / Scrapling |
| **Bot Management Enterprise** | تحليل شامل متعدد الطبقات | Residential proxy + Camoufox/CloakBrowser |

---

## خلاصة للمشروع

للـ **Anime NOVA scraper على VPS**، التوصية:

1. **ابدأ بـ Scrapling** — يغطي HTTP و Browser في مكتبة واحدة، حل Turnstile مدمج
2. **استخدم Patchright مباشرة** لأي مواقع صعبة محددة
3. **Camoufox** للمواقع التي تثق بـ Firefox أكثر من Chrome
4. **الأهم من كل شيء:** أضف **Residential Proxy rotation** — بدونها كل هذه الأدوات محدودة الفائدة مع Cloudflare الجاد

```python
# stack موصى به على VPS
pip install scrapling patchright camoufox
patchright install chromium
python -m camoufox fetch
scrapling install
```

---

*تحليل تقني كامل لأغراض تعليمية وتطوير أدوات scraping مشروعة.*
