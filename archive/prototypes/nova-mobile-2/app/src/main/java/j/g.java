package j;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.widget.d0;
import androidx.appcompat.widget.v0;
import androidx.recyclerview.widget.RecyclerView;
import d.j;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import okhttp3.internal.http2.Settings;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import q0.l;

/* compiled from: SupportMenuInflater.java */
/* loaded from: classes.dex */
public class g extends MenuInflater {

    /* renamed from: e, reason: collision with root package name */
    public static final Class<?>[] f8007e;

    /* renamed from: f, reason: collision with root package name */
    public static final Class<?>[] f8008f;

    /* renamed from: a, reason: collision with root package name */
    public final Object[] f8009a;

    /* renamed from: b, reason: collision with root package name */
    public final Object[] f8010b;

    /* renamed from: c, reason: collision with root package name */
    public Context f8011c;

    /* renamed from: d, reason: collision with root package name */
    public Object f8012d;

    /* compiled from: SupportMenuInflater.java */
    /* loaded from: classes.dex */
    public static class a implements MenuItem.OnMenuItemClickListener {

        /* renamed from: h, reason: collision with root package name */
        public static final Class<?>[] f8013h = {MenuItem.class};

        /* renamed from: f, reason: collision with root package name */
        public Object f8014f;

        /* renamed from: g, reason: collision with root package name */
        public Method f8015g;

