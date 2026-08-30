# تحليل Nova 1

> **الحالة:** مكتمل للتحليل والمراجعة — 31 أغسطس 2026  
> **النطاق:** تطبيق Nova 1 الحالي في `artifacts/nova-mobile` والـ API الذي يعتمد عليه في `artifacts/api-server`.  
> **حدود هذه الوثيقة:** هذا جرد للكود الحالي، وليس مواصفة لواجهة جديدة. لم يتم تشغيل التطبيق أو تثبيت حزم أو تعديل مصدر Nova 1 أثناء إعداد التقرير.

## 1. الخلاصة التنفيذية

Nova 1 عبارة عن تطبيق Expo/React Native باللغة العربية وواجهة RTL، متصل بخادم Express/TypeScript واحد. التطبيق الحالي ليس مجرد كتالوج أنمي؛ بل يجمع بين:

- كتالوج ومعلومات AniList/Jikan للأنمي الياباني.
- عدة طبقات من scrapers ومصادر عربية/أجنبية للحصول على روابط التشغيل.
- مشغل Android أصلي مبني على Media3/ExoPlayer عبر Expo Native Module.
- ترجمة وتركيب subtitles بصيغ VTT/SRT/ASS، وترجمة نصية إلى العربية، وتجهيز تفريغ Whisper عند الحاجة.
- تنزيلات محلية قابلة للإيقاف والاستئناف والعمل في الخلفية.
- سجل مشاهدة ومفضلة وتقدم مشاهدة وتعليقات وإشعارات وتحليلات.
- قسم مستقل للأنيميشن/الأفلام وقسم للكرتون المدبلج وقسم AW Dubbed.
- وضع TV بتركيز D-pad وأحجام ten-foot، مع اختلافات مقصودة عن الهاتف.
- حماية للنسخة الرسمية عبر هوية البناء وanonymous token وruntime integrity، إضافة إلى Sentry للأعطال الأصلية وJavaScript.

النتيجة المهمة لبناء Nova 2: يجب إعادة استخدام عقد الـ API الحقيقي ونماذج البيانات وسلوك التشغيل، وليس إعادة إنشاء واجهة شكلية ببيانات تجريبية. وفي الوقت نفسه، لا ينبغي نقل تفاصيل Expo حرفياً؛ المطلوب طبقة Kotlin مستقلة تترجم نفس السلوك إلى Compose وMedia3.

## 2. حدود المصدر ودرجة الثقة

### مصادر تم فحصها

- شاشات ومسارات `artifacts/nova-mobile/app`.
- `AppContext`، أدوات الشبكة والتخزين والتنزيل، ومكونات التشغيل.
- Native Media3 module والجسر TypeScript.
- كل ملفات route المعلنة في `artifacts/api-server/src/routes`.
- مسارات المصادقة في `artifacts/api-server/src/auth`.
- migration/schema الموجود في `supabaseMigrate.ts`.
- تسجيل المسارات وmiddleware في `app.ts`.

### ما هو مؤكد

- أسماء المسارات وطرق HTTP المعلنة في المصدر.
- مسارات التنقل الموجودة في Expo Router.
- أنواع المصدر الأساسية وسلوك الجسر الأصلي.
- أسماء الجداول والحقول الظاهرة في migration.
- قواعد الحماية والـ headers التي يرسلها عميل الهاتف.

### ما يحتاج تحققاً لاحقاً

- القيم الفعلية لـ remote config وترتيب/تفعيل المصادر في بيئة الإنتاج.
- الشكل النهائي لكل استجابة عند تغيّر scraper أو schema في Supabase.
- توفر كل مصدر وجودة كل رابط لحظة التشغيل؛ وجود adapter في الكود لا يعني أن الموقع متاح دائماً.
- قيم إعدادات الإنتاج وأي فروق بين نسخة VPS والنسخة الموجودة في المستودع.
- تفاصيل Google Play Integrity/التوقيع في build النهائي؛ التقرير لا يحتوي أسراراً ولا يعيد بناءها.

## 3. المعمارية الحالية

### العميل

| العنصر | الوضع الحالي |
|---|---|
| الإطار | Expo SDK 54، React Native 0.81، React 19 |
| التنقل | Expo Router، ملفات مسارات داخل `app/` |
| الواجهة | React Native، Cairo، RTL، ألوان dark/AMOLED وثيمات متعددة |
| إدارة الطلبات | `secureFetch`، وReact Query ببقاء افتراضي خمس دقائق وإعادة محاولة مرتين |
| التخزين الخفيف | AsyncStorage |
| التخزين الحساس | Expo SecureStore على الهاتف؛ AsyncStorage على web |
| المشغل | Media3/ExoPlayer عبر `NovaMedia3` على Android |
| الملفات | Expo FileSystem داخل مساحة التطبيق |
| الإشعارات | Expo Notifications، خصوصاً تنزيلات الخلفية |
| الأعطال | ErrorBoundary، crash logger، وSentry native/JS |
| الإعلانات | Start.io/Unity LevelPlay عبر native wrapper، مع API لمكافآت التنزيل والمشاهدة |

### الخادم

| العنصر | الوضع الحالي |
|---|---|
| HTTP | Express + TypeScript |
| البيانات | Supabase/PostgreSQL مع كاشات محلية/مساعدة |
| مصادر المحتوى | scrapers وsource catalog وواجهات مزودين متعددة |
| الوسائط | HLS/video/segment/download proxies، وredirect/manifest rewriting |
| التشغيل | الخادم الإنتاجي على VPS عبر PM2؛ Replit للتحرير والتوثيق فقط |
| الويب | نفس الخادم يخدم frontend المبني، ويعيد SPA fallback |
| الحماية | CORS، rate limits، release identity، anonymous token، مسارات حساسة محمية |

### مسار الطلب النموذجي

1. يقرأ التطبيق عنوان API الافتراضي أو المخصص المحفوظ في الإعدادات.
2. يطلب anonymous token عند الحاجة، مع منع الطلبات المتوازية المتكررة.
3. يرسل هوية البناء و`X-App-Token` مع طلبات API، و`X-User-Token` إذا كان المستخدم مسجلاً.
4. يطلب metadata من AniList أو من endpoints الكتالوج.
5. يطلب مصادر المشاهدة عبر SSE أو endpoint مصدر منفرد.
6. يختار رابطاً صالحاً ويشغله مباشرة أو عبر Nova proxy حسب المصدر.
7. يحفظ التقدم محلياً، ويرسله إلى user API إذا كان الحساب متاحاً.
8. عند الإغلاق أو الخلفية، يستعيد المشغل/التنزيلات حالتهما وفق نوع العملية.

## 4. خريطة الشاشات والتنقل

### حالات الإقلاع العامة

