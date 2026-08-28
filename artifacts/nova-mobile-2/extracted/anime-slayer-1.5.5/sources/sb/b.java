package sb;

import android.content.Context;
import android.util.Xml;
import it.gmariotti.changelibs.library.internal.ChangeLogException;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import rb.c;
import rb.d;

/* compiled from: XmlParser.java */
/* loaded from: classes.dex */
public class b extends sb.a {

    /* renamed from: e, reason: collision with root package name */
    public static List<String> f13879e = new a();

    /* renamed from: c, reason: collision with root package name */
    public int f13880c;

    /* renamed from: d, reason: collision with root package name */
    public String f13881d;

    /* compiled from: XmlParser.java */
    /* loaded from: classes.dex */
    public static class a extends ArrayList<String> {
        public a() {
            add("changelogbug");
            add("changelogimprovement");
            add("changelogtext");
        }
    }

    public b(Context context, int i10) {
        super(context);
        this.f13880c = qb.a.f12673a;
        this.f13881d = null;
        this.f13880c = i10;
    }

    public rb.a a() throws Exception {
        InputStream openRawResource;
        try {
            if (this.f13881d != null) {
                openRawResource = qb.b.a(this.f13877a) ? new URL(this.f13881d).openStream() : null;
            } else {
                openRawResource = this.f13877a.getResources().openRawResource(this.f13880c);
            }
            if (openRawResource != null) {
                XmlPullParser newPullParser = Xml.newPullParser();
                newPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", false);
                newPullParser.setInput(openRawResource, null);
                newPullParser.nextTag();
                rb.a aVar = new rb.a();
                b(newPullParser, aVar);
                openRawResource.close();
                return aVar;
            }
            throw new ChangeLogException("Changelog.xml not found");
        } catch (IOException e10) {
            throw e10;
        } catch (XmlPullParserException e11) {
            throw e11;
        }
    }

    public void b(XmlPullParser xmlPullParser, rb.a aVar) throws Exception {
        if (xmlPullParser == null || aVar == null) {
            return;
        }
        xmlPullParser.require(2, null, "changelog");
        String attributeValue = xmlPullParser.getAttributeValue(null, "bulletedList");
        if (attributeValue != null && !attributeValue.equals("true")) {
            aVar.c(false);
            this.f13878b = false;
        } else {
            aVar.c(true);
            this.f13878b = true;
        }
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2 && xmlPullParser.getName().equals("changelogversion")) {
                d(xmlPullParser, aVar);
            }
        }
    }

    public final void c(XmlPullParser xmlPullParser, rb.a aVar, String str, int i10) throws Exception {
        if (xmlPullParser == null) {
            return;
        }
        String name = xmlPullParser.getName();
        c cVar = new c();
        cVar.m(str);
        cVar.l(i10);
        String attributeValue = xmlPullParser.getAttributeValue(null, "changeTextTitle");
        if (attributeValue != null) {
            cVar.i(attributeValue);
        }
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "bulletedList");
        if (attributeValue2 != null) {
            if (attributeValue2.equals("true")) {
                cVar.f(true);
            } else {
                cVar.f(false);
            }
        } else {
            cVar.f(this.f13878b);
        }
        if (xmlPullParser.next() == 4) {
            String text = xmlPullParser.getText();
            if (text != null) {
                cVar.e(text);
                cVar.k(name.equalsIgnoreCase("changelogbug") ? 1 : name.equalsIgnoreCase("changelogimprovement") ? 2 : 0);
                xmlPullParser.nextTag();
            } else {
                throw new ChangeLogException("ChangeLogText required in changeLogText node");
            }
        }
        aVar.a(cVar);
    }

    public void d(XmlPullParser xmlPullParser, rb.a aVar) throws Exception {
        if (xmlPullParser == null) {
            return;
        }
        xmlPullParser.require(2, null, "changelogversion");
        String attributeValue = xmlPullParser.getAttributeValue(null, "versionName");
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "versionCode");
        int i10 = 0;
        if (attributeValue2 != null) {
            try {
                i10 = Integer.parseInt(attributeValue2);
            } catch (NumberFormatException unused) {
            }
        }
        String attributeValue3 = xmlPullParser.getAttributeValue(null, "changeDate");
        if (attributeValue != null) {
            d dVar = new d();
            dVar.m(attributeValue);
            dVar.g(attributeValue3);
            aVar.a(dVar);
            while (xmlPullParser.next() != 3) {
                if (xmlPullParser.getEventType() == 2) {
                    if (f13879e.contains(xmlPullParser.getName())) {
                        c(xmlPullParser, aVar, attributeValue, i10);
                    }
                }
            }
            return;
        }
        throw new ChangeLogException("VersionName required in changeLogVersion node");
    }

    public b(Context context, String str) {
        super(context);
        this.f13880c = qb.a.f12673a;
        this.f13881d = null;
        this.f13881d = str;
    }
}
