package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.anslayer.R;
import com.google.android.material.button.MaterialButton;

/* compiled from: SeasonArchiveItemBinding.java */
/* loaded from: classes.dex */
public final class x1 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final ConstraintLayout f8809a;

    /* renamed from: b, reason: collision with root package name */
    public final MaterialButton f8810b;

    /* renamed from: c, reason: collision with root package name */
    public final MaterialButton f8811c;

    /* renamed from: d, reason: collision with root package name */
    public final MaterialButton f8812d;

    /* renamed from: e, reason: collision with root package name */
    public final MaterialButton f8813e;

    /* renamed from: f, reason: collision with root package name */
    public final TextView f8814f;

    public x1(ConstraintLayout constraintLayout, MaterialButton materialButton, MaterialButton materialButton2, MaterialButton materialButton3, MaterialButton materialButton4, TextView textView) {
        this.f8809a = constraintLayout;
        this.f8810b = materialButton;
        this.f8811c = materialButton2;
        this.f8812d = materialButton3;
        this.f8813e = materialButton4;
        this.f8814f = textView;
    }

    public static x1 a(View view) {
        int i10 = R.id.fall;
        MaterialButton materialButton = (MaterialButton) a2.b.a(view, R.id.fall);
        if (materialButton != null) {
            i10 = R.id.spring;
            MaterialButton materialButton2 = (MaterialButton) a2.b.a(view, R.id.spring);
            if (materialButton2 != null) {
                i10 = R.id.summer;
                MaterialButton materialButton3 = (MaterialButton) a2.b.a(view, R.id.summer);
                if (materialButton3 != null) {
                    i10 = R.id.winter;
                    MaterialButton materialButton4 = (MaterialButton) a2.b.a(view, R.id.winter);
                    if (materialButton4 != null) {
                        i10 = R.id.year;
                        TextView textView = (TextView) a2.b.a(view, R.id.year);
                        if (textView != null) {
                            return new x1((ConstraintLayout) view, materialButton, materialButton2, materialButton3, materialButton4, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static x1 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.season_archive_item, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public ConstraintLayout b() {
        return this.f8809a;
    }
}