1. شاشة brand splash تحمل شعار ANIME NOVA وعبارة «منصة الأنمي العربية».
2. تهيئة Cairo وRTL وعنوان API وanonymous token وSentry ومعالجات الأعطال.
3. استعادة الثيم والسجل والمفضلة والمستخدم والتنزيلات المتقطعة.
4. تحميل remote config والإعلانات والإشعارات.
5. إذا كانت النسخة غير موثوقة: شاشة «تم إيقاف التشغيل».
6. إذا طلب الخادم النسخة الرسمية: شاشة «النسخة الرسمية مطلوبة».
7. إذا كان `maintenanceMode` فعالاً: شاشة الصيانة.
8. خلاف ذلك، يفتح stack الرئيسي على مجموعة التبويبات.

### التبويبات وحالتها

| المسار | الاسم الظاهر | الحالة |
|---|---|---|
| `/(tabs)/index` | الرئيسية | ظاهر |
| `/(tabs)/search` | بحث | ظاهر على الهاتف، مخفي على TV |
| `/(tabs)/browse` | تصفح | ظاهر |
| `/(tabs)/aw-dubbed` | مدبلج | ظاهر |
| `/(tabs)/downloads` | تنزيلاتي | ظاهر |
| `/(tabs)/library` | قائمتي | ظاهر |
| `/(tabs)/animations` | أنيميشن | route موجود لكنه مخفي من شريط التبويب |
| `/(tabs)/dubbed` | كرتون مدبلج قديم | route موجود لكنه مخفي؛ يفتح المسارات القديمة |
| `/(tabs)/news` | أخبار | route موجود لكنه مخفي |

في TV ترتفع مساحة شريط التبويب وتظهر حالة التركيز بإطار/ظل. أما البحث والأنيميشن والكرتون والأخبار فليست كلها عناصر تنقل مرئية، لكن بعض الشاشات تظل قابلة للوصول من الروابط الداخلية.

### تفاصيل كل شاشة

#### الرئيسية — `/(tabs)/index`

تجمع عدة أقسام أفقية/شبكات، مع حالات تحميل وفشل وإعادة محاولة:

- Hero أو بطاقة العمل المميز.
- متابعة المشاهدة.
- أحدث الحلقات.
- الأنمي المدبلج والكرتون المدبلج.
- الرائج.
- محتوى الموسم الحالي.
- البث الحالي.
- الأعلى تقييماً.
- الأفلام.
- الإيسيكاي.
- بيانات أحدث الحلقات المحلية/المخزنة مؤقتاً.

الضغط على بطاقة أنمي يذهب إلى `/anime/[id]`، والضغط على عنصر أنيميشن يذهب إلى `/animation/[type]/[id]`. قسم المدبلج يستخدم مساراته الخاصة.

#### البحث — `/(tabs)/search`

- بحث نصي عن الأنمي.
- دعم عناوين عربية/إنجليزية/يابانية ومطابقة مترجمة.
- سجل بحث محفوظ محلياً.
- فلاتر وترتيب.
- بحث بالصورة عبر trace.moe.
- حالات لا نتائج/تحميل/فشل.
- فتح التفاصيل أو مصدر المشاهدة من النتيجة.

#### التصفح — `/(tabs)/browse`

- شبكة متجاوبة.
- الأنواع والتصنيفات.
- السنة والموسم.
- الترتيب.
- بحث داخل النتائج.
- pagination وتحميل صفحات إضافية.
- اختلاف عدد الأعمدة وحجم البطاقات حسب العرض.

#### المكتبة — `/(tabs)/library`

تبويبات/مرشحات للمحتوى الشخصي:

- متابعة المشاهدة.
- السجل.
- المفضلة.
- الشخصيات المحفوظة محلياً.
- بحث داخل القائمة.
- تصفية وفرز.
- حذف عناصر أو تبديل المفضلة.

السجل والمفضلة لهما نسخة محلية فورية، مع مزامنة API عند توفر حساب/مسار المستخدم.

#### التنزيلات — `/(tabs)/downloads`

يعرض قسمين:

- تنزيلات جارية: النسبة، bytes، الحالة، pause/resume/cancel، وإعادة المحاولة.
- تنزيلات مكتملة: الحجم، الجودة، المصدر، تشغيل الملف المحلي، حذف ملف الفيديو وملف الترجمة.

التنزيل لا يرتبط بعمر شاشة المشاهدة، ويستمر في background session، ويستعيد المهام المتقطعة عند فتح التطبيق.

#### الأخبار — `/(tabs)/news`

قائمة الأخبار ومقالة منفردة، مع صورة ورابط/مسار المقال. المسار موجود لكنه مخفي من التبويب الحالي.

#### تفاصيل الأنمي — `/anime/[id]`

- قراءة metadata من AniList/Jikan والكاش.
- العنوان الإنجليزي/الياباني/العربي.
- القصة، النوع، التصنيف، التقييم، الحالة، السنة وعدد الحلقات.
- ترجمة العنوان والوصف إلى العربية مع كاش محلي/خادمي.
- الشخصيات والعلاقات والتوصيات.
- التريلر.
- علامة المفضلة والتقييم المحلي.
- تحذير المحتوى العمري.
- الانتقال إلى قائمة الحلقات.
- حالة عدم وجود metadata أو انتهاء الطلب.

#### الحلقات — `/episodes/[id]`

- قائمة الحلقات وحالتها المشاهدة.
- total episodes مع الاعتماد على الإجمالي المؤكد.
- عناوين عربية للحلقات عند توفرها.
- بحث عن رقم حلقة.
- pagination.
- تعليقات الحلقة وعددها.
- مؤشر التقدم.
- فتح المشاهدة من الموضع السابق.

#### مشاهدة الأنمي — `/watch`

يمثل أهم مسار تشغيلي:

- استقبال anime/episode/title/poster/total وأي skip metadata.
- جلب المصادر كلها أو مصدر منفرد.
- إظهار مصادر قابلة للاختيار بعد وصولها.
- تصفية الروابط غير الصالحة وإزالة التكرار.
- اختيار الجودة/السيرفر.
- HLS أو MP4، direct أو proxy.
- subtitles من المصدر، أو subtitle-tracks، أو ترجمة VTT، أو Whisper.
- تخطي المقدمة والنهاية.
- حفظ التقدم محلياً وعلى الحساب.
- تنزيل الحلقة.
- الحلقة التالية/السابقة والتشغيل التلقائي.
- التعليقات/الإحصائيات حسب الشاشة.
- حالات timeout، فشل مصدر، عدم وجود مصدر، وإعادة اختيار المصدر.

#### الجدول — `/schedule`

يعرض الحلقات/الإصدارات المجدولة، مع الانتقال إلى العمل أو الحلقة عند توفر المعرف.

#### الملف الشخصي — `/profile`

