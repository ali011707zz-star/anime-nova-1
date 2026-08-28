package z;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.shadow.ShadowDrawableWrapper;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.apache.http.HttpStatus;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import z.p;

/* compiled from: MotionScene.java */
/* loaded from: classes.dex */
public class r {

    /* renamed from: a, reason: collision with root package name */
    public final p f17123a;

    /* renamed from: n, reason: collision with root package name */
    public MotionEvent f17136n;

    /* renamed from: q, reason: collision with root package name */
    public p.f f17139q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f17140r;

    /* renamed from: s, reason: collision with root package name */
    public final v f17141s;

    /* renamed from: t, reason: collision with root package name */
    public float f17142t;

    /* renamed from: u, reason: collision with root package name */
    public float f17143u;

    /* renamed from: b, reason: collision with root package name */
    public a0.f f17124b = null;

    /* renamed from: c, reason: collision with root package name */
    public b f17125c = null;

    /* renamed from: d, reason: collision with root package name */
    public boolean f17126d = false;

    /* renamed from: e, reason: collision with root package name */
    public ArrayList<b> f17127e = new ArrayList<>();

    /* renamed from: f, reason: collision with root package name */
    public b f17128f = null;

    /* renamed from: g, reason: collision with root package name */
    public ArrayList<b> f17129g = new ArrayList<>();

    /* renamed from: h, reason: collision with root package name */
    public SparseArray<androidx.constraintlayout.widget.c> f17130h = new SparseArray<>();

    /* renamed from: i, reason: collision with root package name */
    public HashMap<String, Integer> f17131i = new HashMap<>();

    /* renamed from: j, reason: collision with root package name */
    public SparseIntArray f17132j = new SparseIntArray();

    /* renamed from: k, reason: collision with root package name */
    public boolean f17133k = false;

    /* renamed from: l, reason: collision with root package name */
    public int f17134l = HttpStatus.SC_BAD_REQUEST;

    /* renamed from: m, reason: collision with root package name */
    public int f17135m = 0;

    /* renamed from: o, reason: collision with root package name */
    public boolean f17137o = false;

    /* renamed from: p, reason: collision with root package name */
    public boolean f17138p = false;

    /* compiled from: MotionScene.java */
    /* loaded from: classes.dex */
    public class a implements Interpolator {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ u.c f17144a;

        public a(u.c cVar) {
            this.f17144a = cVar;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f10) {
            return (float) this.f17144a.a(f10);
        }
    }

    public r(Context context, p pVar, int i10) {
        this.f17123a = pVar;
        this.f17141s = new v(pVar);
        G(context, i10);
        SparseArray<androidx.constraintlayout.widget.c> sparseArray = this.f17130h;
        int i11 = a0.c.f24a;
        sparseArray.put(i11, new androidx.constraintlayout.widget.c());
        this.f17131i.put("motion_base", Integer.valueOf(i11));
    }

    public static String W(String str) {
        if (str == null) {
            return "";
        }
        int indexOf = str.indexOf(47);
        return indexOf < 0 ? str : str.substring(indexOf + 1);
    }

    public float A() {
        b bVar = this.f17125c;
        return (bVar == null || bVar.f17157l == null) ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : this.f17125c.f17157l.o();
    }

    public int B() {
        b bVar = this.f17125c;
        if (bVar == null) {
            return -1;
        }
        return bVar.f17149d;
    }

    public b C(int i10) {
        Iterator<b> it2 = this.f17127e.iterator();
        while (it2.hasNext()) {
            b next = it2.next();
            if (next.f17146a == i10) {
                return next;
            }
        }
        return null;
    }

    public List<b> D(int i10) {
        int v10 = v(i10);
        ArrayList arrayList = new ArrayList();
        Iterator<b> it2 = this.f17127e.iterator();
        while (it2.hasNext()) {
            b next = it2.next();
            if (next.f17149d == v10 || next.f17148c == v10) {
                arrayList.add(next);
            }
        }
        return arrayList;
    }

    public final boolean E(int i10) {
        int i11 = this.f17132j.get(i10);
        int size = this.f17132j.size();
        while (i11 > 0) {
            if (i11 == i10) {
                return true;
            }
            int i12 = size - 1;
            if (size < 0) {
                return true;
            }
            i11 = this.f17132j.get(i11);
            size = i12;
        }
        return false;
    }

    public final boolean F() {
        return this.f17139q != null;
    }

