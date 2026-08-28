package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.anslayer.R;

/* compiled from: AvailableQualityDialogBinding.java */
/* loaded from: classes.dex */
public final class x implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final RelativeLayout f8790a;

    /* renamed from: b, reason: collision with root package name */
    public final TextView f8791b;

    /* renamed from: c, reason: collision with root package name */
    public final ListView f8792c;

    public x(RelativeLayout relativeLayout, TextView textView, ListView listView) {
        this.f8790a = relativeLayout;
        this.f8791b = textView;
        this.f8792c = listView;
    }

    public static x a(View view) {
        int i10 = R.id.header;
        TextView textView = (TextView) a2.b.a(view, R.id.header);
        if (textView != null) {
            i10 = R.id.listView;
            ListView listView = (ListView) a2.b.a(view, R.id.listView);
            if (listView != null) {
                return new x((RelativeLayout) view, textView, listView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static x c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static x d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.available_quality_dialog, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public RelativeLayout b() {
        return this.f8790a;
    }
}