يعرض المستخدم الحالي، الحالة/الخطة إن كانت متاحة، ويفتح مسارات تسجيل الدخول أو إدارة الحساب. يعتمد على `/api/auth/me` وتخزين المستخدم المحلي.

#### الإعدادات — `/settings`

تشمل، حسب الحالة الحالية:

- الثيم: dark، AMOLED، violet، blue، pink.
- عنوان API المخصص/اختبار عنوان الخادم.
- إعدادات الترجمة وظهورها والإزاحة.
- التشغيل التلقائي.
- إعدادات المشغل/seek.
- الإشعارات.
- معلومات النسخة والتشخيص والإبلاغ.
- مسح الكاش والبيانات المحلية بحسب العملية.
- مسارات الحساب وتسجيل الخروج/حذف الحساب.

#### التعليقات — `/comments`

شاشة/لوحة للتعليقات العامة أو الخاصة بالعمل/الحلقة:

- قراءة وترتيب.
- إضافة تعليق.
- حذف تعليق المستخدم.
- الإعجاب.
- الردود/parent comment عند توفرها.

#### قسم الأنيميشن

| المسار | الوظيفة |
|---|---|
| `/(tabs)/animations` | تصفح قسم الأنيميشن والأفلام |
| `/animation/[type]/[id]` | تفاصيل فيلم/مسلسل حسب النوع والمعرف |
| `/animation/episodes` | قائمة مواسم/حلقات العمل |
| `/animation/watch` | جلب مصادر وتشغيل وحفظ تقدم الأنيميشن |

يدعم browse/search/trending/season/detail ومصادر المشاهدة والترجمات. تقرير الذاكرة الحالي يحدد أن مصادر HLS الخاصة بالأنيميشن لا ينبغي تغييرها أثناء بناء Nova 2 قبل تحقق مستقل من حالتها.

#### قسم الكرتون المدبلج القديم

| المسار | الوظيفة |
|---|---|
| `/dubbed` | كتالوج الكرتون المدبلج |
| `/dubbed/[id]` | التفاصيل والحلقات |
| `/dubbed/watch` | تشغيل مصدر الحلقة |

#### قسم AW Dubbed

| المسار | الوظيفة |
|---|---|
| `/(tabs)/aw-dubbed` | كتالوج AnimeWitcher المدبلج |
| `/aw-dubbed/[key]` | تفاصيل السلسلة والحلقات |
| `/aw-dubbed/watch` | تشغيل الحلقة/المصدر |

#### OAuth وfallback

- `/oauth2redirect/google`: استلام نتيجة Google OAuth وإكمال تسجيل الدخول.
- `/+not-found`: شاشة route غير موجود.
- `/index`: redirect الجذر إلى مجموعة التبويبات.

## 5. خريطة API الكاملة

### قواعد قراءة القائمة

- معظم المسارات التالية معرفة داخل router مركب تحت `/api`؛ لذلك المسار الفعلي مثلاً هو `/api/anime/sources-stream`.
- مسارات auth التي تسجل `"/api/..."` هي فعلياً بنفس البادئة ولا تُضاف لها `/api` مرة أخرى.
- بعض المسارات تشغيلية/إدارية أو legacy وليست مطلوبة في واجهة Nova 2 للمستخدم العادي، لكنها جزء من عقد الخادم ويجب عدم حذفها أثناء إعادة البناء.
- المسارات المحمية تتطلب anonymous token أو release identity كما هو موضح في القسم الأمني.

### الإعداد والصحة

| الطريقة والمسار | الوظيفة |
|---|---|
| `GET /api/config` | remote config: المصادر، الخصائص، الصيانة، الإعلانات والحدود |
| `GET /api/config/announcements` | الإعلانات الحالية |
| `POST /api/config/announcements` | إنشاء إعلان إداري |
| `DELETE /api/config/announcements/:id` | حذف إعلان |
| `GET /api/healthz` | فحص حي بسيط |
| `GET /api/health` | صحة الخادم وإحصاءات queue/cache |
| `GET /api/queue/status` | حالة scraper queue |
| `GET /api/cache/status` | حالة الكاش |
| `GET /api/updates` | ملف تحديثات الخادم |

### المصادقة والحساب

| الطريقة والمسار | الوظيفة |
|---|---|
| `POST /api/auth/anon-token` | إصدار anonymous token قصير العمر للعميل الرسمي |
| `GET /api/auth/anon-token` | قراءة/فحص مسار anonymous token |
| `POST /api/auth/send-verify-code` | إرسال رمز تحقق البريد |
| `POST /api/auth/signup` | إنشاء حساب |
| `POST /api/auth/signin` | تسجيل الدخول بالبريد |
| `POST /api/auth/signout` | إنهاء جلسة البريد |
| `GET /api/auth/me` | المستخدم الحالي |
| `PATCH /api/auth/profile` | تحديث الملف الشخصي |
| `POST /api/auth/change-password` | تغيير كلمة المرور |
| `POST /api/auth/reset-password` | إعادة تعيين كلمة المرور |
| `DELETE /api/auth/account` | حذف حساب المستخدم |
| `GET /api/auth/check-username/:username` | فحص توفر اسم المستخدم |
| `POST /api/auth/google/token` | تحويل token Google إلى جلسة Nova |
| `POST /api/auth/github/token` | تحويل token GitHub إلى جلسة Nova |
| `GET /api/auth/user` | مسار توافق/قراءة مستخدم auth |
| `GET /api/login` | بدء Replit OAuth legacy |
| `GET /api/callback` | callback لـ Replit OAuth |
| `GET /api/logout` | logout لـ Replit OAuth |

### كتالوج الأنمي والـ metadata

| الطريقة والمسار | الوظيفة |
|---|---|
| `POST /api/anilist` | proxy/handler لطلبات AniList |
| `POST /api/anime/anilist` | alias لطلب AniList |
| `GET /api/anime/poster/:id` | poster/صورة حسب المعرف |
| `GET /api/anime/new-episodes` | أحدث حلقات الكتالوج |
| `GET /api/anime/anslayer-latest` | أحدث حلقات AnimeSlayer |
| `GET /api/anime/aw-latest` | أحدث حلقات AnimeWitcher |
| `GET /api/anime/episode-titles` | عناوين عربية/مترجمة للحلقات |
| `GET /api/anime/check-arabic` | فحص توفر عنوان/محتوى عربي |
| `GET /api/anime/arabic-dub-check` | فحص الدبلجة العربية |
| `GET /api/anime/id-map` | ربط معرفات المصادر بالمعرفات canonical |
| `GET /api/anime/kawaii-meta` | metadata مساعدة لـ Kawaii |
| `GET /api/anime/animewitcher-catalog` | قراءة كتالوج AnimeWitcher |

### مصادر مشاهدة الأنمي