    public final void G(Context context, int i10) {
        XmlResourceParser xml = context.getResources().getXml(i10);
        b bVar = null;
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
                    if (this.f17133k) {
                        System.out.println("parsing = " + name);
                    }
                    switch (name.hashCode()) {
                        case -1349929691:
                            if (name.equals("ConstraintSet")) {
                                c10 = 5;
                                break;
                            }
                            break;
                        case -1239391468:
                            if (name.equals("KeyFrameSet")) {
                                c10 = '\b';
                                break;
                            }
                            break;
                        case -687739768:
                            if (name.equals("Include")) {
                                c10 = 7;
                                break;
                            }
                            break;
                        case 61998586:
                            if (name.equals("ViewTransition")) {
                                c10 = '\t';
                                break;
                            }
                            break;
                        case 269306229:
                            if (name.equals("Transition")) {
                                break;
                            }
                            break;
                        case 312750793:
                            if (name.equals("OnClick")) {
                                c10 = 3;
                                break;
                            }
                            break;
                        case 327855227:
                            if (name.equals("OnSwipe")) {
                                c10 = 2;
                                break;
                            }
                            break;
                        case 793277014:
                            if (name.equals("MotionScene")) {
                                c10 = 0;
                                break;
                            }
                            break;
                        case 1382829617:
                            if (name.equals("StateSet")) {
                                c10 = 4;
                                break;
                            }
                            break;
                        case 1942574248:
                            if (name.equals("include")) {
                                c10 = 6;
                                break;
                            }
                            break;
                    }
                    c10 = 65535;
                    switch (c10) {
                        case 0:
                            K(context, xml);
                            break;
                        case 1:
                            ArrayList<b> arrayList = this.f17127e;
                            b bVar2 = new b(this, context, xml);
                            arrayList.add(bVar2);
                            if (this.f17125c == null && !bVar2.f17147b) {
                                this.f17125c = bVar2;
                                if (bVar2.f17157l != null) {
                                    this.f17125c.f17157l.w(this.f17140r);
                                }
                            }
                            if (bVar2.f17147b) {
                                if (bVar2.f17148c == -1) {
                                    this.f17128f = bVar2;
                                } else {
                                    this.f17129g.add(bVar2);
                                }
                                this.f17127e.remove(bVar2);
                            }
                            bVar = bVar2;
                            break;
                        case 2:
                            if (bVar == null) {
                                String resourceEntryName = context.getResources().getResourceEntryName(i10);
                                int lineNumber = xml.getLineNumber();
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append(" OnSwipe (");
                                sb2.append(resourceEntryName);
                                sb2.append(".xml:");
                                sb2.append(lineNumber);
                                sb2.append(")");
                            }
                            if (bVar == null) {
                                break;
                            } else {
                                bVar.f17157l = new s(context, this.f17123a, xml);
                                break;
                            }
                        case 3:
                            if (bVar == null) {
                                break;
                            } else {
                                bVar.s(context, xml);
                                break;
                            }
                        case 4:
                            this.f17124b = new a0.f(context, xml);
                            break;
                        case 5:
                            H(context, xml);
                            break;
                        case 6:
                        case 7:
                            J(context, xml);
                            break;
                        case '\b':
                            g gVar = new g(context, xml);
                            if (bVar == null) {
                                break;
                            } else {
                                bVar.f17156k.add(gVar);
                                break;
                            }
                        case '\t':
                            this.f17141s.a(new u(context, xml));
                            break;
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

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0053, code lost:
    
        if (r8.equals("constraintRotate") == false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int H(Context context, XmlPullParser xmlPullParser) {
        androidx.constraintlayout.widget.c cVar = new androidx.constraintlayout.widget.c();
        cVar.J(false);
        int attributeCount = xmlPullParser.getAttributeCount();
        int i10 = 0;
        int i11 = -1;
        int i12 = -1;
        while (true) {
            char c10 = 1;
            if (i10 >= attributeCount) {
                if (i11 != -1) {
                    if (this.f17123a.B != 0) {
                        cVar.K(true);
                    }
                    cVar.w(context, xmlPullParser);
                    if (i12 != -1) {
                        this.f17132j.put(i11, i12);
                    }
                    this.f17130h.put(i11, cVar);
                }
                return i11;
            }
            String attributeName = xmlPullParser.getAttributeName(i10);
            String attributeValue = xmlPullParser.getAttributeValue(i10);
            if (this.f17133k) {
                System.out.println("id string = " + attributeValue);
            }
            attributeName.hashCode();
            switch (attributeName.hashCode()) {
                case -1496482599:
                    if (attributeName.equals("deriveConstraintsFrom")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -1153153640:
                    break;
                case 3355:
                    if (attributeName.equals("id")) {
                        c10 = 2;
                        break;
                    }
                    break;
            }
            c10 = 65535;
            switch (c10) {
                case 0:
                    i12 = p(context, attributeValue);
                    break;
                case 1:
                    cVar.f1699d = Integer.parseInt(attributeValue);
                    break;
                case 2:
                    i11 = p(context, attributeValue);
                    this.f17131i.put(W(attributeValue), Integer.valueOf(i11));
                    cVar.f1697b = z.a.b(context, i11);
                    break;
            }
            i10++;
        }
    }

    public final int I(Context context, int i10) {
        XmlResourceParser xml = context.getResources().getXml(i10);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                String name = xml.getName();
                if (2 == eventType && "ConstraintSet".equals(name)) {
                    return H(context, xml);
                }
            }
            return -1;
        } catch (IOException e10) {
            e10.printStackTrace();
            return -1;
        } catch (XmlPullParserException e11) {
            e11.printStackTrace();
            return -1;
        }
    }

    public final void J(Context context, XmlPullParser xmlPullParser) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), a0.d.f61ca);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = obtainStyledAttributes.getIndex(i10);
            if (index == a0.d.f73da) {
                I(context, obtainStyledAttributes.getResourceId(index, -1));
            }
        }
        obtainStyledAttributes.recycle();
    }

    public final void K(Context context, XmlPullParser xmlPullParser) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), a0.d.f127i8);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = obtainStyledAttributes.getIndex(i10);
            if (index == a0.d.f138j8) {
                int i11 = obtainStyledAttributes.getInt(index, this.f17134l);
                this.f17134l = i11;
                if (i11 < 8) {
                    this.f17134l = 8;
                }
            } else if (index == a0.d.f149k8) {
                this.f17135m = obtainStyledAttributes.getInteger(index, 0);
            }
        }
        obtainStyledAttributes.recycle();
    }

    public void L(float f10, float f11) {
        b bVar = this.f17125c;
        if (bVar == null || bVar.f17157l == null) {
            return;
        }
        this.f17125c.f17157l.t(f10, f11);
    }

    public void M(float f10, float f11) {
        b bVar = this.f17125c;
        if (bVar == null || bVar.f17157l == null) {
            return;
        }
        this.f17125c.f17157l.u(f10, f11);
    }

    public void N(MotionEvent motionEvent, int i10, p pVar) {
        p.f fVar;
        MotionEvent motionEvent2;
        RectF rectF = new RectF();
        if (this.f17139q == null) {
            this.f17139q = this.f17123a.r();
        }
        this.f17139q.a(motionEvent);
        if (i10 != -1) {
            int action = motionEvent.getAction();
            boolean z10 = false;
            if (action != 0) {
                if (action == 2 && !this.f17137o) {
                    float rawY = motionEvent.getRawY() - this.f17143u;
                    float rawX = motionEvent.getRawX() - this.f17142t;
                    if ((rawX == ShadowDrawableWrapper.COS_45 && rawY == ShadowDrawableWrapper.COS_45) || (motionEvent2 = this.f17136n) == null) {
                        return;
                    }
                    b h10 = h(i10, rawX, rawY, motionEvent2);
                    if (h10 != null) {
                        pVar.setTransition(h10);
                        RectF p10 = this.f17125c.f17157l.p(this.f17123a, rectF);
                        if (p10 != null && !p10.contains(this.f17136n.getX(), this.f17136n.getY())) {
                            z10 = true;
                        }
                        this.f17138p = z10;
                        this.f17125c.f17157l.x(this.f17142t, this.f17143u);
                    }
                }
            } else {
                this.f17142t = motionEvent.getRawX();
                this.f17143u = motionEvent.getRawY();
                this.f17136n = motionEvent;
                this.f17137o = false;
                if (this.f17125c.f17157l != null) {
                    RectF f10 = this.f17125c.f17157l.f(this.f17123a, rectF);
                    if (f10 == null || f10.contains(this.f17136n.getX(), this.f17136n.getY())) {
                        RectF p11 = this.f17125c.f17157l.p(this.f17123a, rectF);
                        if (p11 != null && !p11.contains(this.f17136n.getX(), this.f17136n.getY())) {
                            this.f17138p = true;
                        } else {
                            this.f17138p = false;
                        }
                        this.f17125c.f17157l.v(this.f17142t, this.f17143u);
                        return;
                    }
                    this.f17136n = null;
                    this.f17137o = true;
                    return;
                }
                return;
            }
        }
        if (this.f17137o) {
            return;
        }
        b bVar = this.f17125c;
        if (bVar != null && bVar.f17157l != null && !this.f17138p) {
            this.f17125c.f17157l.r(motionEvent, this.f17139q, i10, this);
        }
        this.f17142t = motionEvent.getRawX();
        this.f17143u = motionEvent.getRawY();
        if (motionEvent.getAction() != 1 || (fVar = this.f17139q) == null) {
            return;
        }
        fVar.b();
        this.f17139q = null;
        int i11 = pVar.f17031k;
        if (i11 != -1) {
            g(pVar, i11);
        }
    }

    public final void O(int i10, p pVar) {
        androidx.constraintlayout.widget.c cVar = this.f17130h.get(i10);
        cVar.f1698c = cVar.f1697b;
        int i11 = this.f17132j.get(i10);
        if (i11 > 0) {
            O(i11, pVar);
            androidx.constraintlayout.widget.c cVar2 = this.f17130h.get(i11);
            if (cVar2 == null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("ERROR! invalid deriveConstraintsFrom: @id/");
                sb2.append(z.a.b(this.f17123a.getContext(), i11));
                return;
            } else {
                cVar.f1698c += "/" + cVar2.f1698c;
                cVar.E(cVar2);
            }
        } else {
            cVar.f1698c += "  layout";
            cVar.D(pVar);
        }
        cVar.h(cVar);
    }

    public void P(p pVar) {
        for (int i10 = 0; i10 < this.f17130h.size(); i10++) {
            int keyAt = this.f17130h.keyAt(i10);
            if (E(keyAt)) {
                return;
            }
            O(keyAt, pVar);
        }
    }

    public void Q(int i10, androidx.constraintlayout.widget.c cVar) {
        this.f17130h.put(i10, cVar);
    }

    public void R(int i10) {
        b bVar = this.f17125c;
        if (bVar != null) {
            bVar.C(i10);
        } else {
            this.f17134l = i10;
        }
    }

    public void S(boolean z10) {
        this.f17140r = z10;
        b bVar = this.f17125c;
        if (bVar == null || bVar.f17157l == null) {
            return;
        }
        this.f17125c.f17157l.w(this.f17140r);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0013, code lost:
    
        if (r2 != (-1)) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void T(int i10, int i11) {
        int i12;
        int i13;
        a0.f fVar = this.f17124b;
        if (fVar != null) {
            i12 = fVar.c(i10, -1, -1);
            if (i12 == -1) {
                i12 = i10;
            }
            i13 = this.f17124b.c(i11, -1, -1);
        } else {
            i12 = i10;
        }
        i13 = i11;
        b bVar = this.f17125c;
        if (bVar != null && bVar.f17148c == i11 && this.f17125c.f17149d == i10) {
            return;
        }
        Iterator<b> it2 = this.f17127e.iterator();
        while (it2.hasNext()) {
            b next = it2.next();
            if ((next.f17148c == i13 && next.f17149d == i12) || (next.f17148c == i11 && next.f17149d == i10)) {
                this.f17125c = next;
                if (next == null || next.f17157l == null) {
                    return;
                }
                this.f17125c.f17157l.w(this.f17140r);
                return;
            }
        }
        b bVar2 = this.f17128f;
        Iterator<b> it3 = this.f17129g.iterator();
        while (it3.hasNext()) {
            b next2 = it3.next();
            if (next2.f17148c == i11) {
                bVar2 = next2;
            }
        }
        b bVar3 = new b(this, bVar2);
        bVar3.f17149d = i12;
        bVar3.f17148c = i13;
        if (i12 != -1) {
            this.f17127e.add(bVar3);
        }
        this.f17125c = bVar3;
    }

    public void U(b bVar) {
        this.f17125c = bVar;
        if (bVar == null || bVar.f17157l == null) {
            return;
        }
        this.f17125c.f17157l.w(this.f17140r);
    }

    public void V() {
        b bVar = this.f17125c;
        if (bVar == null || bVar.f17157l == null) {
            return;
        }
        this.f17125c.f17157l.y();
    }

    public boolean X() {
        Iterator<b> it2 = this.f17127e.iterator();
        while (it2.hasNext()) {
            if (it2.next().f17157l != null) {
                return true;
            }
        }
        b bVar = this.f17125c;
        return (bVar == null || bVar.f17157l == null) ? false : true;
    }

    public void Y(int i10, View... viewArr) {
        this.f17141s.h(i10, viewArr);
    }

    public void f(p pVar, int i10) {
        Iterator<b> it2 = this.f17127e.iterator();
        while (it2.hasNext()) {
            b next = it2.next();
            if (next.f17158m.size() > 0) {
                Iterator it3 = next.f17158m.iterator();
                while (it3.hasNext()) {
                    ((b.a) it3.next()).c(pVar);
                }
            }
        }
        Iterator<b> it4 = this.f17129g.iterator();
        while (it4.hasNext()) {
            b next2 = it4.next();
            if (next2.f17158m.size() > 0) {
                Iterator it5 = next2.f17158m.iterator();
                while (it5.hasNext()) {
                    ((b.a) it5.next()).c(pVar);
                }
            }
        }
        Iterator<b> it6 = this.f17127e.iterator();
        while (it6.hasNext()) {
            b next3 = it6.next();
            if (next3.f17158m.size() > 0) {
                Iterator it7 = next3.f17158m.iterator();
                while (it7.hasNext()) {
                    ((b.a) it7.next()).a(pVar, i10, next3);
                }
            }
        }
        Iterator<b> it8 = this.f17129g.iterator();
        while (it8.hasNext()) {
            b next4 = it8.next();
            if (next4.f17158m.size() > 0) {
                Iterator it9 = next4.f17158m.iterator();
                while (it9.hasNext()) {
                    ((b.a) it9.next()).a(pVar, i10, next4);
                }
            }
        }
    }

    public boolean g(p pVar, int i10) {
        b bVar;
        if (F() || this.f17126d) {
            return false;
        }
        Iterator<b> it2 = this.f17127e.iterator();
        while (it2.hasNext()) {
            b next = it2.next();
            if (next.f17159n != 0 && ((bVar = this.f17125c) != next || !bVar.B(2))) {
                if (i10 != next.f17149d || (next.f17159n != 4 && next.f17159n != 2)) {
                    if (i10 == next.f17148c && (next.f17159n == 3 || next.f17159n == 1)) {
                        p.j jVar = p.j.FINISHED;
                        pVar.setState(jVar);
                        pVar.setTransition(next);
                        if (next.f17159n == 3) {
                            pVar.A();
                            pVar.setState(p.j.SETUP);
                            pVar.setState(p.j.MOVING);
                        } else {
                            pVar.setProgress(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                            pVar.g(true);
                            pVar.setState(p.j.SETUP);
                            pVar.setState(p.j.MOVING);
                            pVar.setState(jVar);
                            pVar.s();
                        }
                        return true;
                    }
                } else {
                    p.j jVar2 = p.j.FINISHED;
                    pVar.setState(jVar2);
                    pVar.setTransition(next);
                    if (next.f17159n == 4) {
                        pVar.y();
                        pVar.setState(p.j.SETUP);
                        pVar.setState(p.j.MOVING);
                    } else {
                        pVar.setProgress(1.0f);
                        pVar.g(true);
                        pVar.setState(p.j.SETUP);
                        pVar.setState(p.j.MOVING);
                        pVar.setState(jVar2);
                        pVar.s();
                    }
                    return true;
                }
            }
        }
        return false;
    }

    public b h(int i10, float f10, float f11, MotionEvent motionEvent) {
        if (i10 != -1) {
            List<b> D = D(i10);
            float f12 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            b bVar = null;
            RectF rectF = new RectF();
            for (b bVar2 : D) {
                if (!bVar2.f17160o && bVar2.f17157l != null) {
                    bVar2.f17157l.w(this.f17140r);
                    RectF p10 = bVar2.f17157l.p(this.f17123a, rectF);
                    if (p10 == null || motionEvent == null || p10.contains(motionEvent.getX(), motionEvent.getY())) {
                        RectF f13 = bVar2.f17157l.f(this.f17123a, rectF);
                        if (f13 == null || motionEvent == null || f13.contains(motionEvent.getX(), motionEvent.getY())) {
                            float a10 = bVar2.f17157l.a(f10, f11);
                            if (bVar2.f17157l.f17178l && motionEvent != null) {
                                a10 = ((float) (Math.atan2(f11 + r10, f10 + r9) - Math.atan2(motionEvent.getX() - bVar2.f17157l.f17175i, motionEvent.getY() - bVar2.f17157l.f17176j))) * 10.0f;
                            }
                            float f14 = a10 * (bVar2.f17148c == i10 ? -1.0f : 1.1f);
                            if (f14 > f12) {
                                bVar = bVar2;
                                f12 = f14;
                            }
                        }
                    }
                }
            }
            return bVar;
        }
        return this.f17125c;
    }

    public int i() {
        b bVar = this.f17125c;
        if (bVar == null || bVar.f17157l == null) {
            return 0;
        }
        return this.f17125c.f17157l.d();
    }

    public androidx.constraintlayout.widget.c j(int i10) {
        return k(i10, -1, -1);
    }

    public androidx.constraintlayout.widget.c k(int i10, int i11, int i12) {
        int c10;
        if (this.f17133k) {
            System.out.println("id " + i10);
            System.out.println("size " + this.f17130h.size());
        }
        a0.f fVar = this.f17124b;
        if (fVar != null && (c10 = fVar.c(i10, i11, i12)) != -1) {
            i10 = c10;
        }
        if (this.f17130h.get(i10) == null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Warning could not find ConstraintSet id/");
            sb2.append(z.a.b(this.f17123a.getContext(), i10));
            sb2.append(" In MotionScene");
            SparseArray<androidx.constraintlayout.widget.c> sparseArray = this.f17130h;
            return sparseArray.get(sparseArray.keyAt(0));
        }
        return this.f17130h.get(i10);
    }

    public int[] l() {
        int size = this.f17130h.size();
        int[] iArr = new int[size];
        for (int i10 = 0; i10 < size; i10++) {
            iArr[i10] = this.f17130h.keyAt(i10);
        }
        return iArr;
    }

    public ArrayList<b> m() {
        return this.f17127e;
    }

    public int n() {
        b bVar = this.f17125c;
        if (bVar != null) {
            return bVar.f17153h;
        }
        return this.f17134l;
    }

    public int o() {
        b bVar = this.f17125c;
        if (bVar == null) {
            return -1;
        }
        return bVar.f17148c;
    }

    public final int p(Context context, String str) {
        int i10;
        if (str.contains("/")) {
            i10 = context.getResources().getIdentifier(str.substring(str.indexOf(47) + 1), "id", context.getPackageName());
            if (this.f17133k) {
                System.out.println("id getMap res = " + i10);
            }
        } else {
            i10 = -1;
        }
        return (i10 != -1 || str.length() <= 1) ? i10 : Integer.parseInt(str.substring(1));
    }

    public Interpolator q() {
        int i10 = this.f17125c.f17150e;
        if (i10 == -2) {
            return AnimationUtils.loadInterpolator(this.f17123a.getContext(), this.f17125c.f17152g);
        }
        if (i10 == -1) {
            return new a(u.c.c(this.f17125c.f17151f));
        }
        if (i10 == 0) {
            return new AccelerateDecelerateInterpolator();
        }
        if (i10 == 1) {
            return new AccelerateInterpolator();
        }
        if (i10 == 2) {
            return new DecelerateInterpolator();
        }
        if (i10 == 4) {
            return new BounceInterpolator();
        }
        if (i10 == 5) {
            return new OvershootInterpolator();
        }
        if (i10 != 6) {
            return null;
        }
        return new AnticipateInterpolator();
    }

    public float r() {
        b bVar = this.f17125c;
        return (bVar == null || bVar.f17157l == null) ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : this.f17125c.f17157l.g();
    }

    public float s() {
        b bVar = this.f17125c;
        return (bVar == null || bVar.f17157l == null) ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : this.f17125c.f17157l.h();
    }

    public boolean t() {
        b bVar = this.f17125c;
        if (bVar == null || bVar.f17157l == null) {
            return false;
        }
        return this.f17125c.f17157l.i();
    }

    public float u(float f10, float f11) {
        b bVar = this.f17125c;
        return (bVar == null || bVar.f17157l == null) ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : this.f17125c.f17157l.j(f10, f11);
    }

    public final int v(int i10) {
        int c10;
        a0.f fVar = this.f17124b;
        return (fVar == null || (c10 = fVar.c(i10, -1, -1)) == -1) ? i10 : c10;
    }

    public int w() {
        b bVar = this.f17125c;
        if (bVar == null || bVar.f17157l == null) {
            return 0;
        }
        return this.f17125c.f17157l.k();
    }

    public float x() {
        b bVar = this.f17125c;
        return (bVar == null || bVar.f17157l == null) ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : this.f17125c.f17157l.l();
    }

    public float y() {
        b bVar = this.f17125c;
        return (bVar == null || bVar.f17157l == null) ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : this.f17125c.f17157l.m();
    }

    public float z() {
        b bVar = this.f17125c;
        return (bVar == null || bVar.f17157l == null) ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : this.f17125c.f17157l.n();
    }

    /* compiled from: MotionScene.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public int f17146a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f17147b;

        /* renamed from: c, reason: collision with root package name */
        public int f17148c;

        /* renamed from: d, reason: collision with root package name */
        public int f17149d;

        /* renamed from: e, reason: collision with root package name */
        public int f17150e;

        /* renamed from: f, reason: collision with root package name */
        public String f17151f;

        /* renamed from: g, reason: collision with root package name */
        public int f17152g;

        /* renamed from: h, reason: collision with root package name */
        public int f17153h;

        /* renamed from: i, reason: collision with root package name */
        public float f17154i;

        /* renamed from: j, reason: collision with root package name */
        public final r f17155j;

        /* renamed from: k, reason: collision with root package name */
        public ArrayList<g> f17156k;

        /* renamed from: l, reason: collision with root package name */
        public s f17157l;

        /* renamed from: m, reason: collision with root package name */
        public ArrayList<a> f17158m;

        /* renamed from: n, reason: collision with root package name */
        public int f17159n;

        /* renamed from: o, reason: collision with root package name */
        public boolean f17160o;

        /* renamed from: p, reason: collision with root package name */
        public int f17161p;

        /* renamed from: q, reason: collision with root package name */
        public int f17162q;

        /* renamed from: r, reason: collision with root package name */
        public int f17163r;

        /* compiled from: MotionScene.java */
        /* loaded from: classes.dex */
        public static class a implements View.OnClickListener {

            /* renamed from: f, reason: collision with root package name */
            public final b f17164f;

            /* renamed from: g, reason: collision with root package name */
            public int f17165g;

            /* renamed from: h, reason: collision with root package name */
            public int f17166h;

            public a(Context context, b bVar, XmlPullParser xmlPullParser) {
                this.f17165g = -1;
                this.f17166h = 17;
                this.f17164f = bVar;
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), a0.d.f171m8);
                int indexCount = obtainStyledAttributes.getIndexCount();
                for (int i10 = 0; i10 < indexCount; i10++) {
                    int index = obtainStyledAttributes.getIndex(i10);
                    if (index == a0.d.f193o8) {
                        this.f17165g = obtainStyledAttributes.getResourceId(index, this.f17165g);
                    } else if (index == a0.d.f182n8) {
                        this.f17166h = obtainStyledAttributes.getInt(index, this.f17166h);
                    }
                }
                obtainStyledAttributes.recycle();
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r7v3, types: [android.view.View] */
            public void a(p pVar, int i10, b bVar) {
                int i11 = this.f17165g;
                p pVar2 = pVar;
                if (i11 != -1) {
                    pVar2 = pVar.findViewById(i11);
                }
                if (pVar2 != null) {
                    int i12 = bVar.f17149d;
                    int i13 = bVar.f17148c;
                    if (i12 == -1) {
                        pVar2.setOnClickListener(this);
                        return;
                    }
                    int i14 = this.f17166h;
                    boolean z10 = false;
                    boolean z11 = ((i14 & 1) != 0 && i10 == i12) | ((i14 & 1) != 0 && i10 == i12) | ((i14 & 256) != 0 && i10 == i12) | ((i14 & 16) != 0 && i10 == i13);
                    if ((i14 & RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT) != 0 && i10 == i13) {
                        z10 = true;
                    }
                    if (z11 || z10) {
                        pVar2.setOnClickListener(this);
                        return;
                    }
                    return;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("OnClick could not find id ");
                sb2.append(this.f17165g);
            }

            public boolean b(b bVar, p pVar) {
                b bVar2 = this.f17164f;
                if (bVar2 == bVar) {
                    return true;
                }
                int i10 = bVar2.f17148c;
                int i11 = this.f17164f.f17149d;
                if (i11 == -1) {
                    return pVar.f17031k != i10;
                }
                int i12 = pVar.f17031k;
                return i12 == i11 || i12 == i10;
            }

            public void c(p pVar) {
                int i10 = this.f17165g;
                if (i10 == -1) {
                    return;
                }
                View findViewById = pVar.findViewById(i10);
                if (findViewById == null) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(" (*)  could not find id ");
                    sb2.append(this.f17165g);
                    return;
                }
                findViewById.setOnClickListener(null);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                p pVar = this.f17164f.f17155j.f17123a;
                if (pVar.q()) {
                    if (this.f17164f.f17149d != -1) {
                        b bVar = this.f17164f.f17155j.f17125c;
                        int i10 = this.f17166h;
                        boolean z10 = false;
                        boolean z11 = ((i10 & 1) == 0 && (i10 & 256) == 0) ? false : true;
                        boolean z12 = ((i10 & 16) == 0 && (i10 & RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT) == 0) ? false : true;
                        if (z11 && z12) {
                            b bVar2 = this.f17164f.f17155j.f17125c;
                            b bVar3 = this.f17164f;
                            if (bVar2 != bVar3) {
                                pVar.setTransition(bVar3);
                            }
                            if (pVar.getCurrentState() != pVar.getEndState() && pVar.getProgress() <= 0.5f) {
                                z10 = z11;
                                z12 = false;
                            }
                        } else {
                            z10 = z11;
                        }
                        if (b(bVar, pVar)) {
                            if (z10 && (this.f17166h & 1) != 0) {
                                pVar.setTransition(this.f17164f);
                                pVar.y();
                                return;
                            }
                            if (z12 && (this.f17166h & 16) != 0) {
                                pVar.setTransition(this.f17164f);
                                pVar.A();
                                return;
                            } else if (z10 && (this.f17166h & 256) != 0) {
                                pVar.setTransition(this.f17164f);
                                pVar.setProgress(1.0f);
                                return;
                            } else {
                                if (!z12 || (this.f17166h & RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT) == 0) {
                                    return;
                                }
                                pVar.setTransition(this.f17164f);
                                pVar.setProgress(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                                return;
                            }
                        }
                        return;
                    }
                    int currentState = pVar.getCurrentState();
                    if (currentState == -1) {
                        pVar.B(this.f17164f.f17148c);
                        return;
                    }
                    b bVar4 = new b(this.f17164f.f17155j, this.f17164f);
                    bVar4.f17149d = currentState;
                    bVar4.f17148c = this.f17164f.f17148c;
                    pVar.setTransition(bVar4);
                    pVar.y();
                }
            }
        }

        public b(r rVar, b bVar) {
            this.f17146a = -1;
            this.f17147b = false;
            this.f17148c = -1;
            this.f17149d = -1;
            this.f17150e = 0;
            this.f17151f = null;
            this.f17152g = -1;
            this.f17153h = HttpStatus.SC_BAD_REQUEST;
            this.f17154i = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f17156k = new ArrayList<>();
            this.f17157l = null;
            this.f17158m = new ArrayList<>();
            this.f17159n = 0;
            this.f17160o = false;
            this.f17161p = -1;
            this.f17162q = 0;
            this.f17163r = 0;
            this.f17155j = rVar;
            this.f17153h = rVar.f17134l;
            if (bVar != null) {
                this.f17161p = bVar.f17161p;
                this.f17150e = bVar.f17150e;
                this.f17151f = bVar.f17151f;
                this.f17152g = bVar.f17152g;
                this.f17153h = bVar.f17153h;
                this.f17156k = bVar.f17156k;
                this.f17154i = bVar.f17154i;
                this.f17162q = bVar.f17162q;
            }
        }

        public boolean A() {
            return !this.f17160o;
        }

        public boolean B(int i10) {
            return (i10 & this.f17163r) != 0;
        }

        public void C(int i10) {
            this.f17153h = Math.max(i10, 8);
        }

        public void D(int i10, String str, int i11) {
            this.f17150e = i10;
            this.f17151f = str;
            this.f17152g = i11;
        }

        public void E(int i10) {
            this.f17161p = i10;
        }

        public void r(g gVar) {
            this.f17156k.add(gVar);
        }

        public void s(Context context, XmlPullParser xmlPullParser) {
            this.f17158m.add(new a(context, this, xmlPullParser));
        }

        public final void t(r rVar, Context context, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArray.getIndex(i10);
                if (index == a0.d.f260u9) {
                    this.f17148c = typedArray.getResourceId(index, -1);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f17148c);
                    if ("layout".equals(resourceTypeName)) {
                        androidx.constraintlayout.widget.c cVar = new androidx.constraintlayout.widget.c();
                        cVar.v(context, this.f17148c);
                        rVar.f17130h.append(this.f17148c, cVar);
                    } else if ("xml".equals(resourceTypeName)) {
                        this.f17148c = rVar.I(context, this.f17148c);
                    }
                } else if (index == a0.d.f271v9) {
                    this.f17149d = typedArray.getResourceId(index, this.f17149d);
                    String resourceTypeName2 = context.getResources().getResourceTypeName(this.f17149d);
                    if ("layout".equals(resourceTypeName2)) {
                        androidx.constraintlayout.widget.c cVar2 = new androidx.constraintlayout.widget.c();
                        cVar2.v(context, this.f17149d);
                        rVar.f17130h.append(this.f17149d, cVar2);
                    } else if ("xml".equals(resourceTypeName2)) {
                        this.f17149d = rVar.I(context, this.f17149d);
                    }
                } else if (index == a0.d.f304y9) {
                    int i11 = typedArray.peekValue(index).type;
                    if (i11 == 1) {
                        int resourceId = typedArray.getResourceId(index, -1);
                        this.f17152g = resourceId;
                        if (resourceId != -1) {
                            this.f17150e = -2;
                        }
                    } else if (i11 == 3) {
                        String string = typedArray.getString(index);
                        this.f17151f = string;
                        if (string != null) {
                            if (string.indexOf("/") > 0) {
                                this.f17152g = typedArray.getResourceId(index, -1);
                                this.f17150e = -2;
                            } else {
                                this.f17150e = -1;
                            }
                        }
                    } else {
                        this.f17150e = typedArray.getInteger(index, this.f17150e);
                    }
                } else if (index == a0.d.f282w9) {
                    int i12 = typedArray.getInt(index, this.f17153h);
                    this.f17153h = i12;
                    if (i12 < 8) {
                        this.f17153h = 8;
                    }
                } else if (index == a0.d.A9) {
                    this.f17154i = typedArray.getFloat(index, this.f17154i);
                } else if (index == a0.d.f249t9) {
                    this.f17159n = typedArray.getInteger(index, this.f17159n);
                } else if (index == a0.d.f238s9) {
                    this.f17146a = typedArray.getResourceId(index, this.f17146a);
                } else if (index == a0.d.B9) {
                    this.f17160o = typedArray.getBoolean(index, this.f17160o);
                } else if (index == a0.d.f315z9) {
                    this.f17161p = typedArray.getInteger(index, -1);
                } else if (index == a0.d.f293x9) {
                    this.f17162q = typedArray.getInteger(index, 0);
                } else if (index == a0.d.C9) {
                    this.f17163r = typedArray.getInteger(index, 0);
                }
            }
            if (this.f17149d == -1) {
                this.f17147b = true;
            }
        }

        public final void u(r rVar, Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a0.d.f227r9);
            t(rVar, context, obtainStyledAttributes);
            obtainStyledAttributes.recycle();
        }

        public int v() {
            return this.f17159n;
        }

        public int w() {
            return this.f17148c;
        }

        public int x() {
            return this.f17162q;
        }

        public int y() {
            return this.f17149d;
        }

        public s z() {
            return this.f17157l;
        }

        public b(int i10, r rVar, int i11, int i12) {
            this.f17146a = -1;
            this.f17147b = false;
            this.f17148c = -1;
            this.f17149d = -1;
            this.f17150e = 0;
            this.f17151f = null;
            this.f17152g = -1;
            this.f17153h = HttpStatus.SC_BAD_REQUEST;
            this.f17154i = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f17156k = new ArrayList<>();
            this.f17157l = null;
            this.f17158m = new ArrayList<>();
            this.f17159n = 0;
            this.f17160o = false;
            this.f17161p = -1;
            this.f17162q = 0;
            this.f17163r = 0;
            this.f17146a = i10;
            this.f17155j = rVar;
            this.f17149d = i11;
            this.f17148c = i12;
            this.f17153h = rVar.f17134l;
            this.f17162q = rVar.f17135m;
        }

        public b(r rVar, Context context, XmlPullParser xmlPullParser) {
            this.f17146a = -1;
            this.f17147b = false;
            this.f17148c = -1;
            this.f17149d = -1;
            this.f17150e = 0;
            this.f17151f = null;
            this.f17152g = -1;
            this.f17153h = HttpStatus.SC_BAD_REQUEST;
            this.f17154i = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f17156k = new ArrayList<>();
            this.f17157l = null;
            this.f17158m = new ArrayList<>();
            this.f17159n = 0;
            this.f17160o = false;
            this.f17161p = -1;
            this.f17162q = 0;
            this.f17163r = 0;
            this.f17153h = rVar.f17134l;
            this.f17162q = rVar.f17135m;
            this.f17155j = rVar;
            u(rVar, context, Xml.asAttributeSet(xmlPullParser));
        }
    }
}
