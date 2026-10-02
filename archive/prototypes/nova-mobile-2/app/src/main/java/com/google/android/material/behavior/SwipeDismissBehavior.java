package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import q0.b0;
import r0.c;
import r0.f;
import x0.c;

/* loaded from: classes.dex */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.c<V> {
    private static final float DEFAULT_ALPHA_END_DISTANCE = 0.5f;
    private static final float DEFAULT_ALPHA_START_DISTANCE = 0.0f;
    private static final float DEFAULT_DRAG_DISMISS_THRESHOLD = 0.5f;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;
    public static final int SWIPE_DIRECTION_ANY = 2;
    public static final int SWIPE_DIRECTION_END_TO_START = 1;
    public static final int SWIPE_DIRECTION_START_TO_END = 0;
    private boolean interceptingEvents;
    public OnDismissListener listener;
    private boolean sensitivitySet;
    public c viewDragHelper;
    private float sensitivity = 0.0f;
    public int swipeDirection = 2;
    public float dragDismissThreshold = 0.5f;
    public float alphaStartSwipeDistance = 0.0f;
    public float alphaEndSwipeDistance = 0.5f;
    private final c.AbstractC0405c dragCallback = new c.AbstractC0405c() { // from class: com.google.android.material.behavior.SwipeDismissBehavior.1
        private static final int INVALID_POINTER_ID = -1;
        private int activePointerId = -1;
        private int originalCapturedViewLeft;

        private boolean shouldDismiss(View view, float f10) {
            if (f10 == 0.0f) {
                return Math.abs(view.getLeft() - this.originalCapturedViewLeft) >= Math.round(((float) view.getWidth()) * SwipeDismissBehavior.this.dragDismissThreshold);
            }
            boolean z10 = b0.E(view) == 1;
            int i10 = SwipeDismissBehavior.this.swipeDirection;
            if (i10 == 2) {
                return true;
            }
            if (i10 == 0) {
                if (z10) {
                    if (f10 >= 0.0f) {
                        return false;
                    }
                } else if (f10 <= 0.0f) {
                    return false;
                }
                return true;
            }
            if (i10 != 1) {
                return false;
            }
            if (z10) {
                if (f10 <= 0.0f) {
                    return false;
                }
            } else if (f10 >= 0.0f) {
                return false;
            }
            return true;
        }

        @Override // x0.c.AbstractC0405c
        public int clampViewPositionHorizontal(View view, int i10, int i11) {
            int width;
            int width2;
            int width3;
            boolean z10 = b0.E(view) == 1;
            int i12 = SwipeDismissBehavior.this.swipeDirection;
            if (i12 == 0) {
                if (z10) {
                    width = this.originalCapturedViewLeft - view.getWidth();
                    width2 = this.originalCapturedViewLeft;
                } else {
                    width = this.originalCapturedViewLeft;
                    width3 = view.getWidth();
                    width2 = width3 + width;
                }
            } else if (i12 != 1) {
                width = this.originalCapturedViewLeft - view.getWidth();
                width2 = view.getWidth() + this.originalCapturedViewLeft;
            } else if (z10) {
                width = this.originalCapturedViewLeft;
                width3 = view.getWidth();
                width2 = width3 + width;
            } else {
                width = this.originalCapturedViewLeft - view.getWidth();
                width2 = this.originalCapturedViewLeft;
            }
            return SwipeDismissBehavior.clamp(width, i10, width2);
        }

        @Override // x0.c.AbstractC0405c
        public int clampViewPositionVertical(View view, int i10, int i11) {
            return view.getTop();
        }

        @Override // x0.c.AbstractC0405c
        public int getViewHorizontalDragRange(View view) {
            return view.getWidth();
        }

        @Override // x0.c.AbstractC0405c
        public void onViewCaptured(View view, int i10) {
            this.activePointerId = i10;
            this.originalCapturedViewLeft = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }

        @Override // x0.c.AbstractC0405c
        public void onViewDragStateChanged(int i10) {
            OnDismissListener onDismissListener = SwipeDismissBehavior.this.listener;
            if (onDismissListener != null) {
                onDismissListener.onDragStateChanged(i10);
            }
        }

        @Override // x0.c.AbstractC0405c
        public void onViewPositionChanged(View view, int i10, int i11, int i12, int i13) {
            float width = this.originalCapturedViewLeft + (view.getWidth() * SwipeDismissBehavior.this.alphaStartSwipeDistance);
            float width2 = this.originalCapturedViewLeft + (view.getWidth() * SwipeDismissBehavior.this.alphaEndSwipeDistance);
            float f10 = i10;
            if (f10 <= width) {
                view.setAlpha(1.0f);
            } else if (f10 >= width2) {
                view.setAlpha(0.0f);
            } else {
                view.setAlpha(SwipeDismissBehavior.clamp(0.0f, 1.0f - SwipeDismissBehavior.fraction(width, width2, f10), 1.0f));
            }
        }

        @Override // x0.c.AbstractC0405c
        public void onViewReleased(View view, float f10, float f11) {
            int i10;
            boolean z10;
            OnDismissListener onDismissListener;
            this.activePointerId = -1;
            int width = view.getWidth();
            if (shouldDismiss(view, f10)) {
                int left = view.getLeft();
                int i11 = this.originalCapturedViewLeft;
                i10 = left < i11 ? i11 - width : i11 + width;
                z10 = true;
            } else {
                i10 = this.originalCapturedViewLeft;
                z10 = false;
            }
            if (SwipeDismissBehavior.this.viewDragHelper.M(i10, view.getTop())) {
                b0.l0(view, new SettleRunnable(view, z10));
            } else {
                if (!z10 || (onDismissListener = SwipeDismissBehavior.this.listener) == null) {
                    return;
                }
                onDismissListener.onDismiss(view);
            }
        }

        @Override // x0.c.AbstractC0405c
        public boolean tryCaptureView(View view, int i10) {
            int i11 = this.activePointerId;
            return (i11 == -1 || i11 == i10) && SwipeDismissBehavior.this.canSwipeDismissView(view);
        }
    };

    /* loaded from: classes.dex */
    public interface OnDismissListener {
        void onDismiss(View view);

        void onDragStateChanged(int i10);
    }

    /* loaded from: classes.dex */
    public class SettleRunnable implements Runnable {
        private final boolean dismiss;
        private final View view;

        public SettleRunnable(View view, boolean z10) {
            this.view = view;
            this.dismiss = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            OnDismissListener onDismissListener;
            c cVar = SwipeDismissBehavior.this.viewDragHelper;
            if (cVar != null && cVar.m(true)) {
                b0.l0(this.view, this);
            } else {
                if (!this.dismiss || (onDismissListener = SwipeDismissBehavior.this.listener) == null) {
                    return;
                }
                onDismissListener.onDismiss(this.view);
            }
        }
    }

    public static float clamp(float f10, float f11, float f12) {
        return Math.min(Math.max(f10, f11), f12);
    }

    private void ensureViewDragHelper(ViewGroup viewGroup) {
        c o10;
        if (this.viewDragHelper == null) {
            if (this.sensitivitySet) {
                o10 = c.n(viewGroup, this.sensitivity, this.dragCallback);
            } else {
                o10 = c.o(viewGroup, this.dragCallback);
            }
            this.viewDragHelper = o10;
        }
    }

    public static float fraction(float f10, float f11, float f12) {
        return (f12 - f10) / (f11 - f10);
    }

    private void updateAccessibilityActions(View view) {
        b0.n0(view, 1048576);
        if (canSwipeDismissView(view)) {
            b0.p0(view, c.a.f12779y, null, new f() { // from class: com.google.android.material.behavior.SwipeDismissBehavior.2
                @Override // r0.f
                public boolean perform(View view2, f.a aVar) {
                    boolean z10 = false;
                    if (!SwipeDismissBehavior.this.canSwipeDismissView(view2)) {
                        return false;
                    }
                    boolean z11 = b0.E(view2) == 1;
                    int i10 = SwipeDismissBehavior.this.swipeDirection;
                    if ((i10 == 0 && z11) || (i10 == 1 && !z11)) {
                        z10 = true;
                    }
                    int width = view2.getWidth();
                    if (z10) {
                        width = -width;
                    }
                    b0.d0(view2, width);
                    view2.setAlpha(0.0f);
                    OnDismissListener onDismissListener = SwipeDismissBehavior.this.listener;
                    if (onDismissListener != null) {
                        onDismissListener.onDismiss(view2);
                    }
                    return true;
                }
            });
        }
    }

    public boolean canSwipeDismissView(View view) {
        return true;
    }

    public int getDragState() {
        x0.c cVar = this.viewDragHelper;
        if (cVar != null) {
            return cVar.z();
        }
        return 0;
    }

    public OnDismissListener getListener() {
        return this.listener;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, V v10, MotionEvent motionEvent) {
        boolean z10 = this.interceptingEvents;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            z10 = coordinatorLayout.isPointInChildBounds(v10, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.interceptingEvents = z10;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.interceptingEvents = false;
        }
        if (!z10) {
            return false;
        }
        ensureViewDragHelper(coordinatorLayout);
        return this.viewDragHelper.N(motionEvent);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, V v10, int i10) {
        boolean onLayoutChild = super.onLayoutChild(coordinatorLayout, v10, i10);
        if (b0.C(v10) == 0) {
            b0.E0(v10, 1);
            updateAccessibilityActions(v10);
        }
        return onLayoutChild;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v10, MotionEvent motionEvent) {
        x0.c cVar = this.viewDragHelper;
        if (cVar == null) {
            return false;
        }
        cVar.E(motionEvent);
        return true;
    }

    public void setDragDismissDistance(float f10) {
        this.dragDismissThreshold = clamp(0.0f, f10, 1.0f);
    }

    public void setEndAlphaSwipeDistance(float f10) {
        this.alphaEndSwipeDistance = clamp(0.0f, f10, 1.0f);
    }

    public void setListener(OnDismissListener onDismissListener) {
        this.listener = onDismissListener;
    }

    public void setSensitivity(float f10) {
        this.sensitivity = f10;
        this.sensitivitySet = true;
    }

    public void setStartAlphaSwipeDistance(float f10) {
        this.alphaStartSwipeDistance = clamp(0.0f, f10, 1.0f);
    }

    public void setSwipeDirection(int i10) {
        this.swipeDirection = i10;
    }

    public static int clamp(int i10, int i11, int i12) {
        return Math.min(Math.max(i10, i11), i12);
    }
}