| الطريقة والمسار | الوظيفة |
|---|---|
| `GET /api/anime/sources-stream` | SSE لجلب مصادر الحلقة على موجات/مصادر متعددة |
| `GET /api/anime/fetch-source` | جلب مصدر واحد حسب `site` وباقي بيانات الحلقة |
| `GET /api/anime/trailer` | جلب/تطبيع رابط التريلر |
| `GET /api/anime/probe` | فحص رابط المصدر |
| `GET /api/anime/extract-video` | استخراج فيديو من embed/provider |
| `GET /api/anime/test-embed` | فحص embed أثناء التشخيص |
| `GET /api/anime/proxy-embed` | تمرير/عرض embed عبر الخادم |
| `GET /api/cfproxy/:endpoint` | proxy توافق لخدمة/endpoint خارجي |

### subtitles والترجمة للأنمي

| الطريقة والمسار | الوظيفة |
|---|---|
| `GET /api/anime/subtitles` | endpoint subtitles/استخراج مسار ترجمة؛ يوجد له تعريفان متداخلان في الملف ويجب التحقق من أولوية التسجيل |
| `GET /api/anime/subtitle-tracks` | قائمة مسارات الترجمة المرتبطة بعمل/حلقة |
| `GET /api/anime/translate` | ترجمة نص قصير، غالباً إلى العربية |
| `GET /api/anime/translate-vtt` | تنزيل/ترجمة VTT وإرجاعه |
| `GET /api/anime/translate-vtt-stream` | ترجمة VTT على stream |
| `POST /api/anime/whisper-transcribe` | تفريغ/توقيت subtitles من صوت أو فيديو |
| `GET /api/anime/whisper-detect` | فحص/كشف إمكان استخدام Whisper |
| `GET /api/anime/proxy-text` | proxy لنص أو subtitle خارجي |
| `GET /api/anime/scan-gif` | فحص/استخراج بيانات من GIF في أدوات المصدر |

### الوسائط والبروكسي والتنزيل

| الطريقة والمسار | الوظيفة |
|---|---|
| `GET /api/anime/hls-proxy` | جلب/تمرير manifest HLS |
| `GET /api/anime/video-proxy` | proxy فيديو مع headers/range |
| `GET /api/anime/seg-proxy` | proxy segment HLS مع content-type/range |
| `GET /api/anime/download-mp4` | تحويل/تقديم الحلقة كـ MP4 للتنزيل |
| `GET /api/anime/hls-proxy/metrics` | مقاييس proxy |
| `GET /proxy/hls` | مسار manifest proxy المساعد، مركب خارج `/api` |

روابط الفيديو قد تكون direct أو proxy. رابط HLS النهائي يجب أن يعطي segment URLs قابلة للوصول من الجهاز، وقد يحتاج إلى `Referer`/`Origin` خاص بالمزود. لا يجوز إرسال تلك headers إلى application API إذا كان المسار نفسه Nova؛ الخادم يطبق هذه القاعدة في proxy/download.

### قسم الأنيميشن والأفلام

| الطريقة والمسار | الوظيفة |
|---|---|
| `GET /api/animation/browse` | تصفح حسب النوع/النوع الفرعي/genre/sort |
| `GET /api/animation/detail` | تفاصيل فيلم أو مسلسل |
| `GET /api/animation/season` | حلقات موسم |
| `GET /api/animation/search` | بحث |
| `GET /api/animation/trending` | الرائج |
| `GET /api/animation/subtitles` | subtitle endpoint |
| `GET /api/animation/subtitle-tracks` | مسارات الترجمة |
| `GET /api/animation/vidzee-meta` | metadata مساعدة لمزود Vidzee |
| `GET /api/animation/quick-check` | فحص سريع للمصدر |
| `GET /api/animation/videasy-fresh` | جلب بيانات/مصادر Videasy |
| `GET /api/animation/sources-stream` | SSE لمصادر المشاهدة |
| `POST /api/animation/source-resolve` | resolve لمصدر محدد |
| `GET /api/animation/stardima-search` | endpoint توافق/بحث Stardima |
| `GET /api/animation/stardima-series` | endpoint توافق للسلسلة |
| `GET /api/animation/stardima-episode` | endpoint توافق للحلقة |
| `GET /api/animation/hls-proxy` | HLS proxy للأنيميشن |
| `GET /api/animation/video-proxy` | video proxy للأنيميشن |

### الكرتون المدبلج وAW

| الطريقة والمسار | الوظيفة |
|---|---|
| `GET /api/dubbed/catalog` | كتالوج الكرتون المدبلج القديم |
| `GET /api/dubbed/search` | بحث الكرتون |
| `GET /api/dubbed/episodes` | حلقات سلسلة |
| `GET /api/dubbed/watch-src` | مصدر مشاهدة حلقة |
| `GET /api/dubbed/stream` | stream مصدر الكرتون |
| `GET /api/dubbed/img` | proxy صورة |
| `GET /api/aw-dubbed/catalog` | كتالوج AW Dubbed |
| `GET /api/aw-dubbed/episodes` | حلقات AW |
| `GET /api/aw-dubbed/watch-src` | مصدر مشاهدة AW |
| `GET /api/aw-dubbed/mf-stream` | stream/resolve MediaFire لـ AW |

### source catalog

| الطريقة والمسار | الوظيفة |
|---|---|
| `GET /api/source-catalog/providers` | قائمة مزودي الكتالوج |
| `GET /api/source-catalog/titles` | عناوين مزود مع pagination/filter |
| `GET /api/source-catalog/titles/:provider/:providerTitleId` | عنوان مزود محدد |
| `GET /api/source-catalog/lookup` | مطابقة عنوان/معرف canonical بمزود |
| `GET /api/source-catalog/episodes/:episodeId/servers` | servers الحلقة من الكتالوج |

### بيانات المستخدم

| الطريقة والمسار | الوظيفة |
|---|---|
| `GET /api/user/history` | قراءة سجل المشاهدة |
| `POST /api/user/history` | إضافة/تحديث عنصر في السجل |
| `DELETE /api/user/history/:id` | حذف عنصر من السجل |
| `DELETE /api/user/history` | مسح السجل |
| `GET /api/user/favorites` | قراءة المفضلة الكاملة |
| `GET /api/user/favorites/ids` | قراءة IDs فقط |
| `POST /api/user/favorites` | إضافة مفضلة |
| `DELETE /api/user/favorites/:animeId` | إزالة مفضلة |
| `GET /api/user/progress/all` | كل تقدم المستخدم |
| `GET /api/user/progress/:animeId/:ep` | تقدم حلقة محددة |
| `POST /api/user/progress` | حفظ موضع/مدة المشاهدة |
| `GET /api/user/continue-watching` | قائمة متابعة المشاهدة |
| `GET /api/user/stats` | إحصاءات المستخدم |

### التعليقات

