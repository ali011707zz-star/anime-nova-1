package x0;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.api.Api;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.impl.auth.NTLMEngineImpl;
import q0.b0;
import q0.f0;
import r0.d;
import r0.e;
import s.h;
import x0.b;

/* compiled from: ExploreByTouchHelper.java */
/* loaded from: classes.dex */
public abstract class a extends q0.a {
    private static final String DEFAULT_CLASS_NAME = "android.view.View";
    public static final int HOST_ID = -1;
    public static final int INVALID_ID = Integer.MIN_VALUE;
    private static final Rect INVALID_PARENT_BOUNDS = new Rect(Api.BaseClientBuilder.API_PRIORITY_OTHER, Api.BaseClientBuilder.API_PRIORITY_OTHER, Integer.MIN_VALUE, Integer.MIN_VALUE);
    private static final b.a<r0.c> NODE_ADAPTER = new C0403a();
    private static final b.InterfaceC0404b<h<r0.c>, r0.c> SPARSE_VALUES_ADAPTER = new b();
    private final View mHost;
    private final AccessibilityManager mManager;
    private c mNodeProvider;
    private final Rect mTempScreenRect = new Rect();
    private final Rect mTempParentRect = new Rect();
    private final Rect mTempVisibleRect = new Rect();
    private final int[] mTempGlobalRect = new int[2];
    public int mAccessibilityFocusedVirtualViewId = Integer.MIN_VALUE;
    public int mKeyboardFocusedVirtualViewId = Integer.MIN_VALUE;
    private int mHoveredVirtualViewId = Integer.MIN_VALUE;

    /* compiled from: ExploreByTouchHelper.java */
    /* renamed from: x0.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0403a implements b.a<r0.c> {
        @Override // x0.b.a
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(r0.c cVar, Rect rect) {
            cVar.m(rect);
        }
    }

    /* compiled from: ExploreByTouchHelper.java */
    /* loaded from: classes.dex */
    public static class b implements b.InterfaceC0404b<h<r0.c>, r0.c> {
        @Override // x0.b.InterfaceC0404b
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public r0.c a(h<r0.c> hVar, int i10) {
            return hVar.k(i10);
        }

        @Override // x0.b.InterfaceC0404b
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public int b(h<r0.c> hVar) {
            return hVar.j();
        }
    }

    /* compiled from: ExploreByTouchHelper.java */
    /* loaded from: classes.dex */
    public class c extends d {
        public c() {
        }

        @Override // r0.d
        public r0.c b(int i10) {
            return r0.c.Q(a.this.obtainAccessibilityNodeInfo(i10));
        }

        @Override // r0.d
        public r0.c d(int i10) {
            int i11 = i10 == 2 ? a.this.mAccessibilityFocusedVirtualViewId : a.this.mKeyboardFocusedVirtualViewId;
            if (i11 == Integer.MIN_VALUE) {
                return null;
            }
            return b(i11);
        }

        @Override // r0.d
        public boolean f(int i10, int i11, Bundle bundle) {
            return a.this.performAction(i10, i11, bundle);
        }
    }

