package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.gms.common.api.Api;
import k0.a;
import q0.b0;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class HeaderBehavior<V extends View> extends ViewOffsetBehavior<V> {
    private static final int INVALID_POINTER = -1;
    private int activePointerId;
    private Runnable flingRunnable;
    private boolean isBeingDragged;
    private int lastMotionY;
    public OverScroller scroller;
    private int touchSlop;
    private VelocityTracker velocityTracker;

    /* loaded from: classes.dex */
    public class FlingRunnable implements Runnable {
        private final V layout;
        private final CoordinatorLayout parent;

        public FlingRunnable(CoordinatorLayout coordinatorLayout, V v10) {
            this.parent = coordinatorLayout;
            this.layout = v10;
        }

        @Override // java.lang.Runnable
        public void run() {
            OverScroller overScroller;
            if (this.layout == null || (overScroller = HeaderBehavior.this.scroller) == null) {
                return;
            }
            if (overScroller.computeScrollOffset()) {
                HeaderBehavior headerBehavior = HeaderBehavior.this;
                headerBehavior.setHeaderTopBottomOffset(this.parent, this.layout, headerBehavior.scroller.getCurrY());
                b0.l0(this.layout, this);
                return;
            }
            HeaderBehavior.this.onFlingFinished(this.parent, this.layout);
        }
    }

    public HeaderBehavior() {
        this.activePointerId = -1;
        this.touchSlop = -1;
    }

    private void ensureVelocityTracker() {
        if (this.velocityTracker == null) {
            this.velocityTracker = VelocityTracker.obtain();
        }
    }

    public boolean canDragView(V v10) {
        return false;
    }

    public final boolean fling(CoordinatorLayout coordinatorLayout, V v10, int i10, int i11, float f10) {
        Runnable runnable = this.flingRunnable;
        if (runnable != null) {
            v10.removeCallbacks(runnable);
            this.flingRunnable = null;
        }
        if (this.scroller == null) {
            this.scroller = new OverScroller(v10.getContext());
        }
        this.scroller.fling(0, getTopAndBottomOffset(), 0, Math.round(f10), 0, 0, i10, i11);
        if (this.scroller.computeScrollOffset()) {
            FlingRunnable flingRunnable = new FlingRunnable(coordinatorLayout, v10);
            this.flingRunnable = flingRunnable;
            b0.l0(v10, flingRunnable);
            return true;
        }
        onFlingFinished(coordinatorLayout, v10);
        return false;
    }

    public int getMaxDragOffset(V v10) {
        return -v10.getHeight();
    }

    public int getScrollRangeForDragFling(V v10) {
        return v10.getHeight();
    }

    public int getTopBottomOffsetForScrollingSibling() {
        return getTopAndBottomOffset();
    }

    public void onFlingFinished(CoordinatorLayout coordinatorLayout, V v10) {
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, V v10, MotionEvent motionEvent) {
        int findPointerIndex;
        if (this.touchSlop < 0) {
            this.touchSlop = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getActionMasked() == 2 && this.isBeingDragged) {
            int i10 = this.activePointerId;
            if (i10 == -1 || (findPointerIndex = motionEvent.findPointerIndex(i10)) == -1) {
                return false;
            }
            int y10 = (int) motionEvent.getY(findPointerIndex);
            if (Math.abs(y10 - this.lastMotionY) > this.touchSlop) {
                this.lastMotionY = y10;
                return true;
            }
        }
        if (motionEvent.getActionMasked() == 0) {
            this.activePointerId = -1;
            int x10 = (int) motionEvent.getX();
            int y11 = (int) motionEvent.getY();
            boolean z10 = canDragView(v10) && coordinatorLayout.isPointInChildBounds(v10, x10, y11);
            this.isBeingDragged = z10;
            if (z10) {
                this.lastMotionY = y11;
                this.activePointerId = motionEvent.getPointerId(0);
                ensureVelocityTracker();
                OverScroller overScroller = this.scroller;
                if (overScroller != null && !overScroller.isFinished()) {
                    this.scroller.abortAnimation();
                    return true;
                }
            }
        }
        VelocityTracker velocityTracker = this.velocityTracker;
        if (velocityTracker != null) {
            velocityTracker.addMovement(motionEvent);
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x008c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x007b  */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v10, MotionEvent motionEvent) {
        boolean z10;
        VelocityTracker velocityTracker;
        VelocityTracker velocityTracker2;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1) {
            VelocityTracker velocityTracker3 = this.velocityTracker;
            if (velocityTracker3 != null) {
                velocityTracker3.addMovement(motionEvent);
                this.velocityTracker.computeCurrentVelocity(1000);
                fling(coordinatorLayout, v10, -getScrollRangeForDragFling(v10), 0, this.velocityTracker.getYVelocity(this.activePointerId));
                z10 = true;
                this.isBeingDragged = false;
                this.activePointerId = -1;
                velocityTracker = this.velocityTracker;
                if (velocityTracker != null) {
                    velocityTracker.recycle();
                    this.velocityTracker = null;
                }
                velocityTracker2 = this.velocityTracker;
                if (velocityTracker2 != null) {
                }
                if (this.isBeingDragged) {
                    return true;
                }
            }
        } else {
            if (actionMasked == 2) {
                int findPointerIndex = motionEvent.findPointerIndex(this.activePointerId);
                if (findPointerIndex == -1) {
                    return false;
                }
                int y10 = (int) motionEvent.getY(findPointerIndex);
                int i10 = this.lastMotionY - y10;
                this.lastMotionY = y10;
                scroll(coordinatorLayout, v10, i10, getMaxDragOffset(v10), 0);
            } else if (actionMasked != 3) {
                if (actionMasked == 6) {
                    int i11 = motionEvent.getActionIndex() == 0 ? 1 : 0;
                    this.activePointerId = motionEvent.getPointerId(i11);
                    this.lastMotionY = (int) (motionEvent.getY(i11) + 0.5f);
                }
            }
            z10 = false;
            velocityTracker2 = this.velocityTracker;
            if (velocityTracker2 != null) {
                velocityTracker2.addMovement(motionEvent);
            }
            return !this.isBeingDragged || z10;
        }
        z10 = false;
        this.isBeingDragged = false;
        this.activePointerId = -1;
        velocityTracker = this.velocityTracker;
        if (velocityTracker != null) {
        }
        velocityTracker2 = this.velocityTracker;
        if (velocityTracker2 != null) {
        }
        if (this.isBeingDragged) {
        }
    }

    public final int scroll(CoordinatorLayout coordinatorLayout, V v10, int i10, int i11, int i12) {
        return setHeaderTopBottomOffset(coordinatorLayout, v10, getTopBottomOffsetForScrollingSibling() - i10, i11, i12);
    }

    public int setHeaderTopBottomOffset(CoordinatorLayout coordinatorLayout, V v10, int i10) {
        return setHeaderTopBottomOffset(coordinatorLayout, v10, i10, Integer.MIN_VALUE, Api.BaseClientBuilder.API_PRIORITY_OTHER);
    }

    public int setHeaderTopBottomOffset(CoordinatorLayout coordinatorLayout, V v10, int i10, int i11, int i12) {
        int b10;
        int topAndBottomOffset = getTopAndBottomOffset();
        if (i11 == 0 || topAndBottomOffset < i11 || topAndBottomOffset > i12 || topAndBottomOffset == (b10 = a.b(i10, i11, i12))) {
            return 0;
        }
        setTopAndBottomOffset(b10);
        return topAndBottomOffset - b10;
    }

    public HeaderBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.activePointerId = -1;
        this.touchSlop = -1;
    }
}