| الطريقة والمسار | الوظيفة |
|---|---|
| `GET /api/comments` | قراءة التعليقات حسب anime/tmdb/type/episode |
| `POST /api/comments` | إضافة تعليق أو رد |
| `DELETE /api/comments/:id` | حذف تعليق |
| `POST /api/comments/:id/like` | تبديل إعجاب |
| `GET /api/comments/count` | عداد التعليقات |

### الأخبار والإشعارات والتحليلات

| الطريقة والمسار | الوظيفة |
|---|---|
| `GET /api/news` | قائمة الأخبار مع page/limit |
| `GET /api/news/article` | مقال مفرد |
| `GET /api/notifications` | قائمة إشعارات المستخدم |
| `GET /api/notifications/unread-count` | عدد غير المقروء |
| `POST /api/notifications/mark-all-read` | تعليم الكل كمقروء |
| `POST /api/notifications/mark-read/:id` | تعليم إشعار واحد |
| `POST /api/notifications/delete-old` | حذف الإشعارات القديمة |
| `POST /api/analytics/heartbeat` | heartbeat للجلسة |
| `POST /api/analytics/episode-view` | تسجيل مشاهدة حلقة |

### الإعلانات والمكافآت

| الطريقة والمسار | الوظيفة |
|---|---|
| `GET /api/ads/state` | حالة الإعلانات/المكافآت للجهاز أو المستخدم |
| `POST /api/ads/download-start` | بدء جلسة مكافأة تنزيل |
| `POST /api/ads/download-complete` | إكمال/تسجيل التنزيل |
| `POST /api/ads/watch-start` | بدء مكافأة مشاهدة |
| `POST /api/ads/reward/start` | بدء reward عام |
| `POST /api/ads/reward/complete` | إكمال reward عام |

### البلاغات والأعطال

| الطريقة والمسار | الوظيفة |
|---|---|
| `POST /api/report` | إرسال بلاغ مستخدم |
| `GET /api/report/list` | قائمة البلاغات للإدارة |
| `POST /api/crash-report/` | إرسال crash report |
| `GET /api/crash-report/` | قراءة crash reports في مسار التشخيص |
| `DELETE /api/crash-report/` | تنظيف crash reports في مسار التشخيص |

### الإدارة والتشغيل

هذه المسارات ليست جزءاً من واجهة المستخدم العادية، لكنها موجودة في عقد الخادم:

| الطريقة والمسار | الوظيفة |
|---|---|
| `GET /api/admin/env-relay` | قراءة relay إعدادات محمية |
| `GET /api/admin/db-setup` | فحص/إعداد قاعدة البيانات |
| `GET /api/admin/smtp-ping` | فحص SMTP |
| `POST /api/admin/smtp-env-patch` | تعديل إعداد SMTP عبر admin |
| `POST /api/admin/telegram-env-patch` | تعديل إعداد Telegram |
| `GET /api/admin/telegram-status` | حالة Telegram |
| `POST /api/admin/smtp-config` | حفظ إعداد SMTP |
| `GET /api/admin/smtp-status` | حالة SMTP |
| `GET /api/admin/users` | قائمة المستخدمين |
| `PATCH /api/admin/users/:id/plan` | تعديل خطة المستخدم |
| `POST /api/admin/users/:id/grant` | منح صلاحية/entitlement |
| `DELETE /api/admin/users/:id` | حذف مستخدم |
| `GET /api/admin/stats` | إحصاءات الإدارة |
| `POST /api/admin/setup` | إعداد الإدارة |
| `GET /api/admin/setup/status` | حالة إعداد الإدارة |
| `GET /api/admin/remote-config` | قراءة remote config للإدارة |
| `PATCH /api/admin/remote-config` | تعديل remote config |
| `GET /api/admin/ads-settings` | إعدادات الإعلانات |
| `PATCH /api/admin/ads-settings` | تعديل إعدادات الإعلانات |
| `GET /api/db-relay/:table` | قراءة جدول عبر relay |
| `POST /api/db-relay/:table` | إضافة عبر relay |
| `PATCH /api/db-relay/:table` | تعديل عبر relay |
| `DELETE /api/db-relay/:table` | حذف عبر relay |
| `POST /api/telegram/webhook` | webhook Telegram |
| `GET /api/telegram/status` | حالة Telegram |
| `POST /api/telegram/notify-test` | اختبار إشعار Telegram |
| `GET /api/telegram/scheduler` | حالة scheduler |
| `POST /api/telegram/scheduler/run-now` | تشغيل scheduler فوراً |
| `GET /sitemap.xml` | sitemap للويب |
| `GET /robots.txt` | robots للويب |

مسارات web admin لها prefix تشغيلي يحدده الإعداد، وتوفر `GET <prefix>` و`POST <prefix>/api/login` و`POST <prefix>/api/logout` و`GET <prefix>/api/me`.

## 6. نماذج البيانات

### نماذج العميل الأساسية

#### مصدر فيديو

المصدر الذي يصل للمشغل قد يحمل:

```text
url أو directUrl
label
quality
type
server
qualityRank
referer
subtitles[]
```

كل subtitle يحمل عادة `label` و`src` مع `kind` و`language` اختياريين. يمر المصدر عبر:

1. التحقق من protocol (`http`, `https`, `file`).
2. إزالة الروابط المكررة.
3. ترتيب/اختيار الجودة.
4. تمرير headers المطلوبة للمزود.

#### التقدم

```text
animeId, ep, title, english, thumbnail,
position?, duration?, updatedAt
```

#### المفضلة

```text
id, title, english, thumbnail,
episodes?, score?, addedAt, startYear?, genres?
```

#### المستخدم

```text
id, email, displayName, username?,
avatarColor?, profileImageUrl?
```

#### التعليق

يتعامل النظام مع `id`, `user_id`, `username`, `user_handle`, `avatar_url`,
`anime_id` أو `tmdb_id`, `anime_type`, `episode_number`, `text`, `likes`,
`parent_id`, `reply_to_username`, و`created_at`.

### جداول قاعدة البيانات الظاهرة في migration

