package a0;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.SparseArray;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: StateSet.java */
/* loaded from: classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    public int f318a = -1;

    /* renamed from: b, reason: collision with root package name */
    public int f319b = -1;

    /* renamed from: c, reason: collision with root package name */
    public int f320c = -1;

    /* renamed from: d, reason: collision with root package name */
    public SparseArray<a> f321d = new SparseArray<>();

    /* renamed from: e, reason: collision with root package name */
    public SparseArray<androidx.constraintlayout.widget.c> f322e = new SparseArray<>();

    /* compiled from: StateSet.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public int f323a;

        /* renamed from: b, reason: collision with root package name */
        public ArrayList<b> f324b = new ArrayList<>();

        /* renamed from: c, reason: collision with root package name */
        public int f325c;

        /* renamed from: d, reason: collision with root package name */
        public boolean f326d;

        public a(Context context, XmlPullParser xmlPullParser) {
            this.f325c = -1;
            this.f326d = false;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), d.T8);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = obtainStyledAttributes.getIndex(i10);
                if (index == d.U8) {
                    this.f323a = obtainStyledAttributes.getResourceId(index, this.f323a);
                } else if (index == d.V8) {
                    this.f325c = obtainStyledAttributes.getResourceId(index, this.f325c);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f325c);
                    context.getResources().getResourceName(this.f325c);
                    if ("layout".equals(resourceTypeName)) {
                        this.f326d = true;
                    }
                }
            }
            obtainStyledAttributes.recycle();
        }

        public void a(b bVar) {
            this.f324b.add(bVar);
        }

        public int b(float f10, float f11) {
            for (int i10 = 0; i10 < this.f324b.size(); i10++) {
                if (this.f324b.get(i10).a(f10, f11)) {
                    return i10;
                }
            }
            return -1;
        }
    }

    /* compiled from: StateSet.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public float f327a;

        /* renamed from: b, reason: collision with root package name */
        public float f328b;

        /* renamed from: c, reason: collision with root package name */
        public float f329c;

        /* renamed from: d, reason: collision with root package name */
        public float f330d;

        /* renamed from: e, reason: collision with root package name */
        public int f331e;

        /* renamed from: f, reason: collision with root package name */
        public boolean f332f;

        public b(Context context, XmlPullParser xmlPullParser) {
            this.f327a = Float.NaN;
            this.f328b = Float.NaN;
            this.f329c = Float.NaN;
            this.f330d = Float.NaN;
            this.f331e = -1;
            this.f332f = false;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), d.D9);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = obtainStyledAttributes.getIndex(i10);
                if (index == d.E9) {
                    this.f331e = obtainStyledAttributes.getResourceId(index, this.f331e);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f331e);
                    context.getResources().getResourceName(this.f331e);
                    if ("layout".equals(resourceTypeName)) {
                        this.f332f = true;
                    }
                } else if (index == d.F9) {
                    this.f330d = obtainStyledAttributes.getDimension(index, this.f330d);
                } else if (index == d.G9) {
                    this.f328b = obtainStyledAttributes.getDimension(index, this.f328b);
                } else if (index == d.H9) {
                    this.f329c = obtainStyledAttributes.getDimension(index, this.f329c);
                } else if (index == d.I9) {
                    this.f327a = obtainStyledAttributes.getDimension(index, this.f327a);
                }
            }
            obtainStyledAttributes.recycle();
        }

        public boolean a(float f10, float f11) {
            if (!Float.isNaN(this.f327a) && f10 < this.f327a) {
                return false;
            }
            if (!Float.isNaN(this.f328b) && f11 < this.f328b) {
                return false;
            }
            if (Float.isNaN(this.f329c) || f10 <= this.f329c) {
                return Float.isNaN(this.f330d) || f11 <= this.f330d;
            }
            return false;
        }
    }

    public f(Context context, XmlPullParser xmlPullParser) {
        b(context, xmlPullParser);
    }

    public int a(int i10, int i11, float f10, float f11) {
        a aVar = this.f321d.get(i11);
        if (aVar == null) {
            return i11;
        }
        if (f10 != -1.0f && f11 != -1.0f) {
            b bVar = null;
            Iterator<b> it2 = aVar.f324b.iterator();
            while (it2.hasNext()) {
                b next = it2.next();
                if (next.a(f10, f11)) {
                    if (i10 == next.f331e) {
                        return i10;
                    }
                    bVar = next;
                }
            }
            if (bVar != null) {
                return bVar.f331e;
            }
            return aVar.f325c;
        }
        if (aVar.f325c == i10) {
            return i10;
        }
        Iterator<b> it3 = aVar.f324b.iterator();
        while (it3.hasNext()) {
            if (i10 == it3.next().f331e) {
                return i10;
            }
        }
        return aVar.f325c;
    }

    public final void b(Context context, XmlPullParser xmlPullParser) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), d.Y8);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = obtainStyledAttributes.getIndex(i10);
            if (index == d.Z8) {
                this.f318a = obtainStyledAttributes.getResourceId(index, this.f318a);
            }
        }
        obtainStyledAttributes.recycle();
        a aVar = null;
        try {
            int eventType = xmlPullParser.getEventType();
            while (true) {
                char c10 = 1;
                if (eventType == 1) {
                    return;
                }
                if (eventType == 0) {
                    xmlPullParser.getName();
                } else if (eventType == 2) {
                    String name = xmlPullParser.getName();
                    switch (name.hashCode()) {
                        case 80204913:
                            if (name.equals("State")) {
                                c10 = 2;
                                break;
                            }
                            break;
                        case 1301459538:
                            if (name.equals("LayoutDescription")) {
                                c10 = 0;
                                break;
                            }
                            break;
                        case 1382829617:
                            if (name.equals("StateSet")) {
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
                        aVar = new a(context, xmlPullParser);
                        this.f321d.put(aVar.f323a, aVar);
                    } else if (c10 == 3) {
                        b bVar = new b(context, xmlPullParser);
                        if (aVar != null) {
                            aVar.a(bVar);
                        }
                    }
                } else if (eventType != 3) {
                    continue;
                } else if ("StateSet".equals(xmlPullParser.getName())) {
                    return;
                }
                eventType = xmlPullParser.next();
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        } catch (XmlPullParserException e11) {
            e11.printStackTrace();
        }
    }

    public int c(int i10, int i11, int i12) {
        return d(-1, i10, i11, i12);
    }

    public int d(int i10, int i11, float f10, float f11) {
        a aVar;
        int b10;
        if (i10 != i11) {
            a aVar2 = this.f321d.get(i11);
            if (aVar2 == null) {
                return -1;
            }
            int b11 = aVar2.b(f10, f11);
            return b11 == -1 ? aVar2.f325c : aVar2.f324b.get(b11).f331e;
        }
        if (i11 == -1) {
            aVar = this.f321d.valueAt(0);
        } else {
            aVar = this.f321d.get(this.f319b);
        }
        if (aVar == null) {
            return -1;
        }
        return ((this.f320c == -1 || !aVar.f324b.get(i10).a(f10, f11)) && i10 != (b10 = aVar.b(f10, f11))) ? b10 == -1 ? aVar.f325c : aVar.f324b.get(b10).f331e : i10;
    }
}
