package m1;

import android.R;
import android.util.SparseArray;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: PreferenceViewHolder.java */
/* loaded from: classes.dex */
public class f extends RecyclerView.e0 {

    /* renamed from: a, reason: collision with root package name */
    public final SparseArray<View> f10677a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f10678b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f10679c;

    public f(View view) {
        super(view);
        SparseArray<View> sparseArray = new SparseArray<>(4);
        this.f10677a = sparseArray;
        sparseArray.put(R.id.title, view.findViewById(R.id.title));
        sparseArray.put(R.id.summary, view.findViewById(R.id.summary));
        sparseArray.put(R.id.icon, view.findViewById(R.id.icon));
        int i10 = j.f10695a;
        sparseArray.put(i10, view.findViewById(i10));
        sparseArray.put(R.id.icon_frame, view.findViewById(R.id.icon_frame));
    }

    public View a(int i10) {
        View view = this.f10677a.get(i10);
        if (view != null) {
            return view;
        }
        View findViewById = this.itemView.findViewById(i10);
        if (findViewById != null) {
            this.f10677a.put(i10, findViewById);
        }
        return findViewById;
    }

    public boolean b() {
        return this.f10678b;
    }

    public boolean c() {
        return this.f10679c;
    }

    public void d(boolean z10) {
        this.f10678b = z10;
    }

    public void e(boolean z10) {
        this.f10679c = z10;
    }
}
