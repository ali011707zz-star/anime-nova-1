package x1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.Map;

/* compiled from: ChangeBounds.java */
/* loaded from: classes.dex */
public class c extends o {

    /* renamed from: i, reason: collision with root package name */
    public static final String[] f15685i = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};

    /* renamed from: j, reason: collision with root package name */
    public static final Property<Drawable, PointF> f15686j = new b(PointF.class, "boundsOrigin");

    /* renamed from: k, reason: collision with root package name */
    public static final Property<k, PointF> f15687k = new C0407c(PointF.class, "topLeft");

    /* renamed from: l, reason: collision with root package name */
    public static final Property<k, PointF> f15688l = new d(PointF.class, "bottomRight");

    /* renamed from: m, reason: collision with root package name */
    public static final Property<View, PointF> f15689m = new e(PointF.class, "bottomRight");

    /* renamed from: n, reason: collision with root package name */
    public static final Property<View, PointF> f15690n = new f(PointF.class, "topLeft");

    /* renamed from: o, reason: collision with root package name */
    public static final Property<View, PointF> f15691o = new g(PointF.class, "position");

    /* renamed from: p, reason: collision with root package name */
    public static l f15692p = new l();

    /* renamed from: f, reason: collision with root package name */
    public int[] f15693f = new int[2];

    /* renamed from: g, reason: collision with root package name */
    public boolean f15694g = false;

    /* renamed from: h, reason: collision with root package name */
    public boolean f15695h = false;

    /* compiled from: ChangeBounds.java */
    /* loaded from: classes.dex */
    public class a extends AnimatorListenerAdapter {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ViewGroup f15696a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ BitmapDrawable f15697b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ View f15698c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ float f15699d;

        public a(ViewGroup viewGroup, BitmapDrawable bitmapDrawable, View view, float f10) {
            this.f15696a = viewGroup;
            this.f15697b = bitmapDrawable;
            this.f15698c = view;
            this.f15699d = f10;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            e0.b(this.f15696a).remove(this.f15697b);
            e0.g(this.f15698c, this.f15699d);
        }
    }

    /* compiled from: ChangeBounds.java */
    /* loaded from: classes.dex */
    public static class b extends Property<Drawable, PointF> {

        /* renamed from: a, reason: collision with root package name */
        public Rect f15701a;

        public b(Class cls, String str) {
            super(cls, str);
            this.f15701a = new Rect();
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(Drawable drawable) {
            drawable.copyBounds(this.f15701a);
            Rect rect = this.f15701a;
            return new PointF(rect.left, rect.top);
        }

        @Override // android.util.Property
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(Drawable drawable, PointF pointF) {
            drawable.copyBounds(this.f15701a);
            this.f15701a.offsetTo(Math.round(pointF.x), Math.round(pointF.y));
            drawable.setBounds(this.f15701a);
        }
    }

    /* compiled from: ChangeBounds.java */
    /* renamed from: x1.c$c, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0407c extends Property<k, PointF> {
        public C0407c(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(k kVar) {
            return null;
        }

        @Override // android.util.Property
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(k kVar, PointF pointF) {
            kVar.c(pointF);
        }
    }

    /* compiled from: ChangeBounds.java */
    /* loaded from: classes.dex */
    public static class d extends Property<k, PointF> {
        public d(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(k kVar) {
            return null;
        }

        @Override // android.util.Property
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(k kVar, PointF pointF) {
            kVar.a(pointF);
        }
    }

    /* compiled from: ChangeBounds.java */
    /* loaded from: classes.dex */
    public static class e extends Property<View, PointF> {
        public e(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, PointF pointF) {
            e0.f(view, view.getLeft(), view.getTop(), Math.round(pointF.x), Math.round(pointF.y));
        }
    }

    /* compiled from: ChangeBounds.java */
    /* loaded from: classes.dex */
    public static class f extends Property<View, PointF> {
        public f(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, PointF pointF) {
            e0.f(view, Math.round(pointF.x), Math.round(pointF.y), view.getRight(), view.getBottom());
        }
    }

    /* compiled from: ChangeBounds.java */
    /* loaded from: classes.dex */
    public static class g extends Property<View, PointF> {
        public g(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, PointF pointF) {
            int round = Math.round(pointF.x);
            int round2 = Math.round(pointF.y);
            e0.f(view, round, round2, view.getWidth() + round, view.getHeight() + round2);
        }
    }

    /* compiled from: ChangeBounds.java */
    /* loaded from: classes.dex */
    public class h extends AnimatorListenerAdapter {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ k f15702a;
        private k mViewBounds;

        public h(k kVar) {
            this.f15702a = kVar;
            this.mViewBounds = kVar;
        }
    }

    /* compiled from: ChangeBounds.java */
    /* loaded from: classes.dex */
    public class i extends AnimatorListenerAdapter {

        /* renamed from: a, reason: collision with root package name */
        public boolean f15704a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ View f15705b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Rect f15706c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ int f15707d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ int f15708e;

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ int f15709f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ int f15710g;

        public i(View view, Rect rect, int i10, int i11, int i12, int i13) {
            this.f15705b = view;
            this.f15706c = rect;
            this.f15707d = i10;
            this.f15708e = i11;
            this.f15709f = i12;
            this.f15710g = i13;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f15704a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f15704a) {
                return;
            }
            q0.b0.A0(this.f15705b, this.f15706c);
            e0.f(this.f15705b, this.f15707d, this.f15708e, this.f15709f, this.f15710g);
        }
    }

    /* compiled from: ChangeBounds.java */
    /* loaded from: classes.dex */
    public class j extends p {

        /* renamed from: a, reason: collision with root package name */
        public boolean f15712a = false;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ ViewGroup f15713b;

        public j(ViewGroup viewGroup) {
            this.f15713b = viewGroup;
        }

        @Override // x1.p, x1.o.g
        public void onTransitionCancel(o oVar) {
            z.c(this.f15713b, false);
            this.f15712a = true;
        }

        @Override // x1.o.g
        public void onTransitionEnd(o oVar) {
            if (!this.f15712a) {
                z.c(this.f15713b, false);
            }
            oVar.removeListener(this);
        }

        @Override // x1.p, x1.o.g
        public void onTransitionPause(o oVar) {
            z.c(this.f15713b, false);
        }

        @Override // x1.p, x1.o.g
        public void onTransitionResume(o oVar) {
            z.c(this.f15713b, true);
        }
    }

    /* compiled from: ChangeBounds.java */
    /* loaded from: classes.dex */
    public static class k {

        /* renamed from: a, reason: collision with root package name */
        public int f15715a;

        /* renamed from: b, reason: collision with root package name */
        public int f15716b;

        /* renamed from: c, reason: collision with root package name */
        public int f15717c;

        /* renamed from: d, reason: collision with root package name */
        public int f15718d;

        /* renamed from: e, reason: collision with root package name */
        public View f15719e;

        /* renamed from: f, reason: collision with root package name */
        public int f15720f;

        /* renamed from: g, reason: collision with root package name */
        public int f15721g;

        public k(View view) {
            this.f15719e = view;
        }

        public void a(PointF pointF) {
            this.f15717c = Math.round(pointF.x);
            this.f15718d = Math.round(pointF.y);
            int i10 = this.f15721g + 1;
            this.f15721g = i10;
            if (this.f15720f == i10) {
                b();
            }
        }

        public final void b() {
            e0.f(this.f15719e, this.f15715a, this.f15716b, this.f15717c, this.f15718d);
            this.f15720f = 0;
            this.f15721g = 0;
        }

        public void c(PointF pointF) {
            this.f15715a = Math.round(pointF.x);
            this.f15716b = Math.round(pointF.y);
            int i10 = this.f15720f + 1;
            this.f15720f = i10;
            if (i10 == this.f15721g) {
                b();
            }
        }
    }

    public final boolean a(View view, View view2) {
        if (!this.f15695h) {
            return true;
        }
        u matchedTransitionValues = getMatchedTransitionValues(view, true);
        if (matchedTransitionValues == null) {
            if (view == view2) {
                return true;
            }
        } else if (view2 == matchedTransitionValues.f15825b) {
            return true;
        }
        return false;
    }

    @Override // x1.o
    public void captureEndValues(u uVar) {
        captureValues(uVar);
    }

    @Override // x1.o
    public void captureStartValues(u uVar) {
        captureValues(uVar);
    }

    public final void captureValues(u uVar) {
        View view = uVar.f15825b;
        if (!q0.b0.X(view) && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        uVar.f15824a.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        uVar.f15824a.put("android:changeBounds:parent", uVar.f15825b.getParent());
        if (this.f15695h) {
            uVar.f15825b.getLocationInWindow(this.f15693f);
            uVar.f15824a.put("android:changeBounds:windowX", Integer.valueOf(this.f15693f[0]));
            uVar.f15824a.put("android:changeBounds:windowY", Integer.valueOf(this.f15693f[1]));
        }
        if (this.f15694g) {
            uVar.f15824a.put("android:changeBounds:clip", q0.b0.w(view));
        }
    }

    @Override // x1.o
    public Animator createAnimator(ViewGroup viewGroup, u uVar, u uVar2) {
        int i10;
        View view;
        int i11;
        Rect rect;
        ObjectAnimator objectAnimator;
        Animator c10;
        if (uVar == null || uVar2 == null) {
            return null;
        }
        Map<String, Object> map = uVar.f15824a;
        Map<String, Object> map2 = uVar2.f15824a;
        ViewGroup viewGroup2 = (ViewGroup) map.get("android:changeBounds:parent");
        ViewGroup viewGroup3 = (ViewGroup) map2.get("android:changeBounds:parent");
        if (viewGroup2 == null || viewGroup3 == null) {
            return null;
        }
        View view2 = uVar2.f15825b;
        if (a(viewGroup2, viewGroup3)) {
            Rect rect2 = (Rect) uVar.f15824a.get("android:changeBounds:bounds");
            Rect rect3 = (Rect) uVar2.f15824a.get("android:changeBounds:bounds");
            int i12 = rect2.left;
            int i13 = rect3.left;
            int i14 = rect2.top;
            int i15 = rect3.top;
            int i16 = rect2.right;
            int i17 = rect3.right;
            int i18 = rect2.bottom;
            int i19 = rect3.bottom;
            int i20 = i16 - i12;
            int i21 = i18 - i14;
            int i22 = i17 - i13;
            int i23 = i19 - i15;
            Rect rect4 = (Rect) uVar.f15824a.get("android:changeBounds:clip");
            Rect rect5 = (Rect) uVar2.f15824a.get("android:changeBounds:clip");
            if ((i20 == 0 || i21 == 0) && (i22 == 0 || i23 == 0)) {
                i10 = 0;
            } else {
                i10 = (i12 == i13 && i14 == i15) ? 0 : 1;
                if (i16 != i17 || i18 != i19) {
                    i10++;
                }
            }
            if ((rect4 != null && !rect4.equals(rect5)) || (rect4 == null && rect5 != null)) {
                i10++;
            }
            if (i10 <= 0) {
                return null;
            }
            if (!this.f15694g) {
                view = view2;
                e0.f(view, i12, i14, i16, i18);
                if (i10 == 2) {
                    if (i20 == i22 && i21 == i23) {
                        c10 = x1.f.a(view, f15691o, getPathMotion().getPath(i12, i14, i13, i15));
                    } else {
                        k kVar = new k(view);
                        ObjectAnimator a10 = x1.f.a(kVar, f15687k, getPathMotion().getPath(i12, i14, i13, i15));
                        ObjectAnimator a11 = x1.f.a(kVar, f15688l, getPathMotion().getPath(i16, i18, i17, i19));
                        AnimatorSet animatorSet = new AnimatorSet();
                        animatorSet.playTogether(a10, a11);
                        animatorSet.addListener(new h(kVar));
                        c10 = animatorSet;
                    }
                } else if (i12 == i13 && i14 == i15) {
                    c10 = x1.f.a(view, f15689m, getPathMotion().getPath(i16, i18, i17, i19));
                } else {
                    c10 = x1.f.a(view, f15690n, getPathMotion().getPath(i12, i14, i13, i15));
                }
            } else {
                view = view2;
                e0.f(view, i12, i14, Math.max(i20, i22) + i12, Math.max(i21, i23) + i14);
                ObjectAnimator a12 = (i12 == i13 && i14 == i15) ? null : x1.f.a(view, f15691o, getPathMotion().getPath(i12, i14, i13, i15));
                if (rect4 == null) {
                    i11 = 0;
                    rect = new Rect(0, 0, i20, i21);
                } else {
                    i11 = 0;
                    rect = rect4;
                }
                Rect rect6 = rect5 == null ? new Rect(i11, i11, i22, i23) : rect5;
                if (rect.equals(rect6)) {
                    objectAnimator = null;
                } else {
                    q0.b0.A0(view, rect);
                    l lVar = f15692p;
                    Object[] objArr = new Object[2];
                    objArr[i11] = rect;
                    objArr[1] = rect6;
                    ObjectAnimator ofObject = ObjectAnimator.ofObject(view, "clipBounds", lVar, objArr);
                    ofObject.addListener(new i(view, rect5, i13, i15, i17, i19));
                    objectAnimator = ofObject;
                }
                c10 = t.c(a12, objectAnimator);
            }
            if (view.getParent() instanceof ViewGroup) {
                ViewGroup viewGroup4 = (ViewGroup) view.getParent();
                z.c(viewGroup4, true);
                addListener(new j(viewGroup4));
            }
            return c10;
        }
        int intValue = ((Integer) uVar.f15824a.get("android:changeBounds:windowX")).intValue();
        int intValue2 = ((Integer) uVar.f15824a.get("android:changeBounds:windowY")).intValue();
        int intValue3 = ((Integer) uVar2.f15824a.get("android:changeBounds:windowX")).intValue();
        int intValue4 = ((Integer) uVar2.f15824a.get("android:changeBounds:windowY")).intValue();
        if (intValue == intValue3 && intValue2 == intValue4) {
            return null;
        }
        viewGroup.getLocationInWindow(this.f15693f);
        Bitmap createBitmap = Bitmap.createBitmap(view2.getWidth(), view2.getHeight(), Bitmap.Config.ARGB_8888);
        view2.draw(new Canvas(createBitmap));
        BitmapDrawable bitmapDrawable = new BitmapDrawable(createBitmap);
        float c11 = e0.c(view2);
        e0.g(view2, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        e0.b(viewGroup).add(bitmapDrawable);
        x1.g pathMotion = getPathMotion();
        int[] iArr = this.f15693f;
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(bitmapDrawable, x1.j.a(f15686j, pathMotion.getPath(intValue - iArr[0], intValue2 - iArr[1], intValue3 - iArr[0], intValue4 - iArr[1])));
        ofPropertyValuesHolder.addListener(new a(viewGroup, bitmapDrawable, view2, c11));
        return ofPropertyValuesHolder;
    }

    @Override // x1.o
    public String[] getTransitionProperties() {
        return f15685i;
    }
}
