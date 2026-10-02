package wc;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ServiceLoader;
import java.util.Set;
import java.util.jar.JarFile;
import java.util.zip.ZipEntry;
import kotlinx.coroutines.internal.MainDispatcherFactory;
import org.apache.http.protocol.HTTP;

/* compiled from: FastServiceLoader.kt */
/* loaded from: classes2.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public static final j f15508a = new j();

    public final <S> S a(String str, ClassLoader classLoader, Class<S> cls) {
        Class<?> cls2 = Class.forName(str, false, classLoader);
        if (cls.isAssignableFrom(cls2)) {
            return cls.cast(cls2.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
        }
        throw new IllegalArgumentException(("Expected service of class " + cls + ", but found " + cls2).toString());
    }

    public final <S> List<S> b(Class<S> cls, ClassLoader classLoader) {
        try {
            return d(cls, classLoader);
        } catch (Throwable unused) {
            return wb.t.P(ServiceLoader.load(cls, classLoader));
        }
    }

    public final List<MainDispatcherFactory> c() {
        MainDispatcherFactory mainDispatcherFactory;
        if (!k.a()) {
            return b(MainDispatcherFactory.class, MainDispatcherFactory.class.getClassLoader());
        }
        try {
            ArrayList arrayList = new ArrayList(2);
            MainDispatcherFactory mainDispatcherFactory2 = null;
            try {
                mainDispatcherFactory = (MainDispatcherFactory) MainDispatcherFactory.class.cast(Class.forName("kotlinx.coroutines.android.AndroidDispatcherFactory", true, MainDispatcherFactory.class.getClassLoader()).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
            } catch (ClassNotFoundException unused) {
                mainDispatcherFactory = null;
            }
            if (mainDispatcherFactory != null) {
                arrayList.add(mainDispatcherFactory);
            }
            try {
                mainDispatcherFactory2 = (MainDispatcherFactory) MainDispatcherFactory.class.cast(Class.forName("kotlinx.coroutines.test.internal.TestMainDispatcherFactory", true, MainDispatcherFactory.class.getClassLoader()).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
            } catch (ClassNotFoundException unused2) {
            }
            if (mainDispatcherFactory2 == null) {
                return arrayList;
            }
            arrayList.add(mainDispatcherFactory2);
            return arrayList;
        } catch (Throwable unused3) {
            return b(MainDispatcherFactory.class, MainDispatcherFactory.class.getClassLoader());
        }
    }

    public final <S> List<S> d(Class<S> cls, ClassLoader classLoader) {
        ArrayList list = Collections.list(classLoader.getResources(jc.l.m("META-INF/services/", cls.getName())));
        jc.l.e(list, "java.util.Collections.list(this)");
        ArrayList arrayList = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            wb.q.t(arrayList, f15508a.e((URL) it2.next()));
        }
        Set T = wb.t.T(arrayList);
        if (!T.isEmpty()) {
            ArrayList arrayList2 = new ArrayList(wb.m.q(T, 10));
            Iterator it3 = T.iterator();
            while (it3.hasNext()) {
                arrayList2.add(f15508a.a((String) it3.next(), classLoader, cls));
            }
            return arrayList2;
        }
        throw new IllegalArgumentException("No providers were loaded with FastServiceLoader".toString());
    }

    public final List<String> e(URL url) {
        BufferedReader bufferedReader;
        String url2 = url.toString();
        if (qc.t.z(url2, "jar", false, 2, null)) {
            String p02 = qc.u.p0(qc.u.i0(url2, "jar:file:", null, 2, null), '!', null, 2, null);
            String i02 = qc.u.i0(url2, "!/", null, 2, null);
            JarFile jarFile = new JarFile(p02, false);
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(jarFile.getInputStream(new ZipEntry(i02)), HTTP.UTF_8));
                try {
                    List<String> f10 = f15508a.f(bufferedReader);
                    gc.b.a(bufferedReader, null);
                    jarFile.close();
                    return f10;
                } finally {
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        jarFile.close();
                        throw th2;
                    } catch (Throwable th3) {
                        vb.a.a(th, th3);
                        throw th;
                    }
                }
            }
        } else {
            bufferedReader = new BufferedReader(new InputStreamReader(url.openStream()));
            try {
                List<String> f11 = f15508a.f(bufferedReader);
                gc.b.a(bufferedReader, null);
                return f11;
            } catch (Throwable th4) {
                try {
                    throw th4;
                } finally {
                }
            }
        }
    }

    public final List<String> f(BufferedReader bufferedReader) {
        boolean z10;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                return wb.t.P(linkedHashSet);
            }
            String q02 = qc.u.q0(readLine, "#", null, 2, null);
            if (q02 == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.CharSequence");
            }
            String obj = qc.u.t0(q02).toString();
            int i10 = 0;
            while (true) {
                if (i10 >= obj.length()) {
                    z10 = true;
                    break;
                }
                char charAt = obj.charAt(i10);
                if (!(charAt == '.' || Character.isJavaIdentifierPart(charAt))) {
                    z10 = false;
                    break;
                }
                i10++;
            }
            if (z10) {
                if (obj.length() > 0) {
                    linkedHashSet.add(obj);
                }
            } else {
                throw new IllegalArgumentException(jc.l.m("Illegal service provider class name: ", obj).toString());
            }
        }
    }
}
