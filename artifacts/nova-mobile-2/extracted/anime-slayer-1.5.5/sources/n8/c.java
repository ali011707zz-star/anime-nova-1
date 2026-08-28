package n8;

import android.content.Context;
import android.util.Log;
import com.getkeepsafe.relinker.MissingLibraryException;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import n8.b;
import o8.i;

/* compiled from: ReLinkerInstance.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public final Set<String> f11367a;

    /* renamed from: b, reason: collision with root package name */
    public final b.InterfaceC0276b f11368b;

    /* renamed from: c, reason: collision with root package name */
    public final b.a f11369c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f11370d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f11371e;

    /* renamed from: f, reason: collision with root package name */
    public b.d f11372f;

    /* compiled from: ReLinkerInstance.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Context f11373f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ String f11374g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ String f11375h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ b.c f11376i;

        public a(Context context, String str, String str2, b.c cVar) {
            this.f11373f = context;
            this.f11374g = str;
            this.f11375h = str2;
            this.f11376i = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                c.this.g(this.f11373f, this.f11374g, this.f11375h);
                this.f11376i.b();
            } catch (MissingLibraryException e10) {
                this.f11376i.a(e10);
            } catch (UnsatisfiedLinkError e11) {
                this.f11376i.a(e11);
            }
        }
    }

    /* compiled from: ReLinkerInstance.java */
    /* loaded from: classes.dex */
    public class b implements FilenameFilter {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f11378a;

        public b(String str) {
            this.f11378a = str;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.startsWith(this.f11378a);
        }
    }

    public c() {
        this(new d(), new n8.a());
    }

    public void b(Context context, String str, String str2) {
        File c10 = c(context);
        File d10 = d(context, str, str2);
        File[] listFiles = c10.listFiles(new b(this.f11368b.a(str)));
        if (listFiles == null) {
            return;
        }
        for (File file : listFiles) {
            if (this.f11370d || !file.getAbsolutePath().equals(d10.getAbsolutePath())) {
                file.delete();
            }
        }
    }

    public File c(Context context) {
        return context.getDir("lib", 0);
    }

    public File d(Context context, String str, String str2) {
        String a10 = this.f11368b.a(str);
        if (e.a(str2)) {
            return new File(c(context), a10);
        }
        return new File(c(context), a10 + "." + str2);
    }

    public void e(Context context, String str) {
        f(context, str, null, null);
    }

    public void f(Context context, String str, String str2, b.c cVar) {
        if (context != null) {
            if (!e.a(str)) {
                i("Beginning load of %s...", str);
                if (cVar == null) {
                    g(context, str, str2);
                    return;
                } else {
                    new Thread(new a(context, str, str2, cVar)).start();
                    return;
                }
            }
            throw new IllegalArgumentException("Given library is either null or empty");
        }
        throw new IllegalArgumentException("Given context is null");
    }

    public final void g(Context context, String str, String str2) {
        if (this.f11367a.contains(str) && !this.f11370d) {
            i("%s already loaded previously!", str);
            return;
        }
        try {
            this.f11368b.c(str);
            this.f11367a.add(str);
            i("%s (%s) was loaded normally!", str, str2);
        } catch (UnsatisfiedLinkError e10) {
            i("Loading the library normally failed: %s", Log.getStackTraceString(e10));
            i("%s (%s) was not loaded normally, re-linking...", str, str2);
            File d10 = d(context, str, str2);
            if (!d10.exists() || this.f11370d) {
                if (this.f11370d) {
                    i("Forcing a re-link of %s (%s)...", str, str2);
                }
                b(context, str, str2);
                this.f11369c.a(context, this.f11368b.d(), this.f11368b.a(str), d10, this);
            }
            try {
                if (this.f11371e) {
                    i iVar = null;
                    try {
                        i iVar2 = new i(d10);
                        try {
                            List<String> h10 = iVar2.h();
                            iVar2.close();
                            Iterator<String> it2 = h10.iterator();
                            while (it2.hasNext()) {
                                e(context, this.f11368b.b(it2.next()));
                            }
                        } catch (Throwable th) {
                            th = th;
                            iVar = iVar2;
                            iVar.close();
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
            } catch (IOException unused) {
            }
            this.f11368b.e(d10.getAbsolutePath());
            this.f11367a.add(str);
            i("%s (%s) was re-linked!", str, str2);
        }
    }

    public void h(String str) {
        b.d dVar = this.f11372f;
        if (dVar != null) {
            dVar.log(str);
        }
    }

    public void i(String str, Object... objArr) {
        h(String.format(Locale.US, str, objArr));
    }

    public c(b.InterfaceC0276b interfaceC0276b, b.a aVar) {
        this.f11367a = new HashSet();
        if (interfaceC0276b == null) {
            throw new IllegalArgumentException("Cannot pass null library loader");
        }
        if (aVar != null) {
            this.f11368b = interfaceC0276b;
            this.f11369c = aVar;
            return;
        }
        throw new IllegalArgumentException("Cannot pass null library installer");
    }
}
