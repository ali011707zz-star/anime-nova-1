package x1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import x1.a;
import x1.o;

/* compiled from: Visibility.java */
/* loaded from: classes.dex */
public abstract class l0 extends o {
    public static final int MODE_IN = 1;
    public static final int MODE_OUT = 2;
    private static final String PROPNAME_SCREEN_LOCATION = "android:visibility:screenLocation";
    private int mMode;
    public static final String PROPNAME_VISIBILITY = "android:visibility:visibility";
    private static final String PROPNAME_PARENT = "android:visibility:parent";
    private static final String[] sTransitionProperties = {PROPNAME_VISIBILITY, PROPNAME_PARENT};

    /* compiled from: Visibility.java */
    /* loaded from: classes.dex */
    public class a extends p {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ViewGroup f15767a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ View f15768b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ View f15769c;

        public a(ViewGroup viewGroup, View view, View view2) {
            this.f15767a = viewGroup;
            this.f15768b = view;
            this.f15769c = view2;
        }

        @Override // x1.o.g
        public void onTransitionEnd(o oVar) {
            this.f15769c.setTag(k.f15759b, null);
            z.a(this.f15767a).remove(this.f15768b);
            oVar.removeListener(this);
        }

        @Override // x1.p, x1.o.g
        public void onTransitionPause(o oVar) {
            z.a(this.f15767a).remove(this.f15768b);
        }

        @Override // x1.p, x1.o.g
        public void onTransitionResume(o oVar) {
            if (this.f15768b.getParent() == null) {
                z.a(this.f15767a).add(this.f15768b);
            } else {
                l0.this.cancel();
            }
        }
    }

    /* compiled from: Visibility.java */
    /* loaded from: classes.dex */
    public static class b extends AnimatorListenerAdapter implements o.g, a.InterfaceC0406a {

        /* renamed from: a, reason: collision with root package name */
        public final View f15771a;

        /* renamed from: b, reason: collision with root package name */
        public final int f15772b;

        /* renamed from: c, reason: collision with root package name */
        public final ViewGroup f15773c;

        /* renamed from: d, reason: collision with root package name */
        public final boolean f15774d;

        /* renamed from: e, reason: collision with root package name */
        public boolean f15775e;

        /* renamed from: f, reason: collision with root package name */
        public boolean f15776f = false;

        public b(View view, int i10, boolean z10) {
            this.f15771a = view;
            this.f15772b = i10;
            this.f15773c = (ViewGroup) view.getParent();
            this.f15774d = z10;
            b(true);
        }

