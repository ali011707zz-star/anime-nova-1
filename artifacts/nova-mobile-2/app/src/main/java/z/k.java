package z;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;

/* compiled from: KeyTrigger.java */
/* loaded from: classes.dex */
public class k extends d {
    public HashMap<String, Method> A;

    /* renamed from: g, reason: collision with root package name */
    public int f16943g = -1;

    /* renamed from: h, reason: collision with root package name */
    public String f16944h = null;

    /* renamed from: i, reason: collision with root package name */
    public int f16945i;

    /* renamed from: j, reason: collision with root package name */
    public String f16946j;

    /* renamed from: k, reason: collision with root package name */
    public String f16947k;

    /* renamed from: l, reason: collision with root package name */
    public int f16948l;

    /* renamed from: m, reason: collision with root package name */
    public int f16949m;

    /* renamed from: n, reason: collision with root package name */
    public View f16950n;

    /* renamed from: o, reason: collision with root package name */
    public float f16951o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f16952p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f16953q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f16954r;

    /* renamed from: s, reason: collision with root package name */
    public float f16955s;

    /* renamed from: t, reason: collision with root package name */
    public float f16956t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f16957u;

    /* renamed from: v, reason: collision with root package name */
    public int f16958v;

    /* renamed from: w, reason: collision with root package name */
    public int f16959w;

    /* renamed from: x, reason: collision with root package name */
    public int f16960x;

    /* renamed from: y, reason: collision with root package name */
    public RectF f16961y;

    /* renamed from: z, reason: collision with root package name */
    public RectF f16962z;

    /* compiled from: KeyTrigger.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static SparseIntArray f16963a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f16963a = sparseIntArray;
            sparseIntArray.append(a0.d.f191o6, 8);
            f16963a.append(a0.d.f235s6, 4);
            f16963a.append(a0.d.f246t6, 1);
            f16963a.append(a0.d.f257u6, 2);
            f16963a.append(a0.d.f202p6, 7);
            f16963a.append(a0.d.f268v6, 6);
            f16963a.append(a0.d.f290x6, 5);
            f16963a.append(a0.d.f224r6, 9);
            f16963a.append(a0.d.f213q6, 10);
            f16963a.append(a0.d.f279w6, 11);
            f16963a.append(a0.d.f301y6, 12);
            f16963a.append(a0.d.f312z6, 13);
            f16963a.append(a0.d.A6, 14);
        }

        public static void a(k kVar, TypedArray typedArray, Context context) {
            int indexCount = typedArray.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArray.getIndex(i10);
                switch (f16963a.get(index)) {
                    case 1:
                        kVar.f16946j = typedArray.getString(index);
                        break;
                    case 2:
                        kVar.f16947k = typedArray.getString(index);
                        break;
                    case 3:
                    default:
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("unused attribute 0x");
                        sb2.append(Integer.toHexString(index));
                        sb2.append("   ");
                        sb2.append(f16963a.get(index));
                        break;
                    case 4:
                        kVar.f16944h = typedArray.getString(index);
                        break;
                    case 5:
                        kVar.f16951o = typedArray.getFloat(index, kVar.f16951o);
                        break;
                    case 6:
                        kVar.f16948l = typedArray.getResourceId(index, kVar.f16948l);
                        break;
                    case 7:
                        if (p.f17015z0) {
                            int resourceId = typedArray.getResourceId(index, kVar.f16865b);
                            kVar.f16865b = resourceId;
                            if (resourceId == -1) {
                                kVar.f16866c = typedArray.getString(index);
                                break;
                            } else {
                                break;
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            kVar.f16866c = typedArray.getString(index);
                            break;
                        } else {
                            kVar.f16865b = typedArray.getResourceId(index, kVar.f16865b);
                            break;
                        }
                    case 8:
                        int integer = typedArray.getInteger(index, kVar.f16864a);
                        kVar.f16864a = integer;
                        kVar.f16955s = (integer + 0.5f) / 100.0f;
                        break;
                    case 9:
                        kVar.f16949m = typedArray.getResourceId(index, kVar.f16949m);
                        break;
                    case 10:
                        kVar.f16957u = typedArray.getBoolean(index, kVar.f16957u);
                        break;
                    case 11:
                        kVar.f16945i = typedArray.getResourceId(index, kVar.f16945i);
                        break;
                    case 12:
                        kVar.f16960x = typedArray.getResourceId(index, kVar.f16960x);
                        break;
                    case 13:
                        kVar.f16958v = typedArray.getResourceId(index, kVar.f16958v);
                        break;
                    case 14:
                        kVar.f16959w = typedArray.getResourceId(index, kVar.f16959w);
                        break;
                }
            }
        }
    }

    public k() {
        int i10 = d.f16863f;
        this.f16945i = i10;
        this.f16946j = null;
        this.f16947k = null;
        this.f16948l = i10;
        this.f16949m = i10;
        this.f16950n = null;
        this.f16951o = 0.1f;
        this.f16952p = true;
        this.f16953q = true;
        this.f16954r = true;
        this.f16955s = Float.NaN;
        this.f16957u = false;
        this.f16958v = i10;
        this.f16959w = i10;
        this.f16960x = i10;
        this.f16961y = new RectF();
        this.f16962z = new RectF();
        this.A = new HashMap<>();
        this.f16867d = 5;
        this.f16868e = new HashMap<>();
    }

    @Override // z.d
    public void a(HashMap<String, y.c> hashMap) {
    }

    @Override // z.d
    /* renamed from: b */
    public d clone() {
        return new k().c(this);
    }

