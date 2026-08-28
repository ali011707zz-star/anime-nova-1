package s7;

import android.graphics.Bitmap;
import android.os.Build;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;

/* compiled from: SizeConfigStrategy.java */
/* loaded from: classes.dex */
public class n implements l {

    /* renamed from: d, reason: collision with root package name */
    public static final Bitmap.Config[] f13838d;

    /* renamed from: e, reason: collision with root package name */
    public static final Bitmap.Config[] f13839e;

    /* renamed from: f, reason: collision with root package name */
    public static final Bitmap.Config[] f13840f;

    /* renamed from: g, reason: collision with root package name */
    public static final Bitmap.Config[] f13841g;

    /* renamed from: h, reason: collision with root package name */
    public static final Bitmap.Config[] f13842h;

    /* renamed from: a, reason: collision with root package name */
    public final c f13843a = new c();

    /* renamed from: b, reason: collision with root package name */
    public final h<b, Bitmap> f13844b = new h<>();

    /* renamed from: c, reason: collision with root package name */
    public final Map<Bitmap.Config, NavigableMap<Integer, Integer>> f13845c = new HashMap();

    /* compiled from: SizeConfigStrategy.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f13846a;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            f13846a = iArr;
            try {
                iArr[Bitmap.Config.ARGB_8888.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13846a[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f13846a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f13846a[Bitmap.Config.ALPHA_8.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* compiled from: SizeConfigStrategy.java */
    /* loaded from: classes.dex */
    public static final class b implements m {

        /* renamed from: a, reason: collision with root package name */
        public final c f13847a;

        /* renamed from: b, reason: collision with root package name */
        public int f13848b;

        /* renamed from: c, reason: collision with root package name */
        public Bitmap.Config f13849c;

        public b(c cVar) {
            this.f13847a = cVar;
        }

        @Override // s7.m
        public void a() {
            this.f13847a.c(this);
        }

        public void b(int i10, Bitmap.Config config) {
            this.f13848b = i10;
            this.f13849c = config;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f13848b == bVar.f13848b && l8.k.d(this.f13849c, bVar.f13849c);
        }

        public int hashCode() {
            int i10 = this.f13848b * 31;
            Bitmap.Config config = this.f13849c;
            return i10 + (config != null ? config.hashCode() : 0);
        }

        public String toString() {
            return n.i(this.f13848b, this.f13849c);
        }
    }

    /* compiled from: SizeConfigStrategy.java */
    /* loaded from: classes.dex */
    public static class c extends d<b> {
        @Override // s7.d
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public b a() {
            return new b(this);
        }

        public b e(int i10, Bitmap.Config config) {
            b b10 = b();
            b10.b(i10, config);
            return b10;
        }
    }

    static {
        Bitmap.Config[] configArr = {Bitmap.Config.ARGB_8888, null};
        if (Build.VERSION.SDK_INT >= 26) {
            configArr = (Bitmap.Config[]) Arrays.copyOf(configArr, 3);
            configArr[configArr.length - 1] = Bitmap.Config.RGBA_F16;
        }
        f13838d = configArr;
        f13839e = configArr;
        f13840f = new Bitmap.Config[]{Bitmap.Config.RGB_565};
        f13841g = new Bitmap.Config[]{Bitmap.Config.ARGB_4444};
        f13842h = new Bitmap.Config[]{Bitmap.Config.ALPHA_8};
    }

    public static String i(int i10, Bitmap.Config config) {
        return "[" + i10 + "](" + config + ")";
    }

    public static Bitmap.Config[] j(Bitmap.Config config) {
        if (Build.VERSION.SDK_INT >= 26 && Bitmap.Config.RGBA_F16.equals(config)) {
            return f13839e;
        }
        int i10 = a.f13846a[config.ordinal()];
        if (i10 == 1) {
            return f13838d;
        }
        if (i10 == 2) {
            return f13840f;
        }
        if (i10 != 3) {
            return i10 != 4 ? new Bitmap.Config[]{config} : f13842h;
        }
        return f13841g;
    }

    @Override // s7.l
    public String a(int i10, int i11, Bitmap.Config config) {
        return i(l8.k.g(i10, i11, config), config);
    }

    @Override // s7.l
    public int b(Bitmap bitmap) {
        return l8.k.h(bitmap);
    }

    @Override // s7.l
    public Bitmap c(int i10, int i11, Bitmap.Config config) {
        b h10 = h(l8.k.g(i10, i11, config), config);
        Bitmap a10 = this.f13844b.a(h10);
        if (a10 != null) {
            g(Integer.valueOf(h10.f13848b), a10);
            a10.reconfigure(i10, i11, config);
        }
        return a10;
    }

    @Override // s7.l
    public void d(Bitmap bitmap) {
        b e10 = this.f13843a.e(l8.k.h(bitmap), bitmap.getConfig());
        this.f13844b.d(e10, bitmap);
        NavigableMap<Integer, Integer> k10 = k(bitmap.getConfig());
        Integer num = (Integer) k10.get(Integer.valueOf(e10.f13848b));
        k10.put(Integer.valueOf(e10.f13848b), Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    @Override // s7.l
    public Bitmap e() {
        Bitmap f10 = this.f13844b.f();
        if (f10 != null) {
            g(Integer.valueOf(l8.k.h(f10)), f10);
        }
        return f10;
    }

    @Override // s7.l
    public String f(Bitmap bitmap) {
        return i(l8.k.h(bitmap), bitmap.getConfig());
    }

    public final void g(Integer num, Bitmap bitmap) {
        NavigableMap<Integer, Integer> k10 = k(bitmap.getConfig());
        Integer num2 = (Integer) k10.get(num);
        if (num2 != null) {
            if (num2.intValue() == 1) {
                k10.remove(num);
                return;
            } else {
                k10.put(num, Integer.valueOf(num2.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + num + ", removed: " + f(bitmap) + ", this: " + this);
    }

    public final b h(int i10, Bitmap.Config config) {
        b e10 = this.f13843a.e(i10, config);
        for (Bitmap.Config config2 : j(config)) {
            Integer ceilingKey = k(config2).ceilingKey(Integer.valueOf(i10));
            if (ceilingKey != null && ceilingKey.intValue() <= i10 * 8) {
                if (ceilingKey.intValue() == i10) {
                    if (config2 == null) {
                        if (config == null) {
                            return e10;
                        }
                    } else if (config2.equals(config)) {
                        return e10;
                    }
                }
                this.f13843a.c(e10);
                return this.f13843a.e(ceilingKey.intValue(), config2);
            }
        }
        return e10;
    }

    public final NavigableMap<Integer, Integer> k(Bitmap.Config config) {
        NavigableMap<Integer, Integer> navigableMap = this.f13845c.get(config);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        this.f13845c.put(config, treeMap);
        return treeMap;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("SizeConfigStrategy{groupedMap=");
        sb2.append(this.f13844b);
        sb2.append(", sortedSizes=(");
        for (Map.Entry<Bitmap.Config, NavigableMap<Integer, Integer>> entry : this.f13845c.entrySet()) {
            sb2.append(entry.getKey());
            sb2.append('[');
            sb2.append(entry.getValue());
            sb2.append("], ");
        }
        if (!this.f13845c.isEmpty()) {
            sb2.replace(sb2.length() - 2, sb2.length(), "");
        }
        sb2.append(")}");
        return sb2.toString();
    }
}
