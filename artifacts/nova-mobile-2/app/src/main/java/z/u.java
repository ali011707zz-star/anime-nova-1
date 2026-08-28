package z;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.Xml;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.c;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import z.r;

/* compiled from: ViewTransition.java */
/* loaded from: classes.dex */
public class u {

    /* renamed from: a, reason: collision with root package name */
    public int f17197a;

    /* renamed from: e, reason: collision with root package name */
    public int f17201e;

    /* renamed from: f, reason: collision with root package name */
    public g f17202f;

    /* renamed from: g, reason: collision with root package name */
    public c.a f17203g;

    /* renamed from: j, reason: collision with root package name */
    public int f17206j;

    /* renamed from: k, reason: collision with root package name */
    public String f17207k;

    /* renamed from: o, reason: collision with root package name */
    public Context f17211o;

    /* renamed from: b, reason: collision with root package name */
    public int f17198b = -1;

    /* renamed from: c, reason: collision with root package name */
    public boolean f17199c = false;

    /* renamed from: d, reason: collision with root package name */
    public int f17200d = 0;

    /* renamed from: h, reason: collision with root package name */
    public int f17204h = -1;

    /* renamed from: i, reason: collision with root package name */
    public int f17205i = -1;

    /* renamed from: l, reason: collision with root package name */
    public int f17208l = 0;

    /* renamed from: m, reason: collision with root package name */
    public String f17209m = null;

    /* renamed from: n, reason: collision with root package name */
    public int f17210n = -1;

    /* renamed from: p, reason: collision with root package name */
    public int f17212p = -1;

    /* renamed from: q, reason: collision with root package name */
    public int f17213q = -1;

    /* renamed from: r, reason: collision with root package name */
    public int f17214r = -1;

    /* renamed from: s, reason: collision with root package name */
    public int f17215s = -1;

    /* renamed from: t, reason: collision with root package name */
    public int f17216t = -1;

    /* renamed from: u, reason: collision with root package name */
    public int f17217u = -1;

    /* renamed from: v, reason: collision with root package name */
    public int f17218v = -1;

    /* compiled from: ViewTransition.java */
    /* loaded from: classes.dex */
    public class a implements Interpolator {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ u.c f17219a;

        public a(u.c cVar) {
            this.f17219a = cVar;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f10) {
            return (float) this.f17219a.a(f10);
        }
    }

    /* compiled from: ViewTransition.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public final int f17221a;

        /* renamed from: b, reason: collision with root package name */
        public final int f17222b;

        /* renamed from: c, reason: collision with root package name */
        public long f17223c;

        /* renamed from: d, reason: collision with root package name */
        public m f17224d;

        /* renamed from: e, reason: collision with root package name */
        public int f17225e;

        /* renamed from: f, reason: collision with root package name */
        public int f17226f;

        /* renamed from: h, reason: collision with root package name */
        public v f17228h;

        /* renamed from: i, reason: collision with root package name */
        public Interpolator f17229i;

        /* renamed from: k, reason: collision with root package name */
        public float f17231k;

        /* renamed from: l, reason: collision with root package name */
        public float f17232l;

        /* renamed from: m, reason: collision with root package name */
        public long f17233m;

        /* renamed from: o, reason: collision with root package name */
        public boolean f17235o;

        /* renamed from: g, reason: collision with root package name */
        public u.d f17227g = new u.d();

        /* renamed from: j, reason: collision with root package name */
        public boolean f17230j = false;

        /* renamed from: n, reason: collision with root package name */
        public Rect f17234n = new Rect();

        public b(v vVar, m mVar, int i10, int i11, int i12, Interpolator interpolator, int i13, int i14) {
            this.f17235o = false;
            this.f17228h = vVar;
            this.f17224d = mVar;
            this.f17225e = i10;
            this.f17226f = i11;
            long nanoTime = System.nanoTime();
            this.f17223c = nanoTime;
            this.f17233m = nanoTime;
            this.f17228h.b(this);
            this.f17229i = interpolator;
            this.f17221a = i13;
            this.f17222b = i14;
            if (i12 == 3) {
                this.f17235o = true;
            }
            this.f17232l = i10 == 0 ? Float.MAX_VALUE : 1.0f / i10;
            a();
        }

        public void a() {
            if (this.f17230j) {
                c();
            } else {
                b();
            }
        }

