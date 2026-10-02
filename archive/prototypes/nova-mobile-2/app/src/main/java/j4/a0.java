package j4;

import android.view.View;
import android.widget.LinearLayout;
import com.anslayer.R;
import com.anslayer.widget.MinMaxNumberPicker;

/* compiled from: BirthdatePickerDialogBinding.java */
/* loaded from: classes.dex */
public final class a0 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final LinearLayout f8126a;

    /* renamed from: b, reason: collision with root package name */
    public final MinMaxNumberPicker f8127b;

    /* renamed from: c, reason: collision with root package name */
    public final MinMaxNumberPicker f8128c;

    /* renamed from: d, reason: collision with root package name */
    public final MinMaxNumberPicker f8129d;

    public a0(LinearLayout linearLayout, MinMaxNumberPicker minMaxNumberPicker, MinMaxNumberPicker minMaxNumberPicker2, MinMaxNumberPicker minMaxNumberPicker3) {
        this.f8126a = linearLayout;
        this.f8127b = minMaxNumberPicker;
        this.f8128c = minMaxNumberPicker2;
        this.f8129d = minMaxNumberPicker3;
    }

    public static a0 a(View view) {
        int i10 = R.id.days;
        MinMaxNumberPicker minMaxNumberPicker = (MinMaxNumberPicker) a2.b.a(view, R.id.days);
        if (minMaxNumberPicker != null) {
            i10 = R.id.months;
            MinMaxNumberPicker minMaxNumberPicker2 = (MinMaxNumberPicker) a2.b.a(view, R.id.months);
            if (minMaxNumberPicker2 != null) {
                i10 = R.id.years;
                MinMaxNumberPicker minMaxNumberPicker3 = (MinMaxNumberPicker) a2.b.a(view, R.id.years);
                if (minMaxNumberPicker3 != null) {
                    return new a0((LinearLayout) view, minMaxNumberPicker, minMaxNumberPicker2, minMaxNumberPicker3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
