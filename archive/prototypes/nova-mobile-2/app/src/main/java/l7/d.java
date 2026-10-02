package l7;

import android.view.MotionEvent;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: SingleScrollDirectionEnforcer.kt */
/* loaded from: classes.dex */
public final class d extends RecyclerView.u implements RecyclerView.t {

    /* renamed from: a, reason: collision with root package name */
    public int f10488a;

    /* renamed from: b, reason: collision with root package name */
    public int f10489b = -1;

    /* renamed from: c, reason: collision with root package name */
    public int f10490c;

    /* renamed from: d, reason: collision with root package name */
    public int f10491d;

    /* renamed from: e, reason: collision with root package name */
    public int f10492e;

    /* renamed from: f, reason: collision with root package name */
    public int f10493f;

    @Override // androidx.recyclerview.widget.RecyclerView.t
    public boolean a(RecyclerView recyclerView, MotionEvent motionEvent) {
        jc.l.f(recyclerView, "rv");
        jc.l.f(motionEvent, o7.e.f11821u);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f10489b = motionEvent.getPointerId(0);
            this.f10490c = (int) (motionEvent.getX() + 0.5f);
            this.f10491d = (int) (motionEvent.getY() + 0.5f);
        } else if (actionMasked == 2) {
            int findPointerIndex = motionEvent.findPointerIndex(this.f10489b);
            if (findPointerIndex >= 0 && this.f10488a != 1) {
                int x10 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
                int y10 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
                this.f10492e = x10 - this.f10490c;
                this.f10493f = y10 - this.f10491d;
            }
        } else if (actionMasked == 5) {
            int actionIndex = motionEvent.getActionIndex();
            this.f10489b = motionEvent.getPointerId(actionIndex);
            this.f10490c = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.f10491d = (int) (motionEvent.getY(actionIndex) + 0.5f);
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.t
    public void b(RecyclerView recyclerView, MotionEvent motionEvent) {
        jc.l.f(recyclerView, "rv");
        jc.l.f(motionEvent, o7.e.f11821u);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.t
    public void c(boolean z10) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.u
    public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
        RecyclerView.p layoutManager;
        boolean canScrollHorizontally;
        boolean canScrollVertically;
        jc.l.f(recyclerView, "recyclerView");
        int i11 = this.f10488a;
        this.f10488a = i10;
        if (i11 != 0 || i10 != 1 || (layoutManager = recyclerView.getLayoutManager()) == null || (canScrollHorizontally = layoutManager.canScrollHorizontally()) == (canScrollVertically = layoutManager.canScrollVertically())) {
            return;
        }
        if ((!canScrollHorizontally || Math.abs(this.f10493f) <= Math.abs(this.f10492e)) && (!canScrollVertically || Math.abs(this.f10492e) <= Math.abs(this.f10493f))) {
            return;
        }
        recyclerView.stopScroll();
    }
}
