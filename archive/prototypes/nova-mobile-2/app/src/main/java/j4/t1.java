package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.anslayer.R;

/* compiled from: ScheduleSeparatorItemBinding.java */
/* loaded from: classes.dex */
public final class t1 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final FrameLayout f8721a;

    /* renamed from: b, reason: collision with root package name */
    public final AppCompatTextView f8722b;

    public t1(FrameLayout frameLayout, AppCompatTextView appCompatTextView) {
        this.f8721a = frameLayout;
        this.f8722b = appCompatTextView;
    }

    public static t1 a(View view) {
        AppCompatTextView appCompatTextView = (AppCompatTextView) a2.b.a(view, R.id.scheduleHeader);
        if (appCompatTextView != null) {
            return new t1((FrameLayout) view, appCompatTextView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.scheduleHeader)));
    }

    public static t1 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.schedule_separator_item, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public FrameLayout b() {
        return this.f8721a;
    }
}