        public void b() {
            long nanoTime = System.nanoTime();
            long j10 = nanoTime - this.f17233m;
            this.f17233m = nanoTime;
            float f10 = this.f17231k;
            double d10 = j10;
            Double.isNaN(d10);
            float f11 = f10 + (((float) (d10 * 1.0E-6d)) * this.f17232l);
            this.f17231k = f11;
            if (f11 >= 1.0f) {
                this.f17231k = 1.0f;
            }
            Interpolator interpolator = this.f17229i;
            float interpolation = interpolator == null ? this.f17231k : interpolator.getInterpolation(this.f17231k);
            m mVar = this.f17224d;
            boolean q10 = mVar.q(mVar.f16986b, interpolation, nanoTime, this.f17227g);
            if (this.f17231k >= 1.0f) {
                if (this.f17221a != -1) {
                    this.f17224d.o().setTag(this.f17221a, Long.valueOf(System.nanoTime()));
                }
                if (this.f17222b != -1) {
                    this.f17224d.o().setTag(this.f17222b, null);
                }
                if (!this.f17235o) {
                    this.f17228h.f(this);
                }
            }
            if (this.f17231k < 1.0f || q10) {
                this.f17228h.d();
            }
        }

        public void c() {
            long nanoTime = System.nanoTime();
            long j10 = nanoTime - this.f17233m;
            this.f17233m = nanoTime;
            float f10 = this.f17231k;
            double d10 = j10;
            Double.isNaN(d10);
            float f11 = f10 - (((float) (d10 * 1.0E-6d)) * this.f17232l);
            this.f17231k = f11;
            if (f11 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                this.f17231k = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            }
            Interpolator interpolator = this.f17229i;
            float interpolation = interpolator == null ? this.f17231k : interpolator.getInterpolation(this.f17231k);
            m mVar = this.f17224d;
            boolean q10 = mVar.q(mVar.f16986b, interpolation, nanoTime, this.f17227g);
            if (this.f17231k <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                if (this.f17221a != -1) {
                    this.f17224d.o().setTag(this.f17221a, Long.valueOf(System.nanoTime()));
                }
                if (this.f17222b != -1) {
                    this.f17224d.o().setTag(this.f17222b, null);
                }
                this.f17228h.f(this);
            }
            if (this.f17231k > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD || q10) {
                this.f17228h.d();
            }
        }

        public void d(int i10, float f10, float f11) {
            if (i10 == 1) {
                if (this.f17230j) {
                    return;
                }
                e(true);
            } else {
                if (i10 != 2) {
                    return;
                }
                this.f17224d.o().getHitRect(this.f17234n);
                if (this.f17234n.contains((int) f10, (int) f11) || this.f17230j) {
                    return;
                }
                e(true);
            }
        }

