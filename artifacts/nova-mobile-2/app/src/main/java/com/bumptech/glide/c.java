package com.bumptech.glide;

import android.content.ComponentCallbacks2;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import android.view.View;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.bumptech.glide.load.data.k;
import com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser;
import e8.l;
import java.io.File;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import v7.a;
import v7.b;
import v7.d;
import v7.e;
import v7.f;
import v7.k;
import v7.s;
import v7.u;
import v7.v;
import v7.w;
import v7.x;
import w7.a;
import w7.b;
import w7.c;
import w7.d;
import w7.e;
import w7.f;
import y7.a0;
import y7.b0;
import y7.m;
import y7.p;
import y7.t;
import y7.v;
import y7.x;
import y7.y;
import z7.a;

/* compiled from: Glide.java */
/* loaded from: classes.dex */
public class c implements ComponentCallbacks2 {

    /* renamed from: q, reason: collision with root package name */
    public static volatile c f4514q;

    /* renamed from: r, reason: collision with root package name */
    public static volatile boolean f4515r;

    /* renamed from: f, reason: collision with root package name */
    public final r7.k f4516f;

    /* renamed from: g, reason: collision with root package name */
    public final s7.e f4517g;

    /* renamed from: h, reason: collision with root package name */
    public final t7.i f4518h;

    /* renamed from: i, reason: collision with root package name */
    public final e f4519i;

    /* renamed from: j, reason: collision with root package name */
    public final Registry f4520j;

    /* renamed from: k, reason: collision with root package name */
    public final s7.b f4521k;

    /* renamed from: l, reason: collision with root package name */
    public final l f4522l;

    /* renamed from: m, reason: collision with root package name */
    public final e8.d f4523m;

    /* renamed from: o, reason: collision with root package name */
    public final a f4525o;

    /* renamed from: n, reason: collision with root package name */
    public final List<j> f4524n = new ArrayList();

    /* renamed from: p, reason: collision with root package name */
    public f f4526p = f.NORMAL;

    /* compiled from: Glide.java */
    /* loaded from: classes.dex */
    public interface a {
        h8.h build();
    }

