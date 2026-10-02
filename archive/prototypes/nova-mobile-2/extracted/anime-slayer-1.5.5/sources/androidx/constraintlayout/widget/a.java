package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.util.Xml;
import android.view.View;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;

/* compiled from: ConstraintAttribute.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public boolean f1666a;

    /* renamed from: b, reason: collision with root package name */
    public String f1667b;

    /* renamed from: c, reason: collision with root package name */
    public b f1668c;

    /* renamed from: d, reason: collision with root package name */
    public int f1669d;

    /* renamed from: e, reason: collision with root package name */
    public float f1670e;

    /* renamed from: f, reason: collision with root package name */
    public String f1671f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f1672g;

    /* renamed from: h, reason: collision with root package name */
    public int f1673h;

    /* compiled from: ConstraintAttribute.java */
    /* renamed from: androidx.constraintlayout.widget.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C0031a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f1674a;

        static {
            int[] iArr = new int[b.values().length];
            f1674a = iArr;
            try {
                iArr[b.REFERENCE_TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1674a[b.BOOLEAN_TYPE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1674a[b.STRING_TYPE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1674a[b.COLOR_TYPE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1674a[b.COLOR_DRAWABLE_TYPE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1674a[b.INT_TYPE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1674a[b.FLOAT_TYPE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f1674a[b.DIMENSION_TYPE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* compiled from: ConstraintAttribute.java */
    /* loaded from: classes.dex */
    public enum b {
        INT_TYPE,
        FLOAT_TYPE,
        COLOR_TYPE,
        COLOR_DRAWABLE_TYPE,
        STRING_TYPE,
        BOOLEAN_TYPE,
        DIMENSION_TYPE,
        REFERENCE_TYPE
    }

    public a(String str, b bVar, Object obj, boolean z10) {
        this.f1666a = false;
        this.f1667b = str;
        this.f1668c = bVar;
        this.f1666a = z10;
        k(obj);
    }

    public static int b(int i10) {
        int i11 = (i10 & ((i10 >> 31) ^ (-1))) - 255;
        return (i11 & (i11 >> 31)) + BaseProgressIndicator.MAX_ALPHA;
    }

    public static HashMap<String, a> c(HashMap<String, a> hashMap, View view) {
        HashMap<String, a> hashMap2 = new HashMap<>();
        Class<?> cls = view.getClass();
        for (String str : hashMap.keySet()) {
            a aVar = hashMap.get(str);
            try {
                if (str.equals("BackgroundColor")) {
                    hashMap2.put(str, new a(aVar, Integer.valueOf(((ColorDrawable) view.getBackground()).getColor())));
                } else {
                    hashMap2.put(str, new a(aVar, cls.getMethod("getMap" + str, new Class[0]).invoke(view, new Object[0])));
                }
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (NoSuchMethodException e11) {
                e11.printStackTrace();
            } catch (InvocationTargetException e12) {
                e12.printStackTrace();
            }
        }
        return hashMap2;
    }

    public static void h(Context context, XmlPullParser xmlPullParser, HashMap<String, a> hashMap) {
        b bVar;
        Object valueOf;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), a0.d.f277w4);
        int indexCount = obtainStyledAttributes.getIndexCount();
        String str = null;
        Object obj = null;
        b bVar2 = null;
        boolean z10 = false;
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = obtainStyledAttributes.getIndex(i10);
            if (index == a0.d.f288x4) {
                str = obtainStyledAttributes.getString(index);
                if (str != null && str.length() > 0) {
                    str = Character.toUpperCase(str.charAt(0)) + str.substring(1);
                }
            } else if (index == a0.d.H4) {
                str = obtainStyledAttributes.getString(index);
                z10 = true;
            } else if (index == a0.d.f299y4) {
                obj = Boolean.valueOf(obtainStyledAttributes.getBoolean(index, false));
                bVar2 = b.BOOLEAN_TYPE;
            } else {
                if (index == a0.d.A4) {
                    bVar = b.COLOR_TYPE;
                    valueOf = Integer.valueOf(obtainStyledAttributes.getColor(index, 0));
                } else if (index == a0.d.f310z4) {
                    bVar = b.COLOR_DRAWABLE_TYPE;
                    valueOf = Integer.valueOf(obtainStyledAttributes.getColor(index, 0));
                } else if (index == a0.d.E4) {
                    bVar = b.DIMENSION_TYPE;
                    valueOf = Float.valueOf(TypedValue.applyDimension(1, obtainStyledAttributes.getDimension(index, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD), context.getResources().getDisplayMetrics()));
                } else if (index == a0.d.B4) {
                    bVar = b.DIMENSION_TYPE;
                    valueOf = Float.valueOf(obtainStyledAttributes.getDimension(index, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD));
                } else if (index == a0.d.C4) {
                    bVar = b.FLOAT_TYPE;
                    valueOf = Float.valueOf(obtainStyledAttributes.getFloat(index, Float.NaN));
                } else if (index == a0.d.D4) {
                    bVar = b.INT_TYPE;
                    valueOf = Integer.valueOf(obtainStyledAttributes.getInteger(index, -1));
                } else if (index == a0.d.G4) {
                    bVar = b.STRING_TYPE;
                    valueOf = obtainStyledAttributes.getString(index);
                } else if (index == a0.d.F4) {
                    bVar = b.REFERENCE_TYPE;
                    int resourceId = obtainStyledAttributes.getResourceId(index, -1);
                    if (resourceId == -1) {
                        resourceId = obtainStyledAttributes.getInt(index, -1);
                    }
                    valueOf = Integer.valueOf(resourceId);
                }
                Object obj2 = valueOf;
                bVar2 = bVar;
                obj = obj2;
            }
        }
        if (str != null && obj != null) {
            hashMap.put(str, new a(str, bVar2, obj, z10));
        }
        obtainStyledAttributes.recycle();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x0045. Please report as an issue. */
    public static void i(View view, HashMap<String, a> hashMap) {
        Class<?> cls = view.getClass();
        for (String str : hashMap.keySet()) {
            a aVar = hashMap.get(str);
            String str2 = aVar.f1666a ? str : "set" + str;
            try {
                switch (C0031a.f1674a[aVar.f1668c.ordinal()]) {
                    case 1:
                        cls.getMethod(str2, Integer.TYPE).invoke(view, Integer.valueOf(aVar.f1669d));
                        break;
                    case 2:
                        cls.getMethod(str2, Boolean.TYPE).invoke(view, Boolean.valueOf(aVar.f1672g));
                        break;
                    case 3:
                        cls.getMethod(str2, CharSequence.class).invoke(view, aVar.f1671f);
                        break;
                    case 4:
                        cls.getMethod(str2, Integer.TYPE).invoke(view, Integer.valueOf(aVar.f1673h));
                        break;
                    case 5:
                        Method method = cls.getMethod(str2, Drawable.class);
                        ColorDrawable colorDrawable = new ColorDrawable();
                        colorDrawable.setColor(aVar.f1673h);
                        method.invoke(view, colorDrawable);
                        break;
                    case 6:
                        cls.getMethod(str2, Integer.TYPE).invoke(view, Integer.valueOf(aVar.f1669d));
                        break;
                    case 7:
                        cls.getMethod(str2, Float.TYPE).invoke(view, Float.valueOf(aVar.f1670e));
                        break;
                    case 8:
                        cls.getMethod(str2, Float.TYPE).invoke(view, Float.valueOf(aVar.f1670e));
                        break;
                }
            } catch (IllegalAccessException e10) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(" Custom Attribute \"");
                sb2.append(str);
                sb2.append("\" not found on ");
                sb2.append(cls.getName());
                e10.printStackTrace();
            } catch (NoSuchMethodException e11) {
                e11.getMessage();
                StringBuilder sb3 = new StringBuilder();
                sb3.append(" Custom Attribute \"");
                sb3.append(str);
                sb3.append("\" not found on ");
                sb3.append(cls.getName());
                StringBuilder sb4 = new StringBuilder();
                sb4.append(cls.getName());
                sb4.append(" must have a method ");
                sb4.append(str2);
            } catch (InvocationTargetException e12) {
                StringBuilder sb5 = new StringBuilder();
                sb5.append(" Custom Attribute \"");
                sb5.append(str);
                sb5.append("\" not found on ");
                sb5.append(cls.getName());
                e12.printStackTrace();
            }
        }
    }

    public void a(View view) {
        String str;
        Class<?> cls = view.getClass();
        String str2 = this.f1667b;
        if (this.f1666a) {
            str = str2;
        } else {
            str = "set" + str2;
        }
        try {
            switch (C0031a.f1674a[this.f1668c.ordinal()]) {
                case 1:
                case 6:
                    cls.getMethod(str, Integer.TYPE).invoke(view, Integer.valueOf(this.f1669d));
                    return;
                case 2:
                    cls.getMethod(str, Boolean.TYPE).invoke(view, Boolean.valueOf(this.f1672g));
                    return;
                case 3:
                    cls.getMethod(str, CharSequence.class).invoke(view, this.f1671f);
                    return;
                case 4:
                    cls.getMethod(str, Integer.TYPE).invoke(view, Integer.valueOf(this.f1673h));
                    return;
                case 5:
                    Method method = cls.getMethod(str, Drawable.class);
                    ColorDrawable colorDrawable = new ColorDrawable();
                    colorDrawable.setColor(this.f1673h);
                    method.invoke(view, colorDrawable);
                    return;
                case 7:
                    cls.getMethod(str, Float.TYPE).invoke(view, Float.valueOf(this.f1670e));
                    return;
                case 8:
                    cls.getMethod(str, Float.TYPE).invoke(view, Float.valueOf(this.f1670e));
                    return;
                default:
                    return;
            }
        } catch (IllegalAccessException e10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(" Custom Attribute \"");
            sb2.append(str2);
            sb2.append("\" not found on ");
            sb2.append(cls.getName());
            e10.printStackTrace();
        } catch (NoSuchMethodException e11) {
            e11.getMessage();
            StringBuilder sb3 = new StringBuilder();
            sb3.append(" Custom Attribute \"");
            sb3.append(str2);
            sb3.append("\" not found on ");
            sb3.append(cls.getName());
            StringBuilder sb4 = new StringBuilder();
            sb4.append(cls.getName());
            sb4.append(" must have a method ");
            sb4.append(str);
        } catch (InvocationTargetException e12) {
            StringBuilder sb5 = new StringBuilder();
            sb5.append(" Custom Attribute \"");
            sb5.append(str2);
            sb5.append("\" not found on ");
            sb5.append(cls.getName());
            e12.printStackTrace();
        }
    }

    public b d() {
        return this.f1668c;
    }

    public float e() {
        switch (C0031a.f1674a[this.f1668c.ordinal()]) {
            case 2:
                if (this.f1672g) {
                    return 1.0f;
                }
                return StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            case 3:
                throw new RuntimeException("Cannot interpolate String");
            case 4:
            case 5:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 6:
                return this.f1669d;
            case 7:
                return this.f1670e;
            case 8:
                return this.f1670e;
            default:
                return Float.NaN;
        }
    }

    public void f(float[] fArr) {
        switch (C0031a.f1674a[this.f1668c.ordinal()]) {
            case 2:
                fArr[0] = this.f1672g ? 1.0f : StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                return;
            case 3:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 4:
            case 5:
                int i10 = this.f1673h;
                int i11 = (i10 >> 24) & BaseProgressIndicator.MAX_ALPHA;
                int i12 = (i10 >> 16) & BaseProgressIndicator.MAX_ALPHA;
                int i13 = (i10 >> 8) & BaseProgressIndicator.MAX_ALPHA;
                int i14 = i10 & BaseProgressIndicator.MAX_ALPHA;
                float pow = (float) Math.pow(i12 / 255.0f, 2.2d);
                float pow2 = (float) Math.pow(i13 / 255.0f, 2.2d);
                float pow3 = (float) Math.pow(i14 / 255.0f, 2.2d);
                fArr[0] = pow;
                fArr[1] = pow2;
                fArr[2] = pow3;
                fArr[3] = i11 / 255.0f;
                return;
            case 6:
                fArr[0] = this.f1669d;
                return;
            case 7:
                fArr[0] = this.f1670e;
                return;
            case 8:
                fArr[0] = this.f1670e;
                return;
            default:
                return;
        }
    }

    public int g() {
        int i10 = C0031a.f1674a[this.f1668c.ordinal()];
        return (i10 == 4 || i10 == 5) ? 4 : 1;
    }

    public void j(View view, float[] fArr) {
        Class<?> cls = view.getClass();
        String str = "set" + this.f1667b;
        try {
            switch (C0031a.f1674a[this.f1668c.ordinal()]) {
                case 2:
                    Method method = cls.getMethod(str, Boolean.TYPE);
                    Object[] objArr = new Object[1];
                    objArr[0] = Boolean.valueOf(fArr[0] > 0.5f);
                    method.invoke(view, objArr);
                    return;
                case 3:
                    throw new RuntimeException("unable to interpolate strings " + this.f1667b);
                case 4:
                    cls.getMethod(str, Integer.TYPE).invoke(view, Integer.valueOf((b((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f)) << 16) | (b((int) (fArr[3] * 255.0f)) << 24) | (b((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f)) << 8) | b((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f))));
                    return;
                case 5:
                    Method method2 = cls.getMethod(str, Drawable.class);
                    int b10 = (b((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f)) << 16) | (b((int) (fArr[3] * 255.0f)) << 24) | (b((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f)) << 8) | b((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f));
                    ColorDrawable colorDrawable = new ColorDrawable();
                    colorDrawable.setColor(b10);
                    method2.invoke(view, colorDrawable);
                    return;
                case 6:
                    cls.getMethod(str, Integer.TYPE).invoke(view, Integer.valueOf((int) fArr[0]));
                    return;
                case 7:
                    cls.getMethod(str, Float.TYPE).invoke(view, Float.valueOf(fArr[0]));
                    return;
                case 8:
                    cls.getMethod(str, Float.TYPE).invoke(view, Float.valueOf(fArr[0]));
                    return;
                default:
                    return;
            }
        } catch (IllegalAccessException e10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("cannot access method ");
            sb2.append(str);
            sb2.append(" on View \"");
            sb2.append(z.a.c(view));
            sb2.append("\"");
            e10.printStackTrace();
        } catch (NoSuchMethodException e11) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("no method ");
            sb3.append(str);
            sb3.append(" on View \"");
            sb3.append(z.a.c(view));
            sb3.append("\"");
            e11.printStackTrace();
        } catch (InvocationTargetException e12) {
            e12.printStackTrace();
        }
    }

    public void k(Object obj) {
        switch (C0031a.f1674a[this.f1668c.ordinal()]) {
            case 1:
            case 6:
                this.f1669d = ((Integer) obj).intValue();
                return;
            case 2:
                this.f1672g = ((Boolean) obj).booleanValue();
                return;
            case 3:
                this.f1671f = (String) obj;
                return;
            case 4:
            case 5:
                this.f1673h = ((Integer) obj).intValue();
                return;
            case 7:
                this.f1670e = ((Float) obj).floatValue();
                return;
            case 8:
                this.f1670e = ((Float) obj).floatValue();
                return;
            default:
                return;
        }
    }

    public a(a aVar, Object obj) {
        this.f1666a = false;
        this.f1667b = aVar.f1667b;
        this.f1668c = aVar.f1668c;
        k(obj);
    }
}
