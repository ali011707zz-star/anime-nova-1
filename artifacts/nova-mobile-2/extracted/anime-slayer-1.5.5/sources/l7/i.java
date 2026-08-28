package l7;

import androidx.core.widget.NestedScrollView;
import com.google.android.material.floatingactionbutton.FloatingActionButton;

/* compiled from: ViewExtensions.kt */
/* loaded from: classes.dex */
public final class i implements NestedScrollView.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FloatingActionButton f10498a;

    public i(FloatingActionButton floatingActionButton) {
        this.f10498a = floatingActionButton;
    }

    @Override // androidx.core.widget.NestedScrollView.b
    public final void a(NestedScrollView nestedScrollView, int i10, int i11, int i12, int i13) {
        if (i11 > i13) {
            this.f10498a.hide();
        } else {
            this.f10498a.show();
        }
    }
}
