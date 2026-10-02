package l9;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import com.google.android.datatransport.runtime.backends.TransportBackendDiscovery;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* compiled from: MetadataBackendRegistry.java */
/* loaded from: classes.dex */
public class k implements e {

    /* renamed from: a, reason: collision with root package name */
    public final a f10555a;

    /* renamed from: b, reason: collision with root package name */
    public final i f10556b;

    /* renamed from: c, reason: collision with root package name */
    public final Map<String, m> f10557c;

    /* compiled from: MetadataBackendRegistry.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public final Context f10558a;

        /* renamed from: b, reason: collision with root package name */
        public Map<String, String> f10559b = null;

        public a(Context context) {
            this.f10558a = context;
        }

        public static Bundle d(Context context) {
            ServiceInfo serviceInfo;
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null || (serviceInfo = packageManager.getServiceInfo(new ComponentName(context, (Class<?>) TransportBackendDiscovery.class), 128)) == null) {
                    return null;
                }
                return serviceInfo.metaData;
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }

        public final Map<String, String> a(Context context) {
            Bundle d10 = d(context);
            if (d10 == null) {
                return Collections.emptyMap();
            }
            HashMap hashMap = new HashMap();
            for (String str : d10.keySet()) {
                Object obj = d10.get(str);
                if ((obj instanceof String) && str.startsWith("backend:")) {
                    for (String str2 : ((String) obj).split(",", -1)) {
                        String trim = str2.trim();
                        if (!trim.isEmpty()) {
                            hashMap.put(trim, str.substring(8));
                        }
                    }
                }
            }
            return hashMap;
        }

        public d b(String str) {
            String str2 = c().get(str);
            if (str2 == null) {
                return null;
            }
            try {
                return (d) Class.forName(str2).asSubclass(d.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (ClassNotFoundException unused) {
                String.format("Class %s is not found.", str2);
                return null;
            } catch (IllegalAccessException unused2) {
                String.format("Could not instantiate %s.", str2);
                return null;
            } catch (InstantiationException unused3) {
                String.format("Could not instantiate %s.", str2);
                return null;
            } catch (NoSuchMethodException unused4) {
                String.format("Could not instantiate %s", str2);
                return null;
            } catch (InvocationTargetException unused5) {
                String.format("Could not instantiate %s", str2);
                return null;
            }
        }

        public final Map<String, String> c() {
            if (this.f10559b == null) {
                this.f10559b = a(this.f10558a);
            }
            return this.f10559b;
        }
    }

    public k(Context context, i iVar) {
        this(new a(context), iVar);
    }

    @Override // l9.e
    public synchronized m a(String str) {
        if (this.f10557c.containsKey(str)) {
            return this.f10557c.get(str);
        }
        d b10 = this.f10555a.b(str);
        if (b10 == null) {
            return null;
        }
        m create = b10.create(this.f10556b.a(str));
        this.f10557c.put(str, create);
        return create;
    }

    public k(a aVar, i iVar) {
        this.f10557c = new HashMap();
        this.f10555a = aVar;
        this.f10556b = iVar;
    }
}