    public c(Context context, r7.k kVar, t7.i iVar, s7.e eVar, s7.b bVar, l lVar, e8.d dVar, int i10, a aVar, Map<Class<?>, k<?, ?>> map, List<h8.g<Object>> list, boolean z10, boolean z11) {
        p7.i gVar;
        p7.i yVar;
        this.f4516f = kVar;
        this.f4517g = eVar;
        this.f4521k = bVar;
        this.f4518h = iVar;
        this.f4522l = lVar;
        this.f4523m = dVar;
        this.f4525o = aVar;
        Resources resources = context.getResources();
        Registry registry = new Registry();
        this.f4520j = registry;
        registry.o(new DefaultImageHeaderParser());
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 27) {
            registry.o(new p());
        }
        List<ImageHeaderParser> g10 = registry.g();
        c8.a aVar2 = new c8.a(context, g10, eVar, bVar);
        p7.i<ParcelFileDescriptor, Bitmap> h10 = b0.h(eVar);
        m mVar = new m(registry.g(), resources.getDisplayMetrics(), eVar, bVar);
        if (z11 && i11 >= 28) {
            yVar = new t();
            gVar = new y7.h();
        } else {
            gVar = new y7.g(mVar);
            yVar = new y(mVar, bVar);
        }
        a8.e eVar2 = new a8.e(context);
        s.c cVar = new s.c(resources);
        s.d dVar2 = new s.d(resources);
        s.b bVar2 = new s.b(resources);
        s.a aVar3 = new s.a(resources);
        y7.c cVar2 = new y7.c(bVar);
        d8.a aVar4 = new d8.a();
        d8.d dVar3 = new d8.d();
        ContentResolver contentResolver = context.getContentResolver();
        registry.c(ByteBuffer.class, new v7.c()).c(InputStream.class, new v7.t(bVar)).e("Bitmap", ByteBuffer.class, Bitmap.class, gVar).e("Bitmap", InputStream.class, Bitmap.class, yVar);
        if (ParcelFileDescriptorRewinder.c()) {
            registry.e("Bitmap", ParcelFileDescriptor.class, Bitmap.class, new v(mVar));
        }
        registry.e("Bitmap", ParcelFileDescriptor.class, Bitmap.class, h10).e("Bitmap", AssetFileDescriptor.class, Bitmap.class, b0.c(eVar)).b(Bitmap.class, Bitmap.class, v.a.b()).e("Bitmap", Bitmap.class, Bitmap.class, new a0()).d(Bitmap.class, cVar2).e("BitmapDrawable", ByteBuffer.class, BitmapDrawable.class, new y7.a(resources, gVar)).e("BitmapDrawable", InputStream.class, BitmapDrawable.class, new y7.a(resources, yVar)).e("BitmapDrawable", ParcelFileDescriptor.class, BitmapDrawable.class, new y7.a(resources, h10)).d(BitmapDrawable.class, new y7.b(eVar, cVar2)).e("Gif", InputStream.class, c8.c.class, new c8.j(g10, aVar2, bVar)).e("Gif", ByteBuffer.class, c8.c.class, aVar2).d(c8.c.class, new c8.d()).b(o7.a.class, o7.a.class, v.a.b()).e("Bitmap", o7.a.class, Bitmap.class, new c8.h(eVar)).a(Uri.class, Drawable.class, eVar2).a(Uri.class, Bitmap.class, new x(eVar2, eVar)).p(new a.C0445a()).b(File.class, ByteBuffer.class, new d.b()).b(File.class, InputStream.class, new f.e()).a(File.class, File.class, new b8.a()).b(File.class, ParcelFileDescriptor.class, new f.b()).b(File.class, File.class, v.a.b()).p(new k.a(bVar));
        if (ParcelFileDescriptorRewinder.c()) {
            registry.p(new ParcelFileDescriptorRewinder.a());
        }
        Class cls = Integer.TYPE;
        registry.b(cls, InputStream.class, cVar).b(cls, ParcelFileDescriptor.class, bVar2).b(Integer.class, InputStream.class, cVar).b(Integer.class, ParcelFileDescriptor.class, bVar2).b(Integer.class, Uri.class, dVar2).b(cls, AssetFileDescriptor.class, aVar3).b(Integer.class, AssetFileDescriptor.class, aVar3).b(cls, Uri.class, dVar2).b(String.class, InputStream.class, new e.c()).b(Uri.class, InputStream.class, new e.c()).b(String.class, InputStream.class, new u.c()).b(String.class, ParcelFileDescriptor.class, new u.b()).b(String.class, AssetFileDescriptor.class, new u.a()).b(Uri.class, InputStream.class, new b.a()).b(Uri.class, InputStream.class, new a.c(context.getAssets())).b(Uri.class, ParcelFileDescriptor.class, new a.b(context.getAssets())).b(Uri.class, InputStream.class, new c.a(context)).b(Uri.class, InputStream.class, new d.a(context));
        if (i11 >= 29) {
            registry.b(Uri.class, InputStream.class, new e.c(context));
            registry.b(Uri.class, ParcelFileDescriptor.class, new e.b(context));
        }
        registry.b(Uri.class, InputStream.class, new w.d(contentResolver)).b(Uri.class, ParcelFileDescriptor.class, new w.b(contentResolver)).b(Uri.class, AssetFileDescriptor.class, new w.a(contentResolver)).b(Uri.class, InputStream.class, new x.a()).b(URL.class, InputStream.class, new f.a()).b(Uri.class, File.class, new k.a(context)).b(v7.g.class, InputStream.class, new a.C0398a()).b(byte[].class, ByteBuffer.class, new b.a()).b(byte[].class, InputStream.class, new b.d()).b(Uri.class, Uri.class, v.a.b()).b(Drawable.class, Drawable.class, v.a.b()).a(Drawable.class, Drawable.class, new a8.f()).q(Bitmap.class, BitmapDrawable.class, new d8.b(resources)).q(Bitmap.class, byte[].class, aVar4).q(Drawable.class, byte[].class, new d8.c(eVar, aVar4, dVar3)).q(c8.c.class, byte[].class, dVar3);
        if (i11 >= 23) {
            p7.i<ByteBuffer, Bitmap> d10 = b0.d(eVar);
            registry.a(ByteBuffer.class, Bitmap.class, d10);
            registry.a(ByteBuffer.class, BitmapDrawable.class, new y7.a(resources, d10));
        }
        this.f4519i = new e(context, bVar, registry, new i8.g(), aVar, map, list, kVar, z10, i10);
    }

    public static void a(Context context, GeneratedAppGlideModule generatedAppGlideModule) {
        if (!f4515r) {
            f4515r = true;
            m(context, generatedAppGlideModule);
            f4515r = false;
            return;
        }
        throw new IllegalStateException("You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead");
    }

    public static c c(Context context) {
        if (f4514q == null) {
            GeneratedAppGlideModule d10 = d(context.getApplicationContext());
            synchronized (c.class) {
                if (f4514q == null) {
                    a(context, d10);
                }
            }
        }
        return f4514q;
    }

    public static GeneratedAppGlideModule d(Context context) {
        try {
            return (GeneratedAppGlideModule) GeneratedAppGlideModuleImpl.class.getDeclaredConstructor(Context.class).newInstance(context.getApplicationContext());
        } catch (ClassNotFoundException unused) {
            return null;
        } catch (IllegalAccessException e10) {
            q(e10);
            return null;
        } catch (InstantiationException e11) {
            q(e11);
            return null;
        } catch (NoSuchMethodException e12) {
            q(e12);
            return null;
        } catch (InvocationTargetException e13) {
            q(e13);
            return null;
        }
    }

    public static l l(Context context) {
        l8.j.e(context, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        return c(context).k();
    }

    public static void m(Context context, GeneratedAppGlideModule generatedAppGlideModule) {
        n(context, new d(), generatedAppGlideModule);
    }

    public static void n(Context context, d dVar, GeneratedAppGlideModule generatedAppGlideModule) {
        Context applicationContext = context.getApplicationContext();
        List<f8.c> emptyList = Collections.emptyList();
        if (generatedAppGlideModule == null || generatedAppGlideModule.c()) {
            emptyList = new f8.e(applicationContext).a();
        }
        if (generatedAppGlideModule != null && !generatedAppGlideModule.d().isEmpty()) {
            Set<Class<?>> d10 = generatedAppGlideModule.d();
            Iterator<f8.c> it2 = emptyList.iterator();
            while (it2.hasNext()) {
                f8.c next = it2.next();
                if (d10.contains(next.getClass())) {
                    if (Log.isLoggable("Glide", 3)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("AppGlideModule excludes manifest GlideModule: ");
                        sb2.append(next);
                    }
                    it2.remove();
                }
            }
        }
        if (Log.isLoggable("Glide", 3)) {
            for (f8.c cVar : emptyList) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Discovered GlideModule from manifest: ");
                sb3.append(cVar.getClass());
            }
        }
        dVar.h(generatedAppGlideModule != null ? generatedAppGlideModule.e() : null);
        Iterator<f8.c> it3 = emptyList.iterator();
        while (it3.hasNext()) {
            it3.next().a(applicationContext, dVar);
        }
        if (generatedAppGlideModule != null) {
            generatedAppGlideModule.a(applicationContext, dVar);
        }
        c a10 = dVar.a(applicationContext);
        for (f8.c cVar2 : emptyList) {
            try {
                cVar2.b(applicationContext, a10, a10.f4520j);
            } catch (AbstractMethodError e10) {
                throw new IllegalStateException("Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you're using Glide v4. You'll need to find and remove (or update) the offending dependency. The v3 module name is: " + cVar2.getClass().getName(), e10);
            }
        }
        if (generatedAppGlideModule != null) {
            generatedAppGlideModule.b(applicationContext, a10, a10.f4520j);
        }
        applicationContext.registerComponentCallbacks(a10);
        f4514q = a10;
    }

    public static void q(Exception exc) {
        throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", exc);
    }

    public static j t(Context context) {
        return l(context).k(context);
    }

    public static j u(View view) {
        return l(view.getContext()).l(view);
    }

    public void b() {
        l8.k.b();
        this.f4518h.b();
        this.f4517g.b();
        this.f4521k.b();
    }

    public s7.b e() {
        return this.f4521k;
    }

    public s7.e f() {
        return this.f4517g;
    }

    public e8.d g() {
        return this.f4523m;
    }

    public Context h() {
        return this.f4519i.getBaseContext();
    }

    public e i() {
        return this.f4519i;
    }

    public Registry j() {
        return this.f4520j;
    }

    public l k() {
        return this.f4522l;
    }

    public void o(j jVar) {
        synchronized (this.f4524n) {
            if (!this.f4524n.contains(jVar)) {
                this.f4524n.add(jVar);
            } else {
                throw new IllegalStateException("Cannot register already registered manager");
            }
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        b();
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i10) {
        r(i10);
    }

    public boolean p(i8.i<?> iVar) {
        synchronized (this.f4524n) {
            Iterator<j> it2 = this.f4524n.iterator();
            while (it2.hasNext()) {
                if (it2.next().z(iVar)) {
                    return true;
                }
            }
            return false;
        }
    }

    public void r(int i10) {
        l8.k.b();
        Iterator<j> it2 = this.f4524n.iterator();
        while (it2.hasNext()) {
            it2.next().onTrimMemory(i10);
        }
        this.f4518h.a(i10);
        this.f4517g.a(i10);
        this.f4521k.a(i10);
    }

    public void s(j jVar) {
        synchronized (this.f4524n) {
            if (this.f4524n.contains(jVar)) {
                this.f4524n.remove(jVar);
            } else {
                throw new IllegalStateException("Cannot unregister not yet registered manager");
            }
        }
    }
}