        public final void a() {
            if (!this.f15776f) {
                e0.h(this.f15771a, this.f15772b);
                ViewGroup viewGroup = this.f15773c;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
            b(false);
        }

        public final void b(boolean z10) {
            ViewGroup viewGroup;
            if (!this.f15774d || this.f15775e == z10 || (viewGroup = this.f15773c) == null) {
                return;
            }
            this.f15775e = z10;
            z.c(viewGroup, z10);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f15776f = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            a();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, x1.a.InterfaceC0406a
        public void onAnimationPause(Animator animator) {
            if (this.f15776f) {
                return;
            }
            e0.h(this.f15771a, this.f15772b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, x1.a.InterfaceC0406a
        public void onAnimationResume(Animator animator) {
            if (this.f15776f) {
                return;
            }
            e0.h(this.f15771a, 0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }

        @Override // x1.o.g
        public void onTransitionCancel(o oVar) {
        }

        @Override // x1.o.g
        public void onTransitionEnd(o oVar) {
            a();
            oVar.removeListener(this);
        }

        @Override // x1.o.g
        public void onTransitionPause(o oVar) {
            b(false);
        }

        @Override // x1.o.g
        public void onTransitionResume(o oVar) {
            b(true);
        }

        @Override // x1.o.g
        public void onTransitionStart(o oVar) {
        }
    }

    /* compiled from: Visibility.java */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a, reason: collision with root package name */
        public boolean f15777a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f15778b;

        /* renamed from: c, reason: collision with root package name */
        public int f15779c;

        /* renamed from: d, reason: collision with root package name */
        public int f15780d;

        /* renamed from: e, reason: collision with root package name */
        public ViewGroup f15781e;

        /* renamed from: f, reason: collision with root package name */
        public ViewGroup f15782f;
    }

    public l0() {
        this.mMode = 3;
    }

    private void captureValues(u uVar) {
        uVar.f15824a.put(PROPNAME_VISIBILITY, Integer.valueOf(uVar.f15825b.getVisibility()));
        uVar.f15824a.put(PROPNAME_PARENT, uVar.f15825b.getParent());
        int[] iArr = new int[2];
        uVar.f15825b.getLocationOnScreen(iArr);
        uVar.f15824a.put(PROPNAME_SCREEN_LOCATION, iArr);
    }

    private c getVisibilityChangeInfo(u uVar, u uVar2) {
        c cVar = new c();
        cVar.f15777a = false;
        cVar.f15778b = false;
        if (uVar != null && uVar.f15824a.containsKey(PROPNAME_VISIBILITY)) {
            cVar.f15779c = ((Integer) uVar.f15824a.get(PROPNAME_VISIBILITY)).intValue();
            cVar.f15781e = (ViewGroup) uVar.f15824a.get(PROPNAME_PARENT);
        } else {
            cVar.f15779c = -1;
            cVar.f15781e = null;
        }
        if (uVar2 != null && uVar2.f15824a.containsKey(PROPNAME_VISIBILITY)) {
            cVar.f15780d = ((Integer) uVar2.f15824a.get(PROPNAME_VISIBILITY)).intValue();
            cVar.f15782f = (ViewGroup) uVar2.f15824a.get(PROPNAME_PARENT);
        } else {
            cVar.f15780d = -1;
            cVar.f15782f = null;
        }
        if (uVar != null && uVar2 != null) {
            int i10 = cVar.f15779c;
            int i11 = cVar.f15780d;
            if (i10 == i11 && cVar.f15781e == cVar.f15782f) {
                return cVar;
            }
            if (i10 != i11) {
                if (i10 == 0) {
                    cVar.f15778b = false;
                    cVar.f15777a = true;
                } else if (i11 == 0) {
                    cVar.f15778b = true;
                    cVar.f15777a = true;
                }
            } else if (cVar.f15782f == null) {
                cVar.f15778b = false;
                cVar.f15777a = true;
            } else if (cVar.f15781e == null) {
                cVar.f15778b = true;
                cVar.f15777a = true;
            }
        } else if (uVar == null && cVar.f15780d == 0) {
            cVar.f15778b = true;
            cVar.f15777a = true;
        } else if (uVar2 == null && cVar.f15779c == 0) {
            cVar.f15778b = false;
            cVar.f15777a = true;
        }
        return cVar;
    }

    @Override // x1.o
    public void captureEndValues(u uVar) {
        captureValues(uVar);
    }

    @Override // x1.o
    public void captureStartValues(u uVar) {
        captureValues(uVar);
    }

    @Override // x1.o
    public Animator createAnimator(ViewGroup viewGroup, u uVar, u uVar2) {
        c visibilityChangeInfo = getVisibilityChangeInfo(uVar, uVar2);
        if (!visibilityChangeInfo.f15777a) {
            return null;
        }
        if (visibilityChangeInfo.f15781e == null && visibilityChangeInfo.f15782f == null) {
            return null;
        }
        if (visibilityChangeInfo.f15778b) {
            return onAppear(viewGroup, uVar, visibilityChangeInfo.f15779c, uVar2, visibilityChangeInfo.f15780d);
        }
        return onDisappear(viewGroup, uVar, visibilityChangeInfo.f15779c, uVar2, visibilityChangeInfo.f15780d);
    }

    public int getMode() {
        return this.mMode;
    }

    @Override // x1.o
    public String[] getTransitionProperties() {
        return sTransitionProperties;
    }

    @Override // x1.o
    public boolean isTransitionRequired(u uVar, u uVar2) {
        if (uVar == null && uVar2 == null) {
            return false;
        }
        if (uVar != null && uVar2 != null && uVar2.f15824a.containsKey(PROPNAME_VISIBILITY) != uVar.f15824a.containsKey(PROPNAME_VISIBILITY)) {
            return false;
        }
        c visibilityChangeInfo = getVisibilityChangeInfo(uVar, uVar2);
        if (visibilityChangeInfo.f15777a) {
            return visibilityChangeInfo.f15779c == 0 || visibilityChangeInfo.f15780d == 0;
        }
        return false;
    }

    public boolean isVisible(u uVar) {
        if (uVar == null) {
            return false;
        }
        return ((Integer) uVar.f15824a.get(PROPNAME_VISIBILITY)).intValue() == 0 && ((View) uVar.f15824a.get(PROPNAME_PARENT)) != null;
    }

    public Animator onAppear(ViewGroup viewGroup, View view, u uVar, u uVar2) {
        return null;
    }

    public Animator onAppear(ViewGroup viewGroup, u uVar, int i10, u uVar2, int i11) {
        if ((this.mMode & 1) != 1 || uVar2 == null) {
            return null;
        }
        if (uVar == null) {
            View view = (View) uVar2.f15825b.getParent();
            if (getVisibilityChangeInfo(getMatchedTransitionValues(view, false), getTransitionValues(view, false)).f15777a) {
                return null;
            }
        }
        return onAppear(viewGroup, uVar2.f15825b, uVar, uVar2);
    }

    public Animator onDisappear(ViewGroup viewGroup, View view, u uVar, u uVar2) {
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0089, code lost:
    
        if (r17.mCanRemoveViews != false) goto L43;
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Animator onDisappear(ViewGroup viewGroup, u uVar, int i10, u uVar2, int i11) {
        View view;
        boolean z10;
        boolean z11;
        View view2;
        if ((this.mMode & 2) != 2 || uVar == null) {
            return null;
        }
        View view3 = uVar.f15825b;
        View view4 = uVar2 != null ? uVar2.f15825b : null;
        int i12 = k.f15759b;
        View view5 = (View) view3.getTag(i12);
        if (view5 != null) {
            view2 = null;
            z11 = true;
        } else if (view4 == null || view4.getParent() == null) {
            if (view4 != null) {
                view = null;
                z10 = false;
                if (z10) {
                    if (view3.getParent() != null) {
                        if (view3.getParent() instanceof View) {
                            View view6 = (View) view3.getParent();
                            if (!getVisibilityChangeInfo(getTransitionValues(view6, true), getMatchedTransitionValues(view6, true)).f15777a) {
                                view4 = t.a(viewGroup, view3, view6);
                            } else {
                                int id2 = view6.getId();
                                if (view6.getParent() == null) {
                                    if (id2 != -1) {
                                        if (viewGroup.findViewById(id2) != null) {
                                        }
                                    }
                                }
                            }
                        }
                    }
                    view2 = view;
                    z11 = false;
                    view5 = view3;
                }
                z11 = false;
                View view7 = view;
                view5 = view4;
                view2 = view7;
            }
            view4 = null;
            view = null;
            z10 = true;
            if (z10) {
            }
            z11 = false;
            View view72 = view;
            view5 = view4;
            view2 = view72;
        } else {
            if (i11 == 4 || view3 == view4) {
                view = view4;
                z10 = false;
                view4 = null;
                if (z10) {
                }
                z11 = false;
                View view722 = view;
                view5 = view4;
                view2 = view722;
            }
            view4 = null;
            view = null;
            z10 = true;
            if (z10) {
            }
            z11 = false;
            View view7222 = view;
            view5 = view4;
            view2 = view7222;
        }
        if (view5 == null) {
            if (view2 == null) {
                return null;
            }
            int visibility = view2.getVisibility();
            e0.h(view2, 0);
            Animator onDisappear = onDisappear(viewGroup, view2, uVar, uVar2);
            if (onDisappear != null) {
                b bVar = new b(view2, i11, true);
                onDisappear.addListener(bVar);
                x1.a.a(onDisappear, bVar);
                addListener(bVar);
            } else {
                e0.h(view2, visibility);
            }
            return onDisappear;
        }
        if (!z11) {
            int[] iArr = (int[]) uVar.f15824a.get(PROPNAME_SCREEN_LOCATION);
            int i13 = iArr[0];
            int i14 = iArr[1];
            int[] iArr2 = new int[2];
            viewGroup.getLocationOnScreen(iArr2);
            view5.offsetLeftAndRight((i13 - iArr2[0]) - view5.getLeft());
            view5.offsetTopAndBottom((i14 - iArr2[1]) - view5.getTop());
            z.a(viewGroup).add(view5);
        }
        Animator onDisappear2 = onDisappear(viewGroup, view5, uVar, uVar2);
        if (!z11) {
            if (onDisappear2 == null) {
                z.a(viewGroup).remove(view5);
            } else {
                view3.setTag(i12, view5);
                addListener(new a(viewGroup, view5, view3));
            }
        }
        return onDisappear2;
    }

    public void setMode(int i10) {
        if ((i10 & (-4)) == 0) {
            this.mMode = i10;
            return;
        }
        throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
    }

    @SuppressLint({"RestrictedApi"})
    public l0(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mMode = 3;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, n.f15790e);
        int k10 = g0.i.k(obtainStyledAttributes, (XmlResourceParser) attributeSet, "transitionVisibilityMode", 0, 0);
        obtainStyledAttributes.recycle();
        if (k10 != 0) {
            setMode(k10);
        }
    }
}
