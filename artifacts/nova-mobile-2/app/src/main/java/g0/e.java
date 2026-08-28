package g0;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.Base64;
import android.util.TypedValue;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.apache.http.HttpStatus;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: FontResourcesParserCompat.java */
/* loaded from: classes.dex */
public class e {

    /* compiled from: FontResourcesParserCompat.java */
    /* loaded from: classes.dex */
    public interface a {
    }

    /* compiled from: FontResourcesParserCompat.java */
    /* loaded from: classes.dex */
    public static final class b implements a {

        /* renamed from: a, reason: collision with root package name */
        public final c[] f6722a;

        public b(c[] cVarArr) {
            this.f6722a = cVarArr;
        }

        public c[] a() {
            return this.f6722a;
        }
    }

    /* compiled from: FontResourcesParserCompat.java */
    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a, reason: collision with root package name */
        public final String f6723a;

        /* renamed from: b, reason: collision with root package name */
        public int f6724b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f6725c;

        /* renamed from: d, reason: collision with root package name */
        public String f6726d;

        /* renamed from: e, reason: collision with root package name */
        public int f6727e;

        /* renamed from: f, reason: collision with root package name */
        public int f6728f;

        public c(String str, int i10, boolean z10, String str2, int i11, int i12) {
            this.f6723a = str;
            this.f6724b = i10;
            this.f6725c = z10;
            this.f6726d = str2;
            this.f6727e = i11;
            this.f6728f = i12;
        }

        public String a() {
            return this.f6723a;
        }

        public int b() {
            return this.f6728f;
        }

        public int c() {
            return this.f6727e;
        }

        public String d() {
            return this.f6726d;
        }

        public int e() {
            return this.f6724b;
        }

        public boolean f() {
            return this.f6725c;
        }
    }

    /* compiled from: FontResourcesParserCompat.java */
    /* loaded from: classes.dex */
    public static final class d implements a {

        /* renamed from: a, reason: collision with root package name */
        public final n0.d f6729a;

        /* renamed from: b, reason: collision with root package name */
        public final int f6730b;

        /* renamed from: c, reason: collision with root package name */
        public final int f6731c;

        /* renamed from: d, reason: collision with root package name */
        public final String f6732d;

        public d(n0.d dVar, int i10, int i11, String str) {
            this.f6729a = dVar;
            this.f6731c = i10;
            this.f6730b = i11;
            this.f6732d = str;
        }

        public int a() {
            return this.f6731c;
        }

        public n0.d b() {
            return this.f6729a;
        }

        public String c() {
            return this.f6732d;
        }

        public int d() {
            return this.f6730b;
        }
    }

    public static int a(TypedArray typedArray, int i10) {
        if (Build.VERSION.SDK_INT >= 21) {
            return typedArray.getType(i10);
        }
        TypedValue typedValue = new TypedValue();
        typedArray.getValue(i10, typedValue);
        return typedValue.type;
    }

    public static a b(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return d(xmlPullParser, resources);
        }
        throw new XmlPullParserException("No start tag found");
    }

    public static List<List<byte[]>> c(Resources resources, int i10) {
        if (i10 == 0) {
            return Collections.emptyList();
        }
        TypedArray obtainTypedArray = resources.obtainTypedArray(i10);
        try {
            if (obtainTypedArray.length() == 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            if (a(obtainTypedArray, 0) == 1) {
                for (int i11 = 0; i11 < obtainTypedArray.length(); i11++) {
                    int resourceId = obtainTypedArray.getResourceId(i11, 0);
                    if (resourceId != 0) {
                        arrayList.add(h(resources.getStringArray(resourceId)));
                    }
                }
            } else {
                arrayList.add(h(resources.getStringArray(i10)));
            }
            return arrayList;
        } finally {
            obtainTypedArray.recycle();
        }
    }

    public static a d(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "font-family");
        if (xmlPullParser.getName().equals("font-family")) {
            return e(xmlPullParser, resources);
        }
        g(xmlPullParser);
        return null;
    }

    public static a e(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), d0.d.f5494h);
        String string = obtainAttributes.getString(d0.d.f5495i);
        String string2 = obtainAttributes.getString(d0.d.f5499m);
        String string3 = obtainAttributes.getString(d0.d.f5500n);
        int resourceId = obtainAttributes.getResourceId(d0.d.f5496j, 0);
        int integer = obtainAttributes.getInteger(d0.d.f5497k, 1);
        int integer2 = obtainAttributes.getInteger(d0.d.f5498l, 500);
        String string4 = obtainAttributes.getString(d0.d.f5501o);
        obtainAttributes.recycle();
        if (string != null && string2 != null && string3 != null) {
            while (xmlPullParser.next() != 3) {
                g(xmlPullParser);
            }
            return new d(new n0.d(string, string2, string3, c(resources, resourceId)), integer, integer2, string4);
        }
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("font")) {
                    arrayList.add(f(xmlPullParser, resources));
                } else {
                    g(xmlPullParser);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new b((c[]) arrayList.toArray(new c[arrayList.size()]));
    }

    public static c f(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), d0.d.f5502p);
        int i10 = d0.d.f5511y;
        if (!obtainAttributes.hasValue(i10)) {
            i10 = d0.d.f5504r;
        }
        int i11 = obtainAttributes.getInt(i10, HttpStatus.SC_BAD_REQUEST);
        int i12 = d0.d.f5509w;
        if (!obtainAttributes.hasValue(i12)) {
            i12 = d0.d.f5505s;
        }
        boolean z10 = 1 == obtainAttributes.getInt(i12, 0);
        int i13 = d0.d.f5512z;
        if (!obtainAttributes.hasValue(i13)) {
            i13 = d0.d.f5506t;
        }
        int i14 = d0.d.f5510x;
        if (!obtainAttributes.hasValue(i14)) {
            i14 = d0.d.f5507u;
        }
        String string = obtainAttributes.getString(i14);
        int i15 = obtainAttributes.getInt(i13, 0);
        int i16 = d0.d.f5508v;
        if (!obtainAttributes.hasValue(i16)) {
            i16 = d0.d.f5503q;
        }
        int resourceId = obtainAttributes.getResourceId(i16, 0);
        String string2 = obtainAttributes.getString(i16);
        obtainAttributes.recycle();
        while (xmlPullParser.next() != 3) {
            g(xmlPullParser);
        }
        return new c(string2, i11, z10, string, i15, resourceId);
    }

    public static void g(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int i10 = 1;
        while (i10 > 0) {
            int next = xmlPullParser.next();
            if (next == 2) {
                i10++;
            } else if (next == 3) {
                i10--;
            }
        }
    }

    public static List<byte[]> h(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(Base64.decode(str, 0));
        }
        return arrayList;
    }
}