        public void e(boolean z10) {
            int i10;
            this.f17230j = z10;
            if (z10 && (i10 = this.f17226f) != -1) {
                this.f17232l = i10 == 0 ? Float.MAX_VALUE : 1.0f / i10;
            }
            this.f17228h.d();
            this.f17233m = System.nanoTime();
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:19:0x004b. Please report as an issue. */
    public u(Context context, XmlPullParser xmlPullParser) {
        char c10;
        this.f17211o = context;
        try {
            int eventType = xmlPullParser.getEventType();
            while (eventType != 1) {
                if (eventType == 2) {
                    String name = xmlPullParser.getName();
                    switch (name.hashCode()) {
                        case -1962203927:
                            if (name.equals("ConstraintOverride")) {
                                c10 = 2;
                                break;
                            }
                            c10 = 65535;
                            break;
                        case -1239391468:
                            if (name.equals("KeyFrameSet")) {
                                c10 = 1;
                                break;
                            }
                            c10 = 65535;
                            break;
                        case 61998586:
                            if (name.equals("ViewTransition")) {
                                c10 = 0;
                                break;
                            }
                            c10 = 65535;
                            break;
                        case 366511058:
                            if (name.equals("CustomMethod")) {
                                c10 = 4;
                                break;
                            }
                            c10 = 65535;
                            break;
                        case 1791837707:
                            if (name.equals("CustomAttribute")) {
                                c10 = 3;
                                break;
                            }
                            c10 = 65535;
                            break;
                        default:
                            c10 = 65535;
                            break;
                    }
                    if (c10 == 0) {
                        l(context, xmlPullParser);
                    } else if (c10 == 1) {
                        this.f17202f = new g(context, xmlPullParser);
                    } else if (c10 == 2) {
                        this.f17203g = androidx.constraintlayout.widget.c.k(context, xmlPullParser);
                    } else if (c10 != 3 && c10 != 4) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(z.a.a());
                        sb2.append(" unknown tag ");
                        sb2.append(name);
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(".xml:");
                        sb3.append(xmlPullParser.getLineNumber());
                    } else {
                        androidx.constraintlayout.widget.a.h(context, xmlPullParser, this.f17203g.f1709g);
                    }
                } else if (eventType != 3) {
                    continue;
                } else if ("ViewTransition".equals(xmlPullParser.getName())) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(View[] viewArr) {
        if (this.f17212p != -1) {
            for (View view : viewArr) {
                view.setTag(this.f17212p, Long.valueOf(System.nanoTime()));
            }
        }
        if (this.f17213q != -1) {
            for (View view2 : viewArr) {
                view2.setTag(this.f17213q, null);
            }
        }
    }

    public void b(v vVar, p pVar, View view) {
        m mVar = new m(view);
        mVar.r(view);
        this.f17202f.a(mVar);
        mVar.t(pVar.getWidth(), pVar.getHeight(), this.f17204h, System.nanoTime());
        new b(vVar, mVar, this.f17204h, this.f17205i, this.f17198b, f(pVar.getContext()), this.f17212p, this.f17213q);
    }

    public void c(v vVar, p pVar, int i10, androidx.constraintlayout.widget.c cVar, final View... viewArr) {
        if (this.f17199c) {
            return;
        }
        int i11 = this.f17201e;
        if (i11 == 2) {
            b(vVar, pVar, viewArr[0]);
            return;
        }
        if (i11 == 1) {
            for (int i12 : pVar.getConstraintSetIds()) {
                if (i12 != i10) {
                    androidx.constraintlayout.widget.c m10 = pVar.m(i12);
                    for (View view : viewArr) {
                        c.a u10 = m10.u(view.getId());
                        c.a aVar = this.f17203g;
                        if (aVar != null) {
                            aVar.d(u10);
                            u10.f1709g.putAll(this.f17203g.f1709g);
                        }
                    }
                }
            }
        }
        androidx.constraintlayout.widget.c cVar2 = new androidx.constraintlayout.widget.c();
        cVar2.o(cVar);
        for (View view2 : viewArr) {
            c.a u11 = cVar2.u(view2.getId());
            c.a aVar2 = this.f17203g;
            if (aVar2 != null) {
                aVar2.d(u11);
                u11.f1709g.putAll(this.f17203g.f1709g);
            }
        }
        pVar.F(i10, cVar2);
        int i13 = a0.c.f25b;
        pVar.F(i13, cVar);
        pVar.setState(i13, -1, -1);
        r.b bVar = new r.b(-1, pVar.f17021f, i13, i10);
        for (View view3 : viewArr) {
            n(bVar, view3);
        }
        pVar.setTransition(bVar);
        pVar.z(new Runnable() { // from class: z.t
            @Override // java.lang.Runnable
            public final void run() {
                u.this.j(viewArr);
            }
        });
    }

    public boolean d(View view) {
        int i10 = this.f17214r;
        boolean z10 = i10 == -1 || view.getTag(i10) != null;
        int i11 = this.f17215s;
        return z10 && (i11 == -1 || view.getTag(i11) == null);
    }

    public int e() {
        return this.f17197a;
    }

    public Interpolator f(Context context) {
        int i10 = this.f17208l;
        if (i10 == -2) {
            return AnimationUtils.loadInterpolator(context, this.f17210n);
        }
        if (i10 == -1) {
            return new a(u.c.c(this.f17209m));
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

    public int g() {
        return this.f17216t;
    }

    public int h() {
        return this.f17217u;
    }

    public int i() {
        return this.f17198b;
    }

    public boolean k(View view) {
        String str;
        if (view == null) {
            return false;
        }
        if ((this.f17206j == -1 && this.f17207k == null) || !d(view)) {
            return false;
        }
        if (view.getId() == this.f17206j) {
            return true;
        }
        return this.f17207k != null && (view.getLayoutParams() instanceof ConstraintLayout.b) && (str = ((ConstraintLayout.b) view.getLayoutParams()).f1612b0) != null && str.matches(this.f17207k);
    }

    public final void l(Context context, XmlPullParser xmlPullParser) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), a0.d.M9);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = obtainStyledAttributes.getIndex(i10);
            if (index == a0.d.N9) {
                this.f17197a = obtainStyledAttributes.getResourceId(index, this.f17197a);
            } else if (index == a0.d.V9) {
                if (p.f17015z0) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, this.f17206j);
                    this.f17206j = resourceId;
                    if (resourceId == -1) {
                        this.f17207k = obtainStyledAttributes.getString(index);
                    }
                } else if (obtainStyledAttributes.peekValue(index).type == 3) {
                    this.f17207k = obtainStyledAttributes.getString(index);
                } else {
                    this.f17206j = obtainStyledAttributes.getResourceId(index, this.f17206j);
                }
            } else if (index == a0.d.W9) {
                this.f17198b = obtainStyledAttributes.getInt(index, this.f17198b);
            } else if (index == a0.d.Z9) {
                this.f17199c = obtainStyledAttributes.getBoolean(index, this.f17199c);
            } else if (index == a0.d.X9) {
                this.f17200d = obtainStyledAttributes.getInt(index, this.f17200d);
            } else if (index == a0.d.R9) {
                this.f17204h = obtainStyledAttributes.getInt(index, this.f17204h);
            } else if (index == a0.d.f37aa) {
                this.f17205i = obtainStyledAttributes.getInt(index, this.f17205i);
            } else if (index == a0.d.f49ba) {
                this.f17201e = obtainStyledAttributes.getInt(index, this.f17201e);
            } else if (index == a0.d.U9) {
                int i11 = obtainStyledAttributes.peekValue(index).type;
                if (i11 == 1) {
                    int resourceId2 = obtainStyledAttributes.getResourceId(index, -1);
                    this.f17210n = resourceId2;
                    if (resourceId2 != -1) {
                        this.f17208l = -2;
                    }
                } else if (i11 == 3) {
                    String string = obtainStyledAttributes.getString(index);
                    this.f17209m = string;
                    if (string != null && string.indexOf("/") > 0) {
                        this.f17210n = obtainStyledAttributes.getResourceId(index, -1);
                        this.f17208l = -2;
                    } else {
                        this.f17208l = -1;
                    }
                } else {
                    this.f17208l = obtainStyledAttributes.getInteger(index, this.f17208l);
                }
            } else if (index == a0.d.Y9) {
                this.f17212p = obtainStyledAttributes.getResourceId(index, this.f17212p);
            } else if (index == a0.d.Q9) {
                this.f17213q = obtainStyledAttributes.getResourceId(index, this.f17213q);
            } else if (index == a0.d.T9) {
                this.f17214r = obtainStyledAttributes.getResourceId(index, this.f17214r);
            } else if (index == a0.d.S9) {
                this.f17215s = obtainStyledAttributes.getResourceId(index, this.f17215s);
            } else if (index == a0.d.P9) {
                this.f17217u = obtainStyledAttributes.getResourceId(index, this.f17217u);
            } else if (index == a0.d.O9) {
                this.f17216t = obtainStyledAttributes.getInteger(index, this.f17216t);
            }
        }
        obtainStyledAttributes.recycle();
    }

    public boolean m(int i10) {
        int i11 = this.f17198b;
        return i11 == 1 ? i10 == 0 : i11 == 2 ? i10 == 1 : i11 == 3 && i10 == 0;
    }

    public final void n(r.b bVar, View view) {
        int i10 = this.f17204h;
        if (i10 != -1) {
            bVar.C(i10);
        }
        bVar.E(this.f17200d);
        bVar.D(this.f17208l, this.f17209m, this.f17210n);
        int id2 = view.getId();
        g gVar = this.f17202f;
        if (gVar != null) {
            ArrayList<d> c10 = gVar.c(-1);
            g gVar2 = new g();
            Iterator<d> it2 = c10.iterator();
            while (it2.hasNext()) {
                gVar2.b(it2.next().clone().g(id2));
            }
            bVar.r(gVar2);
        }
    }

    public String toString() {
        return "ViewTransition(" + z.a.b(this.f17211o, this.f17197a) + ")";
    }
}