    @Override // z.d
    public d c(d dVar) {
        super.c(dVar);
        k kVar = (k) dVar;
        this.f16943g = kVar.f16943g;
        this.f16944h = kVar.f16944h;
        this.f16945i = kVar.f16945i;
        this.f16946j = kVar.f16946j;
        this.f16947k = kVar.f16947k;
        this.f16948l = kVar.f16948l;
        this.f16949m = kVar.f16949m;
        this.f16950n = kVar.f16950n;
        this.f16951o = kVar.f16951o;
        this.f16952p = kVar.f16952p;
        this.f16953q = kVar.f16953q;
        this.f16954r = kVar.f16954r;
        this.f16955s = kVar.f16955s;
        this.f16956t = kVar.f16956t;
        this.f16957u = kVar.f16957u;
        this.f16961y = kVar.f16961y;
        this.f16962z = kVar.f16962z;
        this.A = kVar.A;
        return this;
    }

    @Override // z.d
    public void d(HashSet<String> hashSet) {
    }

    @Override // z.d
    public void e(Context context, AttributeSet attributeSet) {
        a.a(this, context.obtainStyledAttributes(attributeSet, a0.d.f180n6), context);
    }

    /* JADX WARN: Removed duplicated region for block: B:68:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00a2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void t(float f10, View view) {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        if (this.f16949m != d.f16863f) {
            if (this.f16950n == null) {
                this.f16950n = ((ViewGroup) view.getParent()).findViewById(this.f16949m);
            }
            w(this.f16961y, this.f16950n, this.f16957u);
            w(this.f16962z, view, this.f16957u);
            if (this.f16961y.intersect(this.f16962z)) {
                if (this.f16952p) {
                    this.f16952p = false;
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (this.f16954r) {
                    this.f16954r = false;
                    z15 = true;
                } else {
                    z15 = false;
                }
                this.f16953q = true;
                z14 = z15;
                z12 = false;
            } else {
                if (this.f16952p) {
                    z10 = false;
                } else {
                    this.f16952p = true;
                    z10 = true;
                }
                if (this.f16953q) {
                    this.f16953q = false;
                    z12 = true;
                } else {
                    z12 = false;
                }
                this.f16954r = true;
                z14 = false;
            }
        } else {
            if (this.f16952p) {
                float f11 = this.f16955s;
                if ((f10 - f11) * (this.f16956t - f11) < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                    this.f16952p = false;
                    z10 = true;
                    if (!this.f16953q) {
                        float f12 = this.f16955s;
                        float f13 = f10 - f12;
                        if ((this.f16956t - f12) * f13 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && f13 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                            this.f16953q = false;
                            z11 = true;
                            if (this.f16954r) {
                                float f14 = this.f16955s;
                                float f15 = f10 - f14;
                                if ((this.f16956t - f14) * f15 >= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD || f15 <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                                    z13 = false;
                                } else {
                                    this.f16954r = false;
                                    z13 = true;
                                }
                                boolean z16 = z11;
                                z14 = z13;
                                z12 = z16;
                            } else {
                                if (Math.abs(f10 - this.f16955s) > this.f16951o) {
                                    this.f16954r = true;
                                }
                                z12 = z11;
                                z14 = false;
                            }
                        }
                    } else if (Math.abs(f10 - this.f16955s) > this.f16951o) {
                        this.f16953q = true;
                    }
                    z11 = false;
                    if (this.f16954r) {
                    }
                }
            } else if (Math.abs(f10 - this.f16955s) > this.f16951o) {
                this.f16952p = true;
            }
            z10 = false;
            if (!this.f16953q) {
            }
            z11 = false;
            if (this.f16954r) {
            }
        }
        this.f16956t = f10;
        if (z12 || z10 || z14) {
            ((p) view.getParent()).k(this.f16948l, z14, f10);
        }
        View findViewById = this.f16945i == d.f16863f ? view : ((p) view.getParent()).findViewById(this.f16945i);
        if (z12) {
            String str = this.f16946j;
            if (str != null) {
                u(str, findViewById);
            }
            if (this.f16958v != d.f16863f) {
                ((p) view.getParent()).G(this.f16958v, findViewById);
            }
        }
        if (z14) {
            String str2 = this.f16947k;
            if (str2 != null) {
                u(str2, findViewById);
            }
            if (this.f16959w != d.f16863f) {
                ((p) view.getParent()).G(this.f16959w, findViewById);
            }
        }
        if (z10) {
            String str3 = this.f16944h;
            if (str3 != null) {
                u(str3, findViewById);
            }
            if (this.f16960x != d.f16863f) {
                ((p) view.getParent()).G(this.f16960x, findViewById);
            }
        }
    }

    public final void u(String str, View view) {
        Method method;
        if (str == null) {
            return;
        }
        if (str.startsWith(".")) {
            v(str, view);
            return;
        }
        if (this.A.containsKey(str)) {
            method = this.A.get(str);
            if (method == null) {
                return;
            }
        } else {
            method = null;
        }
        if (method == null) {
            try {
                method = view.getClass().getMethod(str, new Class[0]);
                this.A.put(str, method);
            } catch (NoSuchMethodException unused) {
                this.A.put(str, null);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Could not find method \"");
                sb2.append(str);
                sb2.append("\"on class ");
                sb2.append(view.getClass().getSimpleName());
                sb2.append(" ");
                sb2.append(z.a.c(view));
                return;
            }
        }
        try {
            method.invoke(view, new Object[0]);
        } catch (Exception unused2) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Exception in call \"");
            sb3.append(this.f16944h);
            sb3.append("\"on class ");
            sb3.append(view.getClass().getSimpleName());
            sb3.append(" ");
            sb3.append(z.a.c(view));
        }
    }

    public final void v(String str, View view) {
        boolean z10 = str.length() == 1;
        if (!z10) {
            str = str.substring(1).toLowerCase(Locale.ROOT);
        }
        for (String str2 : this.f16868e.keySet()) {
            String lowerCase = str2.toLowerCase(Locale.ROOT);
            if (z10 || lowerCase.matches(str)) {
                androidx.constraintlayout.widget.a aVar = this.f16868e.get(str2);
                if (aVar != null) {
                    aVar.a(view);
                }
            }
        }
    }

    public final void w(RectF rectF, View view, boolean z10) {
        rectF.top = view.getTop();
        rectF.bottom = view.getBottom();
        rectF.left = view.getLeft();
        rectF.right = view.getRight();
        if (z10) {
            view.getMatrix().mapRect(rectF);
        }
    }
}