| الجدول | الغرض والحقول المهمة |
|---|---|
| `users` | الحساب، email/username، الاسم، hash، الصور، verification، plan، expiry، auth providers |
| `pending_verifications` | رموز البريد، النوع، الانتهاء، عدد المحاولات |
| `sessions` | جلسات Express في JSONB |
| `watch_history` | المستخدم، anime/episode، العنوان والصورة ووقت المشاهدة؛ unique لكل مستخدم/عمل/حلقة |
| `favorites` | مفضلة المستخدم؛ unique لكل مستخدم/عمل |
| `watch_progress` | progress/duration لكل حلقة |
| `analytics_sessions` | جلسات web/mobile وvisitor/user والعمل والمصدر |
| `analytics_episode_views` | أحداث مشاهدة فريدة |
| `comments` | التعليقات والردود والـ likes والربط بالأنمي/الأنيميشن |
| `comment_likes` | علاقة مستخدم/تعليق |
| `source_cache` | JSONB للمصادر مع fetched/expiry |
| `subtitle_cache` | VTT وcues مع fetched/expiry |
| `cdn_cache` | نتيجة فحص رابط CDN |
| `reports` | بلاغات المستخدمين |
| `app_config` | key/value للضبط |
| `translations_cache` | ترجمة النصوص إلى العربية |
| `anime_meta_ar` | metadata عربية مرتبطة بالـ source |
| `anime_meta_cache` | كاش AniList/Jikan |
| `anime` | canonical AniList ID مع titles/slugs متعددة |
| `site_cookies` | cookies لبعض المواقع المحمية؛ ليست بيانات عميل |
| `notifications` | إشعارات الحلقات والمقالات وحالة القراءة |

> ملاحظة مهمة: migration يحتوي مسارات توافق/تكرار آمنة لمخططات أقدم، كما أن ذاكرة المشروع تسجل وجود schema drift بين بعض البيئات. يجب أن يتحقق Nova 2 من شكل الإنتاج عبر API/مخطط الإنتاج قبل اعتماد DTO نهائي.

## 7. المصادقة والحماية

### anonymous token

يستخدم العميل `POST /api/auth/anon-token` ويخزن:

- anonymous token.
- وقت انتهاء token.

على Android يخزن ذلك في SecureStore، وعلى web في AsyncStorage. هناك cache داخل الذاكرة وsingle-flight لمنع إطلاق أكثر من طلب token عند فتح شاشة المشاهدة.

### هوية النسخة الرسمية

يرسل العميل:

- `X-Nova-Client`
- `X-Nova-Version`
- `X-Nova-Package`
- `User-Agent`
- `X-App-Token`
- `X-User-Token` عند وجود حساب

يطبّق الخادم release gate على العميل الذي يعلن نفسه mobile، ويرفض النسخة/الحزمة غير المطابقة أو token المنتهي. المسارات الحساسة المعلنة صراحة تشمل:

- `/api/anime/fetch-source`
- `/api/anime/download-mp4`
- `/api/animation/sources-stream`

توجد أيضاً rate limits عامة ولطلبات المصادر، وCORS منفصل لمسارات media proxy حتى لا تمنع headers المزود تشغيل الفيديو من الجهاز.

### حساب المستخدم

المصادقة تدعم email/password وGoogle وGitHub، مع مسار Replit OAuth legacy. لا ينبغي أن يبني Nova 2 منطقاً خاصاً يعتمد على session cookie فقط؛ يجب دعم token/session الذي يقبله API الإنتاجي والتحقق من response `/api/auth/me`.

### حالات فشل يجب أن تظهر للمستخدم

- النسخة الرسمية مطلوبة.
- التطبيق تحت الصيانة.
- token غير صالح/منتهي وإعادة المحاولة مرة واحدة.
- runtime غير موثوق.
- 401/403 للحساب.
- 429 بسبب rate limit.
- عدم توفر عنوان API.
- فشل metadata أو المصدر أو subtitle دون إسقاط الشاشة كلها.

## 8. التخزين المحلي والكاش

### AsyncStorage — فئات المفاتيح المؤكدة

- `nova-theme`
- `nova-history`
- `nova-favorites`
- `nova-mobile-user`
- `searchHistory`
- `fav-characters`
- `progress-*` لتقدم حلقات محلي خاص ببعض المسارات
- `anime-srcs-*` و`anim-srcs-*` لكاش المصادر
- `sub-ar-*` للترجمات العربية
- `desc-ar-*` للأوصاف العربية
- `my-rating-*`
- `saved-*`
- `adult-warn-*`
- `sub-settings-v1`
- `sub-offset-v1`
- `pref-autoplay`
- `pref-anim-sub`
- `nova-seek-duration`
- `anim-watch-history`
- `animation-notice-dismissed`
- `nova-downloads-v3`
- `nova-downloads-active-v2`
- `nova_anon_token` و`nova_anon_token_exp` على web فقط عند الحاجة

ينظف التطبيق بعض عائلات الكاش عند الإقلاع للحفاظ على حد AsyncStorage في Android. هذا تنظيف انتقائي، وليس مسحاً شاملاً لبيانات المستخدم.

### الملفات المحلية

- الجذر: `documentDirectory/downloads/`.
- المسار يضم عنوان العمل ثم المصدر ثم `episode-quality.mp4`.
- subtitle المحلي بجوار الفيديو بامتداد `.vtt`.
- الملف الفارغ أو غير القابل للقراءة لا يعد تنزيلًا صالحاً ويُحذف من السجل.

### قاعدة تصميم Nova 2

يجب فصل:

1. كاش metadata قصير العمر.
2. كاش source links المنتهية.
3. progress/history القابل للمزامنة.
4. الملفات المحلية الفعلية.
5. token/credentials الحساسة.

لا يجوز اعتبار رابط source المخزن محلياً صالحاً إلى الأبد؛ الروابط الموقعة وCDN لها expiry.

## 9. المشغل والترجمة والتنزيل

### Media3/ExoPlayer الحالي

الجسر `useNovaMedia3Player` يمرر إلى native view:

- `sourceUrl`.
- `sourceHeaders` كـ JSON.
- command متسلسل مثل play/pause/seek/speed/volume/pip.

الأحداث:

- `onPlaybackState`.
- `onProgress`.
- `onPlayerError`.

الحالات المنطقية:

- `idle`
- `loading`
- `readyToPlay`
- `ended`
- `error`

والبيانات تشمل `isPlaying`, `currentTime`, `duration`, و`message`.

### عناصر واجهة المشغل

- play/pause.
- seek bar وزمن حالي/كامل.
- seek ±10 ثوانٍ.
- اختيار الجودة/المصدر.
- السرعات: 0.5x، 0.75x، 1x، 1.25x، 1.5x، 2x.
- زر subtitles.
- تخطي المقدمة والنهاية عند وجود timestamps.
- الحلقة السابقة/التالية، والتشغيل التلقائي للحلقة التالية.
- تبديل portrait/landscape على الهاتف.
- Picture-in-Picture على الهاتف Android.
- شاشة خطأ مع محاولة مصدر آخر.
- تشغيل من initial position.
- مشغل معزول اختياري لاختبار عزل كراش المشغل، وليس المسار الافتراضي الحالي.

### صيغة الروابط

- MP4 direct.
- HLS master/media playlist.
- HLS عبر `hls-proxy` أو `seg-proxy`.
- `file://` للتشغيل المحلي.