    public a(View view) {
        if (view != null) {
            this.mHost = view;
            this.mManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
            view.setFocusable(true);
            if (b0.C(view) == 0) {
                b0.E0(view, 1);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("View may not be null");
    }

    private boolean clearAccessibilityFocus(int i10) {
        if (this.mAccessibilityFocusedVirtualViewId != i10) {
            return false;
        }
        this.mAccessibilityFocusedVirtualViewId = Integer.MIN_VALUE;
        this.mHost.invalidate();
        sendEventForVirtualView(i10, 65536);
        return true;
    }

    private boolean clickKeyboardFocusedVirtualView() {
        int i10 = this.mKeyboardFocusedVirtualViewId;
        return i10 != Integer.MIN_VALUE && onPerformActionForVirtualView(i10, 16, null);
    }

    private AccessibilityEvent createEvent(int i10, int i11) {
        if (i10 != -1) {
            return createEventForChild(i10, i11);
        }
        return createEventForHost(i11);
    }

    private AccessibilityEvent createEventForChild(int i10, int i11) {
        AccessibilityEvent obtain = AccessibilityEvent.obtain(i11);
        r0.c obtainAccessibilityNodeInfo = obtainAccessibilityNodeInfo(i10);
        obtain.getText().add(obtainAccessibilityNodeInfo.x());
        obtain.setContentDescription(obtainAccessibilityNodeInfo.s());
        obtain.setScrollable(obtainAccessibilityNodeInfo.K());
        obtain.setPassword(obtainAccessibilityNodeInfo.J());
        obtain.setEnabled(obtainAccessibilityNodeInfo.F());
        obtain.setChecked(obtainAccessibilityNodeInfo.D());
        onPopulateEventForVirtualView(i10, obtain);
        if (obtain.getText().isEmpty() && obtain.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
        }
        obtain.setClassName(obtainAccessibilityNodeInfo.p());
        e.c(obtain, this.mHost, i10);
        obtain.setPackageName(this.mHost.getContext().getPackageName());
        return obtain;
    }

    private AccessibilityEvent createEventForHost(int i10) {
        AccessibilityEvent obtain = AccessibilityEvent.obtain(i10);
        this.mHost.onInitializeAccessibilityEvent(obtain);
        return obtain;
    }

    private r0.c createNodeForChild(int i10) {
        r0.c O = r0.c.O();
        O.h0(true);
        O.j0(true);
        O.b0(DEFAULT_CLASS_NAME);
        Rect rect = INVALID_PARENT_BOUNDS;
        O.X(rect);
        O.Y(rect);
        O.r0(this.mHost);
        onPopulateNodeForVirtualView(i10, O);
        if (O.x() == null && O.s() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        O.m(this.mTempParentRect);
        if (!this.mTempParentRect.equals(rect)) {
            int k10 = O.k();
            if ((k10 & 64) != 0) {
                throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
            }
            if ((k10 & 128) == 0) {
                O.p0(this.mHost.getContext().getPackageName());
                O.A0(this.mHost, i10);
                if (this.mAccessibilityFocusedVirtualViewId == i10) {
                    O.V(true);
                    O.a(128);
                } else {
                    O.V(false);
                    O.a(64);
                }
                boolean z10 = this.mKeyboardFocusedVirtualViewId == i10;
                if (z10) {
                    O.a(2);
                } else if (O.G()) {
                    O.a(1);
                }
                O.k0(z10);
                this.mHost.getLocationOnScreen(this.mTempGlobalRect);
                O.n(this.mTempScreenRect);
                if (this.mTempScreenRect.equals(rect)) {
                    O.m(this.mTempScreenRect);
                    if (O.f12757b != -1) {
                        r0.c O2 = r0.c.O();
                        for (int i11 = O.f12757b; i11 != -1; i11 = O2.f12757b) {
                            O2.s0(this.mHost, -1);
                            O2.X(INVALID_PARENT_BOUNDS);
                            onPopulateNodeForVirtualView(i11, O2);
                            O2.m(this.mTempParentRect);
                            Rect rect2 = this.mTempScreenRect;
                            Rect rect3 = this.mTempParentRect;
                            rect2.offset(rect3.left, rect3.top);
                        }
                        O2.S();
                    }
                    this.mTempScreenRect.offset(this.mTempGlobalRect[0] - this.mHost.getScrollX(), this.mTempGlobalRect[1] - this.mHost.getScrollY());
                }
                if (this.mHost.getLocalVisibleRect(this.mTempVisibleRect)) {
                    this.mTempVisibleRect.offset(this.mTempGlobalRect[0] - this.mHost.getScrollX(), this.mTempGlobalRect[1] - this.mHost.getScrollY());
                    if (this.mTempScreenRect.intersect(this.mTempVisibleRect)) {
                        O.Y(this.mTempScreenRect);
                        if (isVisibleToUser(this.mTempScreenRect)) {
                            O.E0(true);
                        }
                    }
                }
                return O;
            }
            throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
    }

    private r0.c createNodeForHost() {
        r0.c P = r0.c.P(this.mHost);
        b0.g0(this.mHost, P);
        ArrayList arrayList = new ArrayList();
        getVisibleVirtualViews(arrayList);
        if (P.o() > 0 && arrayList.size() > 0) {
            throw new RuntimeException("Views cannot have both real and virtual children");
        }
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            P.d(this.mHost, ((Integer) arrayList.get(i10)).intValue());
        }
        return P;
    }

    private h<r0.c> getAllNodes() {
        ArrayList arrayList = new ArrayList();
        getVisibleVirtualViews(arrayList);
        h<r0.c> hVar = new h<>();
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            hVar.i(i10, createNodeForChild(i10));
        }
        return hVar;
    }

    private void getBoundsInParent(int i10, Rect rect) {
        obtainAccessibilityNodeInfo(i10).m(rect);
    }

    private static Rect guessPreviouslyFocusedRect(View view, int i10, Rect rect) {
        int width = view.getWidth();
        int height = view.getHeight();
        if (i10 == 17) {
            rect.set(width, 0, width, height);
        } else if (i10 == 33) {
            rect.set(0, height, width, height);
        } else if (i10 == 66) {
            rect.set(-1, 0, -1, height);
        } else if (i10 == 130) {
            rect.set(0, -1, width, -1);
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        return rect;
    }

    private boolean isVisibleToUser(Rect rect) {
        if (rect == null || rect.isEmpty() || this.mHost.getWindowVisibility() != 0) {
            return false;
        }
        Object parent = this.mHost.getParent();
        while (parent instanceof View) {
            View view = (View) parent;
            if (view.getAlpha() <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD || view.getVisibility() != 0) {
                return false;
            }
            parent = view.getParent();
        }
        return parent != null;
    }

    private static int keyToDirection(int i10) {
        if (i10 == 19) {
            return 33;
        }
        if (i10 != 21) {
            return i10 != 22 ? 130 : 66;
        }
        return 17;
    }

    private boolean moveFocus(int i10, Rect rect) {
        r0.c cVar;
        h<r0.c> allNodes = getAllNodes();
        int i11 = this.mKeyboardFocusedVirtualViewId;
        r0.c e10 = i11 == Integer.MIN_VALUE ? null : allNodes.e(i11);
        if (i10 == 1 || i10 == 2) {
            cVar = (r0.c) x0.b.d(allNodes, SPARSE_VALUES_ADAPTER, NODE_ADAPTER, e10, i10, b0.E(this.mHost) == 1, false);
        } else {
            if (i10 != 17 && i10 != 33 && i10 != 66 && i10 != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            Rect rect2 = new Rect();
            int i12 = this.mKeyboardFocusedVirtualViewId;
            if (i12 != Integer.MIN_VALUE) {
                getBoundsInParent(i12, rect2);
            } else if (rect != null) {
                rect2.set(rect);
            } else {
                guessPreviouslyFocusedRect(this.mHost, i10, rect2);
            }
            cVar = (r0.c) x0.b.c(allNodes, SPARSE_VALUES_ADAPTER, NODE_ADAPTER, e10, rect2, i10);
        }
        return requestKeyboardFocusForVirtualView(cVar != null ? allNodes.h(allNodes.g(cVar)) : Integer.MIN_VALUE);
    }

    private boolean performActionForChild(int i10, int i11, Bundle bundle) {
        if (i11 == 1) {
            return requestKeyboardFocusForVirtualView(i10);
        }
        if (i11 == 2) {
            return clearKeyboardFocusForVirtualView(i10);
        }
        if (i11 == 64) {
            return requestAccessibilityFocus(i10);
        }
        if (i11 != 128) {
            return onPerformActionForVirtualView(i10, i11, bundle);
        }
        return clearAccessibilityFocus(i10);
    }

    private boolean performActionForHost(int i10, Bundle bundle) {
        return b0.i0(this.mHost, i10, bundle);
    }

    private boolean requestAccessibilityFocus(int i10) {
        int i11;
        if (!this.mManager.isEnabled() || !this.mManager.isTouchExplorationEnabled() || (i11 = this.mAccessibilityFocusedVirtualViewId) == i10) {
            return false;
        }
        if (i11 != Integer.MIN_VALUE) {
            clearAccessibilityFocus(i11);
        }
        this.mAccessibilityFocusedVirtualViewId = i10;
        this.mHost.invalidate();
        sendEventForVirtualView(i10, NTLMEngineImpl.FLAG_NEGOTIATE_ALWAYS_SIGN);
        return true;
    }

    private void updateHoveredVirtualView(int i10) {
        int i11 = this.mHoveredVirtualViewId;
        if (i11 == i10) {
            return;
        }
        this.mHoveredVirtualViewId = i10;
        sendEventForVirtualView(i10, 128);
        sendEventForVirtualView(i11, 256);
    }

    public final boolean clearKeyboardFocusForVirtualView(int i10) {
        if (this.mKeyboardFocusedVirtualViewId != i10) {
            return false;
        }
        this.mKeyboardFocusedVirtualViewId = Integer.MIN_VALUE;
        onVirtualViewKeyboardFocusChanged(i10, false);
        sendEventForVirtualView(i10, 8);
        return true;
    }

    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        if (!this.mManager.isEnabled() || !this.mManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 7 && action != 9) {
            if (action != 10 || this.mHoveredVirtualViewId == Integer.MIN_VALUE) {
                return false;
            }
            updateHoveredVirtualView(Integer.MIN_VALUE);
            return true;
        }
        int virtualViewAt = getVirtualViewAt(motionEvent.getX(), motionEvent.getY());
        updateHoveredVirtualView(virtualViewAt);
        return virtualViewAt != Integer.MIN_VALUE;
    }

    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int i10 = 0;
        if (keyEvent.getAction() == 1) {
            return false;
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyCode != 61) {
            if (keyCode != 66) {
                switch (keyCode) {
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                        if (!keyEvent.hasNoModifiers()) {
                            return false;
                        }
                        int keyToDirection = keyToDirection(keyCode);
                        int repeatCount = keyEvent.getRepeatCount() + 1;
                        boolean z10 = false;
                        while (i10 < repeatCount && moveFocus(keyToDirection, null)) {
                            i10++;
                            z10 = true;
                        }
                        return z10;
                    case 23:
                        break;
                    default:
                        return false;
                }
            }
            if (!keyEvent.hasNoModifiers() || keyEvent.getRepeatCount() != 0) {
                return false;
            }
            clickKeyboardFocusedVirtualView();
            return true;
        }
        if (keyEvent.hasNoModifiers()) {
            return moveFocus(2, null);
        }
        if (keyEvent.hasModifiers(1)) {
            return moveFocus(1, null);
        }
        return false;
    }

    public final int getAccessibilityFocusedVirtualViewId() {
        return this.mAccessibilityFocusedVirtualViewId;
    }

    @Override // q0.a
    public d getAccessibilityNodeProvider(View view) {
        if (this.mNodeProvider == null) {
            this.mNodeProvider = new c();
        }
        return this.mNodeProvider;
    }

    @Deprecated
    public int getFocusedVirtualView() {
        return getAccessibilityFocusedVirtualViewId();
    }

    public final int getKeyboardFocusedVirtualViewId() {
        return this.mKeyboardFocusedVirtualViewId;
    }

    public abstract int getVirtualViewAt(float f10, float f11);

    public abstract void getVisibleVirtualViews(List<Integer> list);

    public final void invalidateRoot() {
        invalidateVirtualView(-1, 1);
    }

    public final void invalidateVirtualView(int i10) {
        invalidateVirtualView(i10, 0);
    }

    public r0.c obtainAccessibilityNodeInfo(int i10) {
        if (i10 == -1) {
            return createNodeForHost();
        }
        return createNodeForChild(i10);
    }

    public final void onFocusChanged(boolean z10, int i10, Rect rect) {
        int i11 = this.mKeyboardFocusedVirtualViewId;
        if (i11 != Integer.MIN_VALUE) {
            clearKeyboardFocusForVirtualView(i11);
        }
        if (z10) {
            moveFocus(i10, rect);
        }
    }

    @Override // q0.a
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        onPopulateEventForHost(accessibilityEvent);
    }

    @Override // q0.a
    public void onInitializeAccessibilityNodeInfo(View view, r0.c cVar) {
        super.onInitializeAccessibilityNodeInfo(view, cVar);
        onPopulateNodeForHost(cVar);
    }

    public abstract boolean onPerformActionForVirtualView(int i10, int i11, Bundle bundle);

    public void onPopulateEventForHost(AccessibilityEvent accessibilityEvent) {
    }

    public void onPopulateEventForVirtualView(int i10, AccessibilityEvent accessibilityEvent) {
    }

    public void onPopulateNodeForHost(r0.c cVar) {
    }

    public abstract void onPopulateNodeForVirtualView(int i10, r0.c cVar);

    public void onVirtualViewKeyboardFocusChanged(int i10, boolean z10) {
    }

    public boolean performAction(int i10, int i11, Bundle bundle) {
        if (i10 != -1) {
            return performActionForChild(i10, i11, bundle);
        }
        return performActionForHost(i11, bundle);
    }

    public final boolean requestKeyboardFocusForVirtualView(int i10) {
        int i11;
        if ((!this.mHost.isFocused() && !this.mHost.requestFocus()) || (i11 = this.mKeyboardFocusedVirtualViewId) == i10) {
            return false;
        }
        if (i11 != Integer.MIN_VALUE) {
            clearKeyboardFocusForVirtualView(i11);
        }
        this.mKeyboardFocusedVirtualViewId = i10;
        onVirtualViewKeyboardFocusChanged(i10, true);
        sendEventForVirtualView(i10, 8);
        return true;
    }

    public final boolean sendEventForVirtualView(int i10, int i11) {
        ViewParent parent;
        if (i10 == Integer.MIN_VALUE || !this.mManager.isEnabled() || (parent = this.mHost.getParent()) == null) {
            return false;
        }
        return f0.h(parent, this.mHost, createEvent(i10, i11));
    }

    public final void invalidateVirtualView(int i10, int i11) {
        ViewParent parent;
        if (i10 == Integer.MIN_VALUE || !this.mManager.isEnabled() || (parent = this.mHost.getParent()) == null) {
            return;
        }
        AccessibilityEvent createEvent = createEvent(i10, RecyclerView.e0.FLAG_MOVED);
        r0.b.b(createEvent, i11);
        f0.h(parent, this.mHost, createEvent);
    }
}
