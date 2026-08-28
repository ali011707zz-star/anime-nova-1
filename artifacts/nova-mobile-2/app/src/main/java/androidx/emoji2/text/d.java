package androidx.emoji2.text;

import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.view.KeyEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import androidx.emoji2.text.g;
import com.google.android.gms.common.api.Api;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* compiled from: EmojiCompat.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: n, reason: collision with root package name */
    public static final Object f1922n = new Object();

    /* renamed from: o, reason: collision with root package name */
    public static final Object f1923o = new Object();

    /* renamed from: p, reason: collision with root package name */
    public static volatile d f1924p;

    /* renamed from: b, reason: collision with root package name */
    public final Set<e> f1926b;

    /* renamed from: e, reason: collision with root package name */
    public final b f1929e;

    /* renamed from: f, reason: collision with root package name */
    public final g f1930f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f1931g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f1932h;

    /* renamed from: i, reason: collision with root package name */
    public final int[] f1933i;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f1934j;

    /* renamed from: k, reason: collision with root package name */
    public final int f1935k;

    /* renamed from: l, reason: collision with root package name */
    public final int f1936l;

    /* renamed from: m, reason: collision with root package name */
    public final InterfaceC0036d f1937m;

    /* renamed from: a, reason: collision with root package name */
    public final ReadWriteLock f1925a = new ReentrantReadWriteLock();

    /* renamed from: c, reason: collision with root package name */
    public volatile int f1927c = 3;

    /* renamed from: d, reason: collision with root package name */
    public final Handler f1928d = new Handler(Looper.getMainLooper());

    /* compiled from: EmojiCompat.java */
    /* loaded from: classes.dex */
    public static final class a extends b {

        /* renamed from: b, reason: collision with root package name */
        public volatile androidx.emoji2.text.g f1938b;

        /* renamed from: c, reason: collision with root package name */
        public volatile l f1939c;

        /* compiled from: EmojiCompat.java */
        /* renamed from: androidx.emoji2.text.d$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class C0035a extends h {
            public C0035a() {
            }

            @Override // androidx.emoji2.text.d.h
            public void a(Throwable th) {
                a.this.f1941a.m(th);
            }

            @Override // androidx.emoji2.text.d.h
            public void b(l lVar) {
                a.this.d(lVar);
            }
        }

        public a(d dVar) {
            super(dVar);
        }

        @Override // androidx.emoji2.text.d.b
        public void a() {
            try {
                this.f1941a.f1930f.a(new C0035a());
            } catch (Throwable th) {
                this.f1941a.m(th);
            }
        }

        @Override // androidx.emoji2.text.d.b
        public CharSequence b(CharSequence charSequence, int i10, int i11, int i12, boolean z10) {
            return this.f1938b.h(charSequence, i10, i11, i12, z10);
        }

        @Override // androidx.emoji2.text.d.b
        public void c(EditorInfo editorInfo) {
            editorInfo.extras.putInt("android.support.text.emoji.emojiCompat_metadataVersion", this.f1939c.e());
            editorInfo.extras.putBoolean("android.support.text.emoji.emojiCompat_replaceAll", this.f1941a.f1931g);
        }

        public void d(l lVar) {
            if (lVar == null) {
                this.f1941a.m(new IllegalArgumentException("metadataRepo cannot be null"));
                return;
            }
            this.f1939c = lVar;
            l lVar2 = this.f1939c;
            i iVar = new i();
            InterfaceC0036d interfaceC0036d = this.f1941a.f1937m;
            d dVar = this.f1941a;
            this.f1938b = new androidx.emoji2.text.g(lVar2, iVar, interfaceC0036d, dVar.f1932h, dVar.f1933i);
            this.f1941a.n();
        }
    }

    /* compiled from: EmojiCompat.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public final d f1941a;

        public b(d dVar) {
            this.f1941a = dVar;
        }

        public void a() {
            this.f1941a.n();
        }

        public CharSequence b(CharSequence charSequence, int i10, int i11, int i12, boolean z10) {
            return charSequence;
        }

        public void c(EditorInfo editorInfo) {
        }
    }

    /* compiled from: EmojiCompat.java */
    /* loaded from: classes.dex */
    public static abstract class c {

        /* renamed from: a, reason: collision with root package name */
        public final g f1942a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f1943b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f1944c;

        /* renamed from: d, reason: collision with root package name */
        public int[] f1945d;

        /* renamed from: e, reason: collision with root package name */
        public Set<e> f1946e;

        /* renamed from: f, reason: collision with root package name */
        public boolean f1947f;

        /* renamed from: g, reason: collision with root package name */
        public int f1948g = -16711936;

        /* renamed from: h, reason: collision with root package name */
        public int f1949h = 0;

        /* renamed from: i, reason: collision with root package name */
        public InterfaceC0036d f1950i = new g.b();

        public c(g gVar) {
            p0.i.h(gVar, "metadataLoader cannot be null.");
            this.f1942a = gVar;
        }

        public final g a() {
            return this.f1942a;
        }

        public c b(int i10) {
            this.f1949h = i10;
            return this;
        }
    }

    /* compiled from: EmojiCompat.java */
    /* renamed from: androidx.emoji2.text.d$d, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0036d {
        boolean a(CharSequence charSequence, int i10, int i11, int i12);
    }

    /* compiled from: EmojiCompat.java */
    /* loaded from: classes.dex */
    public static abstract class e {
        public void a(Throwable th) {
        }

        public void b() {
        }
    }

    /* compiled from: EmojiCompat.java */
    /* loaded from: classes.dex */
    public static class f implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final List<e> f1951f;

        /* renamed from: g, reason: collision with root package name */
        public final Throwable f1952g;

        /* renamed from: h, reason: collision with root package name */
        public final int f1953h;

        public f(e eVar, int i10) {
            this(Arrays.asList((e) p0.i.h(eVar, "initCallback cannot be null")), i10, null);
        }

        @Override // java.lang.Runnable
        public void run() {
            int size = this.f1951f.size();
            int i10 = 0;
            if (this.f1953h != 1) {
                while (i10 < size) {
                    this.f1951f.get(i10).a(this.f1952g);
                    i10++;
                }
            } else {
                while (i10 < size) {
                    this.f1951f.get(i10).b();
                    i10++;
                }
            }
        }

        public f(Collection<e> collection, int i10) {
            this(collection, i10, null);
        }

        public f(Collection<e> collection, int i10, Throwable th) {
            p0.i.h(collection, "initCallbacks cannot be null");
            this.f1951f = new ArrayList(collection);
            this.f1953h = i10;
            this.f1952g = th;
        }
    }

    /* compiled from: EmojiCompat.java */
    /* loaded from: classes.dex */
    public interface g {
        void a(h hVar);
    }

    /* compiled from: EmojiCompat.java */
    /* loaded from: classes.dex */
    public static abstract class h {
        public abstract void a(Throwable th);

        public abstract void b(l lVar);
    }

    /* compiled from: EmojiCompat.java */
    /* loaded from: classes.dex */
    public static class i {
        public androidx.emoji2.text.h a(androidx.emoji2.text.f fVar) {
            return new n(fVar);
        }
    }

    public d(c cVar) {
        this.f1931g = cVar.f1943b;
        this.f1932h = cVar.f1944c;
        this.f1933i = cVar.f1945d;
        this.f1934j = cVar.f1947f;
        this.f1935k = cVar.f1948g;
        this.f1930f = cVar.f1942a;
        this.f1936l = cVar.f1949h;
        this.f1937m = cVar.f1950i;
        s.b bVar = new s.b();
        this.f1926b = bVar;
        Set<e> set = cVar.f1946e;
        if (set != null && !set.isEmpty()) {
            bVar.addAll(cVar.f1946e);
        }
        this.f1929e = Build.VERSION.SDK_INT < 19 ? new b(this) : new a(this);
        l();
    }

    public static d b() {
        d dVar;
        synchronized (f1922n) {
            dVar = f1924p;
            p0.i.i(dVar != null, "EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK's manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message.");
        }
        return dVar;
    }

    public static boolean e(InputConnection inputConnection, Editable editable, int i10, int i11, boolean z10) {
        if (Build.VERSION.SDK_INT >= 19) {
            return androidx.emoji2.text.g.c(inputConnection, editable, i10, i11, z10);
        }
        return false;
    }

    public static boolean f(Editable editable, int i10, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 19) {
            return androidx.emoji2.text.g.d(editable, i10, keyEvent);
        }
        return false;
    }

    public static d g(c cVar) {
        d dVar = f1924p;
        if (dVar == null) {
            synchronized (f1922n) {
                dVar = f1924p;
                if (dVar == null) {
                    dVar = new d(cVar);
                    f1924p = dVar;
                }
            }
        }
        return dVar;
    }

    public static boolean h() {
        return f1924p != null;
    }

    public int c() {
        return this.f1935k;
    }

    public int d() {
        this.f1925a.readLock().lock();
        try {
            return this.f1927c;
        } finally {
            this.f1925a.readLock().unlock();
        }
    }

    public boolean i() {
        return this.f1934j;
    }

    public final boolean j() {
        return d() == 1;
    }

    public void k() {
        p0.i.i(this.f1936l == 1, "Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading");
        if (j()) {
            return;
        }
        this.f1925a.writeLock().lock();
        try {
            if (this.f1927c == 0) {
                return;
            }
            this.f1927c = 0;
            this.f1925a.writeLock().unlock();
            this.f1929e.a();
        } finally {
            this.f1925a.writeLock().unlock();
        }
    }

    public final void l() {
        this.f1925a.writeLock().lock();
        try {
            if (this.f1936l == 0) {
                this.f1927c = 0;
            }
            this.f1925a.writeLock().unlock();
            if (d() == 0) {
                this.f1929e.a();
            }
        } catch (Throwable th) {
            this.f1925a.writeLock().unlock();
            throw th;
        }
    }

    public void m(Throwable th) {
        ArrayList arrayList = new ArrayList();
        this.f1925a.writeLock().lock();
        try {
            this.f1927c = 2;
            arrayList.addAll(this.f1926b);
            this.f1926b.clear();
            this.f1925a.writeLock().unlock();
            this.f1928d.post(new f(arrayList, this.f1927c, th));
        } catch (Throwable th2) {
            this.f1925a.writeLock().unlock();
            throw th2;
        }
    }

    public void n() {
        ArrayList arrayList = new ArrayList();
        this.f1925a.writeLock().lock();
        try {
            this.f1927c = 1;
            arrayList.addAll(this.f1926b);
            this.f1926b.clear();
            this.f1925a.writeLock().unlock();
            this.f1928d.post(new f(arrayList, this.f1927c));
        } catch (Throwable th) {
            this.f1925a.writeLock().unlock();
            throw th;
        }
    }

    public CharSequence o(CharSequence charSequence) {
        return p(charSequence, 0, charSequence == null ? 0 : charSequence.length());
    }

    public CharSequence p(CharSequence charSequence, int i10, int i11) {
        return q(charSequence, i10, i11, Api.BaseClientBuilder.API_PRIORITY_OTHER);
    }

    public CharSequence q(CharSequence charSequence, int i10, int i11, int i12) {
        return r(charSequence, i10, i11, i12, 0);
    }

    public CharSequence r(CharSequence charSequence, int i10, int i11, int i12, int i13) {
        boolean z10;
        p0.i.i(j(), "Not initialized yet");
        p0.i.e(i10, "start cannot be negative");
        p0.i.e(i11, "end cannot be negative");
        p0.i.e(i12, "maxEmojiCount cannot be negative");
        p0.i.b(i10 <= i11, "start should be <= than end");
        if (charSequence == null) {
            return null;
        }
        p0.i.b(i10 <= charSequence.length(), "start should be < than charSequence length");
        p0.i.b(i11 <= charSequence.length(), "end should be < than charSequence length");
        if (charSequence.length() == 0 || i10 == i11) {
            return charSequence;
        }
        if (i13 != 1) {
            z10 = i13 != 2 ? this.f1931g : false;
        } else {
            z10 = true;
        }
        return this.f1929e.b(charSequence, i10, i11, i12, z10);
    }

    public void s(e eVar) {
        p0.i.h(eVar, "initCallback cannot be null");
        this.f1925a.writeLock().lock();
        try {
            if (this.f1927c != 1 && this.f1927c != 2) {
                this.f1926b.add(eVar);
            }
            this.f1928d.post(new f(eVar, this.f1927c));
        } finally {
            this.f1925a.writeLock().unlock();
        }
    }

    public void t(e eVar) {
        p0.i.h(eVar, "initCallback cannot be null");
        this.f1925a.writeLock().lock();
        try {
            this.f1926b.remove(eVar);
        } finally {
            this.f1925a.writeLock().unlock();
        }
    }

    public void u(EditorInfo editorInfo) {
        if (!j() || editorInfo == null) {
            return;
        }
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        this.f1929e.c(editorInfo);
    }
}