يحتاج بعض المزودين `Referer` أو `Origin`. عند proxy داخل Nova يجب أن يبقى header في طبقة الخادم، ولا يُرسل Origin المزود إلى application API لأن CORS العام سيرفضه.

### subtitles

المسارات المدعومة:

- VTT مباشر.
- SRT مع تحويل comma millisecond إلى VTT.
- ASS/SSA مع تحويل timestamps وإزالة tags.
- HLS subtitle rendition مع تجميع segments.
- JSON cues من endpoint الترجمة.
- ترجمة server-side عبر `translate-vtt`.
- Whisper كحل fallback/اكتشاف.

المشغل يقرأ cues ويعرض cue النشط فوق الفيديو. الترجمة المترجمة تخزن بكاش episode-specific لتقليل الطلبات المتكررة. تنزيل الفيديو قد ينشئ sidecar VTT، لكن فشل subtitle لا يحوّل فيديوً صحيحاً إلى تنزيل فاشل.

### skip metadata

المشغل يقبل `skipIntro` و`skipOutro` كزوج start/end، ويظهر زر التخطي فقط خلال المجال الصحيح. لا يجوز افتراض timestamps إذا لم تصل من المصدر/خدمة التعرف.

### التنزيل

`downloadManager` خدمة خارج React:

- FileSystem background download session.
- progress listeners مخففة زمنياً لتجنب إغراق bridge.
- حفظ حالة المهمة أثناء التنزيل.
- pause يحافظ على الملف الجزئي.
- resume يستخدم resume data/byte offset.
- حتى ثلاث محاولات إعادة.
- إشعار Android ثابت مع progress.
- استعادة المهام المتقطعة بعد إعادة فتح التطبيق.
- تحقق من HTTP status ومن حجم الملف النهائي.
- حفظ subtitle بعد اكتمال الفيديو كخطوة best effort.
- تسجيل مكافأة التنزيل بعد حفظ ملف غير فارغ فقط.

## 10. الهاتف والـ Tablet والـ Foldable وAndroid TV

### الهاتف

- RTL وCairo.
- شريط تنقل سفلي.
- تشغيل full-screen مع إخفاء status bar.
- swipe/seek وtap لإظهار/إخفاء controls.
- portrait/landscape أثناء المشاهدة.
- PiP.
- قوائم جودة وسرعة لمسية.

### Tablet وFoldable

الكود الحالي يستخدم `useWindowDimensions` ومقاييس متجاوبة وعدد أعمدة/أبعاد بطاقات تتغير حسب العرض. لا توجد في Nova 1 نافذة Compose أو pane ثابتة؛ لذلك يجب أن يحدد Nova 2 breakpoints صريحة للاستخدام المزدوج، مع اختبار:

- portrait tablet.
- landscape tablet.
- fold مغلق.
- fold مفتوح.
- تغيّر العرض أثناء الانتقال أو المشاهدة.

### Android TV

التطبيق نفسه يكتشف TV عبر أبعاد/منصة الجهاز:

- قفل landscape.
- بطاقات وأزرار أكبر.
- focusable على عناصر التحكم.
- `hasTVPreferredFocus` على play.
- focus style واضح بإطار/ظل.
- D-pad بدلاً من gesture seek.
- الحلقة السابقة/التالية ظاهرة داخل المشغل.
- controls لا تختفي تلقائياً على TV.
- بعض عناصر الهاتف، مثل portrait وPiP، مخفية.
- شريط التبويب أكبر، وبعض التبويبات مخفية لتناسب ten-foot UI.

عند بناء Compose for TV يجب عدم الاكتفاء بتكبير واجهة الهاتف؛ يجب تعريف focus order وfocus restoration وselected state لكل شبكة وقائمة وقائمة منبثقة.

## 11. جدول المزايا القابل للتحويل إلى Nova 2

| المجال | سلوك Nova 1 | أولوية Nova 2 | معيار القبول |
|---|---|---:|---|
| الإقلاع | splash، config، auth warm-up، صيانة | P0 | لا تظهر شاشة فارغة ولا تتخطى حالة الصيانة |
| RTL | واجهة عربية وخط Cairo | P0 | النص والـ back stack والـ grids صحيحة RTL |
| Home | أقسام متعددة وأحدث حلقات | P0 | كل قسم يقرأ API الحقيقي وله loading/error/empty |
| Search | نص، عربي، filters، image search | P0 | نتائج وفتح تفاصيل وسجل بحث |
| Browse | genre/season/year/sort/pagination | P0 | pagination لا تكرر ولا تفقد العناصر |
| Anime detail | metadata، ترجمة، توصيات، trailer | P0 | عرض fallback عند غياب مزود واحد |
| Episodes | progress، titles، comments، search | P0 | فتح الحلقة من الموضع الصحيح |
| Watch | sources، quality، next/prev | P0 | source failover بدون crash |
| Media3 | HLS/MP4، headers، seek، speed | P0 | تشغيل فعلي على Android لا WebView |
| Subtitles | VTT/SRT/ASS/HLS/translation | P0 | عرض وترجمة وsidecar VTT |
| Progress | local + account sync | P0 | استمرار الموضع بعد الخروج والدخول |
| Downloads | background، pause/resume، notification | P0 | ملف غير فارغ قابل للتشغيل بعد restart |
| Favorites | local + API | P0 | optimistic UI مع معالجة الفشل |
| Library | history/favorites/characters | P1 | filter/delete/search تعمل |
| TV | D-pad/focus/landscape | P0 | كل المسارات الأساسية قابلة للتشغيل بلا لمس |
| Tablet/Foldable | adaptive grid/layout | P1 | لا قصّ أو تداخل عند تغيير العرض |
| Dubbed | كرتون + AW | P1 | endpoints منفصلة وlabels صحيحة |
| Animation | catalog/detail/watch | P1 | عدم تغيير مصادر HLS الحالية قبل تحقق |
| Comments | read/add/delete/like/replies | P1 | ربط صحيح بالعمل/الحلقة |
| Notifications | unread/read/delete | P1 | deep link للحلقة عند توفره |
| Ads/rewards | watch/download gates | P1 | لا تمنع التشغيل إذا كانت feature مغلقة |
| Auth | email/Google/GitHub | P1 | restore/logout/expiry |
| Diagnostics | reports/crash/Sentry | P1 | عدم كشف secrets في logs أو reports |

## 12. خطة نقل السلوك إلى Nova 2

### طبقات مقترحة

1. **Core models:** DTOs متوافقة مع response الحالي، مع mapping منفصل عن Compose.
2. **API client:** base URL قابل للتغيير، anonymous token، user token، release headers، retry محدود.
3. **Repositories:** catalog، anime detail، sources، subtitles، user data، downloads.
4. **Local storage:** DataStore/Room للبيانات المنظمة، وEncrypted storage للـ tokens، وملفات app-private للتنزيلات.
5. **Playback:** Media3 ExoPlayer مع DataSource headers وHLS وsubtitles وdownload/offline integration.
6. **UI state:** `Loading / Content / Empty / Error / Maintenance / OfficialAppRequired` بدلاً من حالة null غير واضحة.
7. **Compose layouts:** phone/tablet/foldable، ثم Compose for TV مع focus graph مستقل.
8. **Observability:** native crash reporting، structured logs، ومعلومات الجهاز دون أسرار.

