package v7;

import android.text.TextUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: LazyHeaders.java */
/* loaded from: classes.dex */
public final class j implements h {

    /* renamed from: c, reason: collision with root package name */
    public final Map<String, List<i>> f14897c;

    /* renamed from: d, reason: collision with root package name */
    public volatile Map<String, String> f14898d;

    /* compiled from: LazyHeaders.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: d, reason: collision with root package name */
        public static final String f14899d;

        /* renamed from: e, reason: collision with root package name */
        public static final Map<String, List<i>> f14900e;

        /* renamed from: a, reason: collision with root package name */
        public boolean f14901a = true;

        /* renamed from: b, reason: collision with root package name */
        public Map<String, List<i>> f14902b = f14900e;

        /* renamed from: c, reason: collision with root package name */
        public boolean f14903c = true;

        static {
            String b10 = b();
            f14899d = b10;
            HashMap hashMap = new HashMap(2);
            if (!TextUtils.isEmpty(b10)) {
                hashMap.put("User-Agent", Collections.singletonList(new b(b10)));
            }
            f14900e = Collections.unmodifiableMap(hashMap);
        }

        public static String b() {
            String property = System.getProperty("http.agent");
            if (TextUtils.isEmpty(property)) {
                return property;
            }
            int length = property.length();
            StringBuilder sb2 = new StringBuilder(property.length());
            for (int i10 = 0; i10 < length; i10++) {
                char charAt = property.charAt(i10);
                if ((charAt > 31 || charAt == '\t') && charAt < 127) {
                    sb2.append(charAt);
                } else {
                    sb2.append('?');
                }
            }
            return sb2.toString();
        }

        public j a() {
            this.f14901a = true;
            return new j(this.f14902b);
        }
    }

    /* compiled from: LazyHeaders.java */
    /* loaded from: classes.dex */
    public static final class b implements i {

        /* renamed from: a, reason: collision with root package name */
        public final String f14904a;

        public b(String str) {
            this.f14904a = str;
        }

        @Override // v7.i
        public String a() {
            return this.f14904a;
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                return this.f14904a.equals(((b) obj).f14904a);
            }
            return false;
        }

        public int hashCode() {
            return this.f14904a.hashCode();
        }

        public String toString() {
            return "StringHeaderFactory{value='" + this.f14904a + "'}";
        }
    }

    public j(Map<String, List<i>> map) {
        this.f14897c = Collections.unmodifiableMap(map);
    }

    @Override // v7.h
    public Map<String, String> a() {
        if (this.f14898d == null) {
            synchronized (this) {
                if (this.f14898d == null) {
                    this.f14898d = Collections.unmodifiableMap(c());
                }
            }
        }
        return this.f14898d;
    }

    public final String b(List<i> list) {
        StringBuilder sb2 = new StringBuilder();
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            String a10 = list.get(i10).a();
            if (!TextUtils.isEmpty(a10)) {
                sb2.append(a10);
                if (i10 != list.size() - 1) {
                    sb2.append(',');
                }
            }
        }
        return sb2.toString();
    }

    public final Map<String, String> c() {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, List<i>> entry : this.f14897c.entrySet()) {
            String b10 = b(entry.getValue());
            if (!TextUtils.isEmpty(b10)) {
                hashMap.put(entry.getKey(), b10);
            }
        }
        return hashMap;
    }

    public boolean equals(Object obj) {
        if (obj instanceof j) {
            return this.f14897c.equals(((j) obj).f14897c);
        }
        return false;
    }

    public int hashCode() {
        return this.f14897c.hashCode();
    }

    public String toString() {
        return "LazyHeaders{headers=" + this.f14897c + '}';
    }
}
