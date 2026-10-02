package a0;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.SparseArray;
import android.util.Xml;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: ConstraintLayoutStates.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public final ConstraintLayout f8a;

    /* renamed from: b, reason: collision with root package name */
    public androidx.constraintlayout.widget.c f9b;

    /* renamed from: c, reason: collision with root package name */
    public int f10c = -1;

    /* renamed from: d, reason: collision with root package name */
    public int f11d = -1;

    /* renamed from: e, reason: collision with root package name */
    public SparseArray<C0003a> f12e = new SparseArray<>();

    /* renamed from: f, reason: collision with root package name */
    public SparseArray<androidx.constraintlayout.widget.c> f13f = new SparseArray<>();

    /* compiled from: ConstraintLayoutStates.java */
    /* renamed from: a0.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0003a {

        /* renamed from: a, reason: collision with root package name */
        public int f14a;

        /* renamed from: b, reason: collision with root package name */
        public ArrayList<b> f15b = new ArrayList<>();

        /* renamed from: c, reason: collision with root package name */
        public int f16c;

        /* renamed from: d, reason: collision with root package name */
        public androidx.constraintlayout.widget.c f17d;

        public C0003a(Context context, XmlPullParser xmlPullParser) {
            this.f16c = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), d.T8);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = obtainStyledAttributes.getIndex(i10);
                if (index == d.U8) {
                    this.f14a = obtainStyledAttributes.getResourceId(index, this.f14a);
                } else if (index == d.V8) {
                    this.f16c = obtainStyledAttributes.getResourceId(index, this.f16c);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f16c);
                    context.getResources().getResourceName(this.f16c);
                    if ("layout".equals(resourceTypeName)) {
                        androidx.constraintlayout.widget.c cVar = new androidx.constraintlayout.widget.c();
                        this.f17d = cVar;
                        cVar.m(context, this.f16c);
                    }
                }
            }
            obtainStyledAttributes.recycle();
        }

        public void a(b bVar) {
            this.f15b.add(bVar);
        }

        public int b(float f10, float f11) {
            for (int i10 = 0; i10 < this.f15b.size(); i10++) {
                if (this.f15b.get(i10).a(f10, f11)) {
                    return i10;
                }
            }
            return -1;
        }
    }

    /* compiled from: ConstraintLayoutStates.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public float f18a;

        /* renamed from: b, reason: collision with root package name */
        public float f19b;

        /* renamed from: c, reason: collision with root package name */
        public float f20c;

        /* renamed from: d, reason: collision with root package name */
        public float f21d;

        /* renamed from: e, reason: collision with root package name */
        public int f22e;

        /* renamed from: f, reason: collision with root package name */
        public androidx.constraintlayout.widget.c f23f;

        public b(Context context, XmlPullParser xmlPullParser) {
            this.f18a = Float.NaN;
            this.f19b = Float.NaN;
            this.f20c = Float.NaN;
            this.f21d = Float.NaN;
            this.f22e = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), d.D9);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = obtainStyledAttributes.getIndex(i10);
                if (index == d.E9) {
                    this.f22e = obtainStyledAttributes.getResourceId(index, this.f22e);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f22e);
                    context.getResources().getResourceName(this.f22e);
                    if ("layout".equals(resourceTypeName)) {
                        androidx.constraintlayout.widget.c cVar = new androidx.constraintlayout.widget.c();
                        this.f23f = cVar;
                        cVar.m(context, this.f22e);
                    }
                } else if (index == d.F9) {
                    this.f21d = obtainStyledAttributes.getDimension(index, this.f21d);
                } else if (index == d.G9) {
                    this.f19b = obtainStyledAttributes.getDimension(index, this.f19b);
                } else if (index == d.H9) {
                    this.f20c = obtainStyledAttributes.getDimension(index, this.f20c);
                } else if (index == d.I9) {
                    this.f18a = obtainStyledAttributes.getDimension(index, this.f18a);
                }
            }
            obtainStyledAttributes.recycle();
        }

        public boolean a(float f10, float f11) {
            if (!Float.isNaN(this.f18a) && f10 < this.f18a) {
                return false;
            }
            if (!Float.isNaN(this.f19b) && f11 < this.f19b) {
                return false;
            }
            if (Float.isNaN(this.f20c) || f10 <= this.f20c) {
                return Float.isNaN(this.f21d) || f11 <= this.f21d;
            }
            return false;
        }
    }

    public a(Context context, ConstraintLayout constraintLayout, int i10) {
        this.f8a = constraintLayout;
        a(context, i10);
    }

    public final void a(Context context, int i10) {
        XmlResourceParser xml = context.getResources().getXml(i10);
        C0003a c0003a = null;
        try {
            int eventType = xml.getEventType();
            while (true) {
                char c10 = 1;
                if (eventType == 1) {
                    return;
                }
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    switch (name.hashCode()) {
                        case -1349929691:
                            if (name.equals("ConstraintSet")) {
                                c10 = 4;
                                break;
                            }
                            break;
                        case 80204913:
                            if (name.equals("State")) {
                                c10 = 2;
                                break;
                            }
                            break;
                        case 1382829617:
                            if (name.equals("StateSet")) {
                                break;
                            }
                            break;
                        case 1657696882:
                            if (name.equals("layoutDescription")) {
                                c10 = 0;
                                break;
                            }
                            break;
                        case 1901439077:
                            if (name.equals("Variant")) {
                                c10 = 3;
                                break;
                            }
                            break;
                    }
                    c10 = 65535;
                    if (c10 == 2) {
                        c0003a = new C0003a(context, xml);
                        this.f12e.put(c0003a.f14a, c0003a);
                    } else if (c10 == 3) {
                        b bVar = new b(context, xml);
                        if (c0003a != null) {
                            c0003a.a(bVar);
                        }
                    } else if (c10 == 4) {
                        b(context, xml);
                    }
                }
                eventType = xml.next();
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        } catch (XmlPullParserException e11) {
            e11.printStackTrace();
        }
    }

    public final void b(Context context, XmlPullParser xmlPullParser) {
        androidx.constraintlayout.widget.c cVar = new androidx.constraintlayout.widget.c();
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i10 = 0; i10 < attributeCount; i10++) {
            String attributeName = xmlPullParser.getAttributeName(i10);
            String attributeValue = xmlPullParser.getAttributeValue(i10);
            if (attributeName != null && attributeValue != null && "id".equals(attributeName)) {
                int identifier = attributeValue.contains("/") ? context.getResources().getIdentifier(attributeValue.substring(attributeValue.indexOf(47) + 1), "id", context.getPackageName()) : -1;
                if (identifier == -1 && attributeValue.length() > 1) {
                    identifier = Integer.parseInt(attributeValue.substring(1));
                }
                cVar.w(context, xmlPullParser);
                this.f13f.put(identifier, cVar);
                return;
            }
        }
    }

    public void c(a0.b bVar) {
    }

    public void d(int i10, float f10, float f11) {
        androidx.constraintlayout.widget.c cVar;
        C0003a c0003a;
        int b10;
        androidx.constraintlayout.widget.c cVar2;
        int i11 = this.f10c;
        if (i11 == i10) {
            if (i10 == -1) {
                c0003a = this.f12e.valueAt(0);
            } else {
                c0003a = this.f12e.get(i11);
            }
            int i12 = this.f11d;
            if ((i12 == -1 || !c0003a.f15b.get(i12).a(f10, f11)) && this.f11d != (b10 = c0003a.b(f10, f11))) {
                if (b10 == -1) {
                    cVar2 = this.f9b;
                } else {
                    cVar2 = c0003a.f15b.get(b10).f23f;
                }
                if (b10 != -1) {
                    int i13 = c0003a.f15b.get(b10).f22e;
                }
                if (cVar2 == null) {
                    return;
                }
                this.f11d = b10;
                cVar2.i(this.f8a);
                return;
            }
            return;
        }
        this.f10c = i10;
        C0003a c0003a2 = this.f12e.get(i10);
        int b11 = c0003a2.b(f10, f11);
        if (b11 == -1) {
            cVar = c0003a2.f17d;
        } else {
            cVar = c0003a2.f15b.get(b11).f23f;
        }
        if (b11 != -1) {
            int i14 = c0003a2.f15b.get(b11).f22e;
        }
        if (cVar == null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("NO Constraint set found ! id=");
            sb2.append(i10);
            sb2.append(", dim =");
            sb2.append(f10);
            sb2.append(", ");
            sb2.append(f11);
            return;
        }
        this.f11d = b11;
        cVar.i(this.f8a);
    }
}