### ترتيب التنفيذ بعد اعتماد التقرير

1. إنشاء مشروع Kotlin مستقل، دون لمس `artifacts/nova-mobile`.
2. تثبيت contract tests للـ API من response حقيقي أو fixtures منقحة بلا أسرار.
3. بناء الإقلاع والـ config والـ auth token.
4. بناء Home/Search/Browse/Detail/Episodes.
5. إدخال Media3 وتشغيل MP4/HLS مع headers.
6. إضافة subtitles والتقدم والحلقة التالية.
7. إضافة التنزيلات والاستعادة والإشعارات.
8. إضافة account sync/favorites/comments.
9. إضافة animation/dubbed/AW.
10. إضافة TV/focus ثم tablet/foldable.
11. البناء والاختبار خارج Replit على VPS/GitHub CI وأجهزة Android الفعلية.

## 13. قائمة تحقق الاختبار

### الإقلاع والحماية

- [ ] تشغيل رسمي ببناء Android صالح.
- [ ] anonymous token جديد، cached، منتهي، وتجديده.
- [ ] رفض `X-Nova-Client` غير الصحيح.
- [ ] رفض app version/package غير المدعوم مع رسالة مفهومة.
- [ ] maintenance mode.
- [ ] فشل API ثم العودة دون فقدان المستخدم المحلي.
- [ ] عدم ظهور token أو أي سر في log أو crash report.

### التنقل والواجهة

- [ ] فتح كل routes الرئيسية بالـ back stack الصحيح.
- [ ] RTL في النص، الصور، الأسهم، الشبكات والقوائم.
- [ ] حالات loading/error/empty لكل شاشة.
- [ ] تدوير الهاتف أثناء التفاصيل والمشاهدة.
- [ ] tablet portrait/landscape.
- [ ] foldable closed/open مع تغيير configuration.
- [ ] TV landscape وD-pad وfocus restoration.
- [ ] عدم اعتماد أي route مخفي على وجود تبويب مرئي.

### الكتالوج والبيانات

- [ ] Home sections.
- [ ] Search عربي/إنجليزي/ياباني.
- [ ] image search.
- [ ] browse filters/sort/pagination.
- [ ] تفاصيل بلا توصيات أو شخصيات أو trailer.
- [ ] عدد حلقات canonical عند اختلاف AniList/Jikan/source catalog.
- [ ] عناوين حلقات عربية عند فشل الترجمة.
- [ ] عدم إسقاط بطاقة بسبب فشل AniList إذا كانت بيانات المصدر متاحة.

### التشغيل

- [ ] MP4 مباشر.
- [ ] HLS master متعدد الجودة.
- [ ] HLS يحتاج headers.
- [ ] proxy manifest وsegment.
- [ ] انتهاء رابط signed CDN وإعادة جلب مصدر.
- [ ] المصدر الأول يفشل ثم المصدر الثاني يعمل.
- [ ] رابط غير صالح أو فارغ لا يسبب crash.
- [ ] pause/resume/seek/speed.
- [ ] intro/outro skip threshold.
- [ ] next/previous/autoplay.
- [ ] PiP والهاتف فقط.
- [ ] TV controls لا تعتمد على touch.

### الترجمة

- [ ] VTT مباشر.
- [ ] SRT.
- [ ] ASS/SSA.
- [ ] HLS subtitle rendition.
- [ ] ترجمة VTT إلى العربية.
- [ ] subtitle endpoint يفشل بينما الفيديو يستمر.
- [ ] subtitle sidecar بعد تنزيل الفيديو.
- [ ] إزاحة الترجمة وحفظ إعداداتها.

### التنزيل

- [ ] تنزيل في foreground.
- [ ] تنزيل في background.
- [ ] notification permission مرفوضة.
- [ ] pause دون حذف الجزء المنزّل.
- [ ] resume بعد إغلاق التطبيق.
- [ ] retry ثم error واضح.
- [ ] range request.
- [ ] ملف صفري/تالف لا يظهر كمكتمل.
- [ ] تشغيل MP4 وVTT محلياً.
- [ ] حذف عنصر واحد وكل العناصر.

### الحساب والمزامنة

- [ ] signup/verify/signin/signout.
- [ ] Google/GitHub callback.
- [ ] restore `/me`.
- [ ] profile/password/account deletion.
- [ ] history/favorites/progress sync.
- [ ] تعليق/حذف/like/count.
- [ ] unread notifications وdeep links.

## 14. نقاط يجب حسمها قبل كتابة Nova 2

1. هل Nova 2 سيدعم كل أقسام Nova 1 في الإصدار الأول، أم سيبدأ بالأنمي الأساسي ثم يضيف dubbed/animation؟
2. ما هو contract الإنتاج النهائي لكل endpoint بعد schema drift؟ يجب أخذ عينة response فعلية من VPS دون تسجيل بيانات حساسة.
3. هل تسجيل الدخول في Nova 2 يستخدم نفس token/session الحالي أم يحتاج endpoint native-specific؟
4. هل التنزيلات ستظل عبر `download-mp4` أم ستنتقل إلى Media3 DownloadService للـ HLS offline؟
5. هل ستبقى ترجمة Whisper اختيارية server-side، أم يضاف مسار offline؟
6. ما هي سياسة الجودة الافتراضية على TV والهاتف؟
7. ما هي متطلبات Play Integrity والتوقيع في build pipeline؟
8. ما هي مصادر animation التي ستُعتمد فعلياً؟ حالة الذاكرة الحالية تقول إن HLS animation مؤجل ولا ينبغي تغييره بلا اختبار.
9. ما هو السلوك المطلوب عند anonymous user مقابل user account في history/favorites/progress؟
10. هل notification scheduler جزء من Nova 2 الأول أم مرحلة لاحقة؟

## 15. قرار المرحلة

- **Phase 1 — تحليل Nova 1:** مكتملة في هذا التقرير.
- **Nova 1:** لم يُحذف أو يُحوّل أو يُعاد هيكلته.
- **Nova 2:** لم يُنشأ ولم يُعدّل في هذه المرحلة.
- **تشغيل Replit:** لم يتم تشغيل التطبيق أو تثبيت حزم أو استخدام workflow للتشغيل.
- **الخطوة التالية:** مراجعة هذا التقرير واعتماد النطاق والعقود قبل إنشاء مشروع Kotlin/Compose مستقل.