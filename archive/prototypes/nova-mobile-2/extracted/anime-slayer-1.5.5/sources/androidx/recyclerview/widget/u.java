package androidx.recyclerview.widget;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import java.util.Map;
import java.util.WeakHashMap;

/* compiled from: RecyclerViewAccessibilityDelegate.java */
/* loaded from: classes.dex */
public class u extends q0.a {
    private final a mItemDelegate;
    public final RecyclerView mRecyclerView;

    /* compiled from: RecyclerViewAccessibilityDelegate.java */
    /* loaded from: classes.dex */
    public static class a extends q0.a {

        /* renamed from: a, reason: collision with root package name */
        public final u f3083a;

        /* renamed from: b, reason: collision with root package name */
        public Map<View, q0.a> f3084b = new WeakHashMap();

        public a(u uVar) {
            this.f3083a = uVar;
        }

        public q0.a a(View view) {
            return this.f3084b.remove(view);
        }

        public void b(View view) {
            q0.a n10 = q0.b0.n(view);
            if (n10 == null || n10 == this) {
                return;
            }
            this.f3084b.put(view, n10);
        }

        @Override // q0.a
        public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            q0.a aVar = this.f3084b.get(view);
            if (aVar != null) {
                return aVar.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
            }
            return super.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
        }

        @Override // q0.a
        public r0.d getAccessibilityNodeProvider(View view) {
            q0.a aVar = this.f3084b.get(view);
            if (aVar != null) {
                return aVar.getAccessibilityNodeProvider(view);
            }
            return super.getAccessibilityNodeProvider(view);
        }

        @Override // q0.a
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            q0.a aVar = this.f3084b.get(view);
            if (aVar != null) {
                aVar.onInitializeAccessibilityEvent(view, accessibilityEvent);
            } else {
                super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            }
        }

        @Override // q0.a
        public void onInitializeAccessibilityNodeInfo(View view, r0.c cVar) {
            if (!this.f3083a.shouldIgnore() && this.f3083a.mRecyclerView.getLayoutManager() != null) {
                this.f3083a.mRecyclerView.getLayoutManager().onInitializeAccessibilityNodeInfoForItem(view, cVar);
                q0.a aVar = this.f3084b.get(view);
                if (aVar != null) {
                    aVar.onInitializeAccessibilityNodeInfo(view, cVar);
                    return;
                } else {
                    super.onInitializeAccessibilityNodeInfo(view, cVar);
                    return;
                }
            }
            super.onInitializeAccessibilityNodeInfo(view, cVar);
        }

        @Override // q0.a
        public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            q0.a aVar = this.f3084b.get(view);
            if (aVar != null) {
                aVar.onPopulateAccessibilityEvent(view, accessibilityEvent);
            } else {
                super.onPopulateAccessibilityEvent(view, accessibilityEvent);
            }
        }

        @Override // q0.a
        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            q0.a aVar = this.f3084b.get(viewGroup);
            if (aVar != null) {
                return aVar.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
            }
            return super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
        }

        @Override // q0.a
        public boolean performAccessibilityAction(View view, int i10, Bundle bundle) {
            if (!this.f3083a.shouldIgnore() && this.f3083a.mRecyclerView.getLayoutManager() != null) {
                q0.a aVar = this.f3084b.get(view);
                if (aVar != null) {
                    if (aVar.performAccessibilityAction(view, i10, bundle)) {
                        return true;
                    }
                } else if (super.performAccessibilityAction(view, i10, bundle)) {
                    return true;
                }
                return this.f3083a.mRecyclerView.getLayoutManager().performAccessibilityActionForItem(view, i10, bundle);
            }
            return super.performAccessibilityAction(view, i10, bundle);
        }

        @Override // q0.a
        public void sendAccessibilityEvent(View view, int i10) {
            q0.a aVar = this.f3084b.get(view);
            if (aVar != null) {
                aVar.sendAccessibilityEvent(view, i10);
            } else {
                super.sendAccessibilityEvent(view, i10);
            }
        }

        @Override // q0.a
        public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
            q0.a aVar = this.f3084b.get(view);
            if (aVar != null) {
                aVar.sendAccessibilityEventUnchecked(view, accessibilityEvent);
            } else {
                super.sendAccessibilityEventUnchecked(view, accessibilityEvent);
            }
        }
    }

    public u(RecyclerView recyclerView) {
        this.mRecyclerView = recyclerView;
        q0.a itemDelegate = getItemDelegate();
        if (itemDelegate != null && (itemDelegate instanceof a)) {
            this.mItemDelegate = (a) itemDelegate;
        } else {
            this.mItemDelegate = new a(this);
        }
    }

    public q0.a getItemDelegate() {
        return this.mItemDelegate;
    }

    @Override // q0.a
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        if (!(view instanceof RecyclerView) || shouldIgnore()) {
            return;
        }
        RecyclerView recyclerView = (RecyclerView) view;
        if (recyclerView.getLayoutManager() != null) {
            recyclerView.getLayoutManager().onInitializeAccessibilityEvent(accessibilityEvent);
        }
    }

    @Override // q0.a
    public void onInitializeAccessibilityNodeInfo(View view, r0.c cVar) {
        super.onInitializeAccessibilityNodeInfo(view, cVar);
        if (shouldIgnore() || this.mRecyclerView.getLayoutManager() == null) {
            return;
        }
        this.mRecyclerView.getLayoutManager().onInitializeAccessibilityNodeInfo(cVar);
    }

    @Override // q0.a
    public boolean performAccessibilityAction(View view, int i10, Bundle bundle) {
        if (super.performAccessibilityAction(view, i10, bundle)) {
            return true;
        }
        if (shouldIgnore() || this.mRecyclerView.getLayoutManager() == null) {
            return false;
        }
        return this.mRecyclerView.getLayoutManager().performAccessibilityAction(i10, bundle);
    }

    public boolean shouldIgnore() {
        return this.mRecyclerView.hasPendingAdapterUpdates();
    }
}
