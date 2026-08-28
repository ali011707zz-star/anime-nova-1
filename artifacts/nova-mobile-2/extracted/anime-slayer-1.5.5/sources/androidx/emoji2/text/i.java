package androidx.emoji2.text;

import android.content.Context;
import android.content.pm.PackageManager;
import android.database.ContentObserver;
import android.graphics.Typeface;
import android.os.Handler;
import androidx.emoji2.text.d;
import androidx.emoji2.text.i;
import h0.o;
import java.nio.ByteBuffer;
import java.util.concurrent.Executor;
import java.util.concurrent.ThreadPoolExecutor;
import n0.f;

/* compiled from: FontRequestEmojiCompatConfig.java */
/* loaded from: classes.dex */
public class i extends d.c {

    /* renamed from: j, reason: collision with root package name */
    public static final a f1981j = new a();

    /* compiled from: FontRequestEmojiCompatConfig.java */
    /* loaded from: classes.dex */
    public static class a {
        public Typeface a(Context context, f.b bVar) throws PackageManager.NameNotFoundException {
            return n0.f.a(context, null, new f.b[]{bVar});
        }

        public f.a b(Context context, n0.d dVar) throws PackageManager.NameNotFoundException {
            return n0.f.b(context, null, dVar);
        }

        public void c(Context context, ContentObserver contentObserver) {
            context.getContentResolver().unregisterContentObserver(contentObserver);
        }
    }

    /* compiled from: FontRequestEmojiCompatConfig.java */
    /* loaded from: classes.dex */
    public static class b implements d.g {

        /* renamed from: a, reason: collision with root package name */
        public final Context f1982a;

        /* renamed from: b, reason: collision with root package name */
        public final n0.d f1983b;

        /* renamed from: c, reason: collision with root package name */
        public final a f1984c;

        /* renamed from: d, reason: collision with root package name */
        public final Object f1985d = new Object();

        /* renamed from: e, reason: collision with root package name */
        public Handler f1986e;

        /* renamed from: f, reason: collision with root package name */
        public Executor f1987f;

        /* renamed from: g, reason: collision with root package name */
        public ThreadPoolExecutor f1988g;

        /* renamed from: h, reason: collision with root package name */
        public d.h f1989h;

        /* renamed from: i, reason: collision with root package name */
        public ContentObserver f1990i;

        /* renamed from: j, reason: collision with root package name */
        public Runnable f1991j;

        public b(Context context, n0.d dVar, a aVar) {
            p0.i.h(context, "Context cannot be null");
            p0.i.h(dVar, "FontRequest cannot be null");
            this.f1982a = context.getApplicationContext();
            this.f1983b = dVar;
            this.f1984c = aVar;
        }

        @Override // androidx.emoji2.text.d.g
        public void a(d.h hVar) {
            p0.i.h(hVar, "LoaderCallback cannot be null");
            synchronized (this.f1985d) {
                this.f1989h = hVar;
            }
            d();
        }

        public final void b() {
            synchronized (this.f1985d) {
                this.f1989h = null;
                ContentObserver contentObserver = this.f1990i;
                if (contentObserver != null) {
                    this.f1984c.c(this.f1982a, contentObserver);
                    this.f1990i = null;
                }
                Handler handler = this.f1986e;
                if (handler != null) {
                    handler.removeCallbacks(this.f1991j);
                }
                this.f1986e = null;
                ThreadPoolExecutor threadPoolExecutor = this.f1988g;
                if (threadPoolExecutor != null) {
                    threadPoolExecutor.shutdown();
                }
                this.f1987f = null;
                this.f1988g = null;
            }
        }

        public void c() {
            synchronized (this.f1985d) {
                if (this.f1989h == null) {
                    return;
                }
                try {
                    f.b e10 = e();
                    int b10 = e10.b();
                    if (b10 == 2) {
                        synchronized (this.f1985d) {
                        }
                    }
                    if (b10 == 0) {
                        try {
                            m0.k.a("EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface");
                            Typeface a10 = this.f1984c.a(this.f1982a, e10);
                            ByteBuffer f10 = o.f(this.f1982a, null, e10.d());
                            if (f10 != null && a10 != null) {
                                l b11 = l.b(a10, f10);
                                m0.k.b();
                                synchronized (this.f1985d) {
                                    d.h hVar = this.f1989h;
                                    if (hVar != null) {
                                        hVar.b(b11);
                                    }
                                }
                                b();
                                return;
                            }
                            throw new RuntimeException("Unable to open file.");
                        } catch (Throwable th) {
                            m0.k.b();
                            throw th;
                        }
                    }
                    throw new RuntimeException("fetchFonts result is not OK. (" + b10 + ")");
                } catch (Throwable th2) {
                    synchronized (this.f1985d) {
                        d.h hVar2 = this.f1989h;
                        if (hVar2 != null) {
                            hVar2.a(th2);
                        }
                        b();
                    }
                }
            }
        }

        public void d() {
            synchronized (this.f1985d) {
                if (this.f1989h == null) {
                    return;
                }
                if (this.f1987f == null) {
                    ThreadPoolExecutor b10 = androidx.emoji2.text.b.b("emojiCompat");
                    this.f1988g = b10;
                    this.f1987f = b10;
                }
                this.f1987f.execute(new Runnable() { // from class: androidx.emoji2.text.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        i.b.this.c();
                    }
                });
            }
        }

        public final f.b e() {
            try {
                f.a b10 = this.f1984c.b(this.f1982a, this.f1983b);
                if (b10.c() == 0) {
                    f.b[] b11 = b10.b();
                    if (b11 != null && b11.length != 0) {
                        return b11[0];
                    }
                    throw new RuntimeException("fetchFonts failed (empty result)");
                }
                throw new RuntimeException("fetchFonts failed (" + b10.c() + ")");
            } catch (PackageManager.NameNotFoundException e10) {
                throw new RuntimeException("provider not found", e10);
            }
        }

        public void f(Executor executor) {
            synchronized (this.f1985d) {
                this.f1987f = executor;
            }
        }
    }

    public i(Context context, n0.d dVar) {
        super(new b(context, dVar, f1981j));
    }

    public i c(Executor executor) {
        ((b) a()).f(executor);
        return this;
    }
}
