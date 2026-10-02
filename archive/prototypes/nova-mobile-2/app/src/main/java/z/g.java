package z;

import android.content.Context;
import android.util.Xml;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: KeyFrames.java */
/* loaded from: classes.dex */
public class g {

    /* renamed from: b, reason: collision with root package name */
    public static HashMap<String, Constructor<? extends d>> f16908b;

    /* renamed from: a, reason: collision with root package name */
    public HashMap<Integer, ArrayList<d>> f16909a = new HashMap<>();

    static {
        HashMap<String, Constructor<? extends d>> hashMap = new HashMap<>();
        f16908b = hashMap;
        try {
            hashMap.put("KeyAttribute", e.class.getConstructor(new Class[0]));
            f16908b.put("KeyPosition", h.class.getConstructor(new Class[0]));
            f16908b.put("KeyCycle", f.class.getConstructor(new Class[0]));
            f16908b.put("KeyTimeCycle", j.class.getConstructor(new Class[0]));
            f16908b.put("KeyTrigger", k.class.getConstructor(new Class[0]));
        } catch (NoSuchMethodException unused) {
        }
    }

    public g() {
    }

    public void a(m mVar) {
        ArrayList<d> arrayList = this.f16909a.get(-1);
        if (arrayList != null) {
            mVar.a(arrayList);
        }
    }

    public void b(d dVar) {
        if (!this.f16909a.containsKey(Integer.valueOf(dVar.f16865b))) {
            this.f16909a.put(Integer.valueOf(dVar.f16865b), new ArrayList<>());
        }
        ArrayList<d> arrayList = this.f16909a.get(Integer.valueOf(dVar.f16865b));
        if (arrayList != null) {
            arrayList.add(dVar);
        }
    }

    public ArrayList<d> c(int i10) {
        return this.f16909a.get(Integer.valueOf(i10));
    }

    public g(Context context, XmlPullParser xmlPullParser) {
        HashMap<String, androidx.constraintlayout.widget.a> hashMap;
        HashMap<String, androidx.constraintlayout.widget.a> hashMap2;
        d dVar = null;
        try {
            int eventType = xmlPullParser.getEventType();
            while (eventType != 1) {
                if (eventType != 2) {
                    if (eventType == 3 && "KeyFrameSet".equals(xmlPullParser.getName())) {
                        return;
                    }
                } else {
                    String name = xmlPullParser.getName();
                    if (f16908b.containsKey(name)) {
                        try {
                            Constructor<? extends d> constructor = f16908b.get(name);
                            if (constructor != null) {
                                d newInstance = constructor.newInstance(new Object[0]);
                                try {
                                    newInstance.e(context, Xml.asAttributeSet(xmlPullParser));
                                    b(newInstance);
                                } catch (Exception unused) {
                                }
                                dVar = newInstance;
                            } else {
                                throw new NullPointerException("Keymaker for " + name + " not found");
                                break;
                            }
                        } catch (Exception unused2) {
                        }
                    } else if (name.equalsIgnoreCase("CustomAttribute")) {
                        if (dVar != null && (hashMap2 = dVar.f16868e) != null) {
                            androidx.constraintlayout.widget.a.h(context, xmlPullParser, hashMap2);
                        }
                    } else if (name.equalsIgnoreCase("CustomMethod") && dVar != null && (hashMap = dVar.f16868e) != null) {
                        androidx.constraintlayout.widget.a.h(context, xmlPullParser, hashMap);
                    }
                }
                eventType = xmlPullParser.next();
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        } catch (XmlPullParserException e11) {
            e11.printStackTrace();
        }
    }
}
