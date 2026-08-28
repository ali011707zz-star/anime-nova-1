package ya;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import jc.l;
import qa.d;
import qa.e;

/* compiled from: DefaultYouTubePlayerMenu.kt */
/* loaded from: classes.dex */
public final class a implements xa.b {

    /* renamed from: a, reason: collision with root package name */
    public final Context f16790a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList<xa.a> f16791b;

    /* renamed from: c, reason: collision with root package name */
    public PopupWindow f16792c;

    public a(Context context) {
        l.f(context, "context");
        this.f16790a = context;
        this.f16791b = new ArrayList<>();
    }

    @Override // xa.b
    public void a(View view) {
        l.f(view, "anchorView");
        PopupWindow b10 = b();
        this.f16792c = b10;
        if (b10 != null) {
            Resources resources = this.f16790a.getResources();
            int i10 = qa.b.f12620b;
            b10.showAsDropDown(view, (-resources.getDimensionPixelSize(i10)) * 12, (-this.f16790a.getResources().getDimensionPixelSize(i10)) * 12);
        }
        this.f16791b.size();
    }

    public final PopupWindow b() {
        Object systemService = this.f16790a.getSystemService("layout_inflater");
        if (systemService != null) {
            View inflate = ((LayoutInflater) systemService).inflate(e.f12640c, (ViewGroup) null);
            RecyclerView recyclerView = (RecyclerView) inflate.findViewById(d.f12633k);
            recyclerView.setLayoutManager(new LinearLayoutManager(this.f16790a));
            recyclerView.setAdapter(new b(this.f16790a, this.f16791b));
            recyclerView.setHasFixedSize(true);
            PopupWindow popupWindow = new PopupWindow(inflate, -2, -2);
            popupWindow.setContentView(inflate);
            popupWindow.setFocusable(true);
            popupWindow.setWidth(-2);
            popupWindow.setHeight(-2);
            return popupWindow;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.view.LayoutInflater");
    }
}