        public a(Object obj, String str) {
            this.f8014f = obj;
            Class<?> cls = obj.getClass();
            try {
                this.f8015g = cls.getMethod(str, f8013h);
            } catch (Exception e10) {
                InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str + " in class " + cls.getName());
                inflateException.initCause(e10);
                throw inflateException;
            }
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            try {
                if (this.f8015g.getReturnType() == Boolean.TYPE) {
                    return ((Boolean) this.f8015g.invoke(this.f8014f, menuItem)).booleanValue();
                }
                this.f8015g.invoke(this.f8014f, menuItem);
                return true;
            } catch (Exception e10) {
                throw new RuntimeException(e10);
            }
        }
    }

    /* compiled from: SupportMenuInflater.java */
    /* loaded from: classes.dex */
    public class b {
        public q0.b A;
        public CharSequence B;
        public CharSequence C;
        public ColorStateList D = null;
        public PorterDuff.Mode E = null;

        /* renamed from: a, reason: collision with root package name */
        public Menu f8016a;

        /* renamed from: b, reason: collision with root package name */
        public int f8017b;

        /* renamed from: c, reason: collision with root package name */
        public int f8018c;

        /* renamed from: d, reason: collision with root package name */
        public int f8019d;

        /* renamed from: e, reason: collision with root package name */
        public int f8020e;

        /* renamed from: f, reason: collision with root package name */
        public boolean f8021f;

        /* renamed from: g, reason: collision with root package name */
        public boolean f8022g;

        /* renamed from: h, reason: collision with root package name */
        public boolean f8023h;

        /* renamed from: i, reason: collision with root package name */
        public int f8024i;

        /* renamed from: j, reason: collision with root package name */
        public int f8025j;

        /* renamed from: k, reason: collision with root package name */
        public CharSequence f8026k;

        /* renamed from: l, reason: collision with root package name */
        public CharSequence f8027l;

        /* renamed from: m, reason: collision with root package name */
        public int f8028m;

        /* renamed from: n, reason: collision with root package name */
        public char f8029n;

        /* renamed from: o, reason: collision with root package name */
        public int f8030o;

        /* renamed from: p, reason: collision with root package name */
        public char f8031p;

        /* renamed from: q, reason: collision with root package name */
        public int f8032q;

        /* renamed from: r, reason: collision with root package name */
        public int f8033r;

        /* renamed from: s, reason: collision with root package name */
        public boolean f8034s;

        /* renamed from: t, reason: collision with root package name */
        public boolean f8035t;

        /* renamed from: u, reason: collision with root package name */
        public boolean f8036u;

        /* renamed from: v, reason: collision with root package name */
        public int f8037v;

        /* renamed from: w, reason: collision with root package name */
        public int f8038w;

        /* renamed from: x, reason: collision with root package name */
        public String f8039x;

        /* renamed from: y, reason: collision with root package name */
        public String f8040y;

        /* renamed from: z, reason: collision with root package name */
        public String f8041z;

        public b(Menu menu) {
            this.f8016a = menu;
            h();
        }

        public void a() {
            this.f8023h = true;
            i(this.f8016a.add(this.f8017b, this.f8024i, this.f8025j, this.f8026k));
        }

        public SubMenu b() {
            this.f8023h = true;
            SubMenu addSubMenu = this.f8016a.addSubMenu(this.f8017b, this.f8024i, this.f8025j, this.f8026k);
            i(addSubMenu.getItem());
            return addSubMenu;
        }

        public final char c(String str) {
            if (str == null) {
                return (char) 0;
            }
            return str.charAt(0);
        }

        public boolean d() {
            return this.f8023h;
        }

        public final <T> T e(String str, Class<?>[] clsArr, Object[] objArr) {
            try {
                Constructor<?> constructor = Class.forName(str, false, g.this.f8011c.getClassLoader()).getConstructor(clsArr);
                constructor.setAccessible(true);
                return (T) constructor.newInstance(objArr);
            } catch (Exception unused) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Cannot instantiate class: ");
                sb2.append(str);
                return null;
            }
        }

        public void f(AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = g.this.f8011c.obtainStyledAttributes(attributeSet, j.f5438w1);
            this.f8017b = obtainStyledAttributes.getResourceId(j.f5448y1, 0);
            this.f8018c = obtainStyledAttributes.getInt(j.A1, 0);
            this.f8019d = obtainStyledAttributes.getInt(j.B1, 0);
            this.f8020e = obtainStyledAttributes.getInt(j.C1, 0);
            this.f8021f = obtainStyledAttributes.getBoolean(j.f5453z1, true);
            this.f8022g = obtainStyledAttributes.getBoolean(j.f5443x1, true);
            obtainStyledAttributes.recycle();
        }

        public void g(AttributeSet attributeSet) {
            v0 u10 = v0.u(g.this.f8011c, attributeSet, j.D1);
            this.f8024i = u10.n(j.G1, 0);
            this.f8025j = (u10.k(j.J1, this.f8018c) & (-65536)) | (u10.k(j.K1, this.f8019d) & Settings.DEFAULT_INITIAL_WINDOW_SIZE);
            this.f8026k = u10.p(j.L1);
            this.f8027l = u10.p(j.M1);
            this.f8028m = u10.n(j.E1, 0);
            this.f8029n = c(u10.o(j.N1));
            this.f8030o = u10.k(j.U1, RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT);
            this.f8031p = c(u10.o(j.O1));
            this.f8032q = u10.k(j.Y1, RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT);
            int i10 = j.P1;
            if (u10.s(i10)) {
                this.f8033r = u10.a(i10, false) ? 1 : 0;
            } else {
                this.f8033r = this.f8020e;
            }
            this.f8034s = u10.a(j.H1, false);
            this.f8035t = u10.a(j.I1, this.f8021f);
            this.f8036u = u10.a(j.F1, this.f8022g);
            this.f8037v = u10.k(j.Z1, -1);
            this.f8041z = u10.o(j.Q1);
            this.f8038w = u10.n(j.R1, 0);
            this.f8039x = u10.o(j.T1);
            String o10 = u10.o(j.S1);
            this.f8040y = o10;
            if ((o10 != null) && this.f8038w == 0 && this.f8039x == null) {
                this.A = (q0.b) e(o10, g.f8008f, g.this.f8010b);
            } else {
                this.A = null;
            }
            this.B = u10.p(j.V1);
            this.C = u10.p(j.f5327a2);
            int i11 = j.X1;
            if (u10.s(i11)) {
                this.E = d0.e(u10.k(i11, -1), this.E);
            } else {
                this.E = null;
            }
            int i12 = j.W1;
            if (u10.s(i12)) {
                this.D = u10.c(i12);
            } else {
                this.D = null;
            }
            u10.w();
            this.f8023h = false;
        }

        public void h() {
            this.f8017b = 0;
            this.f8018c = 0;
            this.f8019d = 0;
            this.f8020e = 0;
            this.f8021f = true;
            this.f8022g = true;
        }

        public final void i(MenuItem menuItem) {
            boolean z10 = false;
            menuItem.setChecked(this.f8034s).setVisible(this.f8035t).setEnabled(this.f8036u).setCheckable(this.f8033r >= 1).setTitleCondensed(this.f8027l).setIcon(this.f8028m);
            int i10 = this.f8037v;
            if (i10 >= 0) {
                menuItem.setShowAsAction(i10);
            }
            if (this.f8041z != null) {
                if (!g.this.f8011c.isRestricted()) {
                    menuItem.setOnMenuItemClickListener(new a(g.this.b(), this.f8041z));
                } else {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
            }
            if (this.f8033r >= 2) {
                if (menuItem instanceof androidx.appcompat.view.menu.g) {
                    ((androidx.appcompat.view.menu.g) menuItem).t(true);
                } else if (menuItem instanceof k.c) {
                    ((k.c) menuItem).h(true);
                }
            }
            String str = this.f8039x;
            if (str != null) {
                menuItem.setActionView((View) e(str, g.f8007e, g.this.f8009a));
                z10 = true;
            }
            int i11 = this.f8038w;
            if (i11 > 0 && !z10) {
                menuItem.setActionView(i11);
            }
            q0.b bVar = this.A;
            if (bVar != null) {
                l.a(menuItem, bVar);
            }
            l.c(menuItem, this.B);
            l.g(menuItem, this.C);
            l.b(menuItem, this.f8029n, this.f8030o);
            l.f(menuItem, this.f8031p, this.f8032q);
            PorterDuff.Mode mode = this.E;
            if (mode != null) {
                l.e(menuItem, mode);
            }
            ColorStateList colorStateList = this.D;
            if (colorStateList != null) {
                l.d(menuItem, colorStateList);
            }
        }
    }

    static {
        Class<?>[] clsArr = {Context.class};
        f8007e = clsArr;
        f8008f = clsArr;
    }

    public g(Context context) {
        super(context);
        this.f8011c = context;
        Object[] objArr = {context};
        this.f8009a = objArr;
        this.f8010b = objArr;
    }

    public final Object a(Object obj) {
        return (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) ? a(((ContextWrapper) obj).getBaseContext()) : obj;
    }

    public Object b() {
        if (this.f8012d == null) {
            this.f8012d = a(this.f8011c);
        }
        return this.f8012d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0048, code lost:
    
        if (r15 == 2) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x004b, code lost:
    
        if (r15 == 3) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x004f, code lost:
    
        r15 = r13.getName();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0053, code lost:
    
        if (r7 == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0059, code lost:
    
        if (r15.equals(r8) == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x005b, code lost:
    
        r8 = null;
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00b9, code lost:
    
        r15 = r13.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0062, code lost:
    
        if (r15.equals("group") == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0064, code lost:
    
        r0.h();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x006c, code lost:
    
        if (r15.equals("item") == false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0072, code lost:
    
        if (r0.d() != false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0074, code lost:
    
        r15 = r0.A;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0076, code lost:
    
        if (r15 == null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x007c, code lost:
    
        if (r15.b() == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x007e, code lost:
    
        r0.b();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0082, code lost:
    
        r0.a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x008a, code lost:
    
        if (r15.equals("menu") == false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x008c, code lost:
    
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x008e, code lost:
    
        if (r7 == false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0091, code lost:
    
        r15 = r13.getName();
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0099, code lost:
    
        if (r15.equals("group") == false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x009b, code lost:
    
        r0.f(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00a3, code lost:
    
        if (r15.equals("item") == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00a5, code lost:
    
        r0.g(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00ad, code lost:
    
        if (r15.equals("menu") == false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00af, code lost:
    
        c(r13, r14, r0.b());
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00b7, code lost:
    
        r8 = r15;
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00c5, code lost:
    
        throw new java.lang.RuntimeException("Unexpected end of document");
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00c6, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x003b, code lost:
    
        r8 = null;
        r6 = false;
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0040, code lost:
    
        if (r6 != false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0042, code lost:
    
        if (r15 == 1) goto L61;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) throws XmlPullParserException, IOException {
        b bVar = new b(menu);
        int eventType = xmlPullParser.getEventType();
        while (true) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if (name.equals("menu")) {
                    eventType = xmlPullParser.next();
                } else {
                    throw new RuntimeException("Expecting menu, got " + name);
                }
            } else {
                eventType = xmlPullParser.next();
                if (eventType == 1) {
                    break;
                }
            }
        }
    }

    @Override // android.view.MenuInflater
    public void inflate(int i10, Menu menu) {
        if (!(menu instanceof j0.a)) {
            super.inflate(i10, menu);
            return;
        }
        XmlResourceParser xmlResourceParser = null;
        try {
            try {
                try {
                    xmlResourceParser = this.f8011c.getResources().getLayout(i10);
                    c(xmlResourceParser, Xml.asAttributeSet(xmlResourceParser), menu);
                } catch (XmlPullParserException e10) {
                    throw new InflateException("Error inflating menu XML", e10);
                }
            } catch (IOException e11) {
                throw new InflateException("Error inflating menu XML", e11);
            }
        } finally {
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
        }
    }
}
