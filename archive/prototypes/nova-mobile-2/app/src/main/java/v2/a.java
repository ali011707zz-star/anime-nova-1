package v2;

import android.graphics.Typeface;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import androidx.appcompat.widget.AppCompatCheckBox;
import com.afollestad.materialdialogs.internal.button.DialogActionButtonLayout;
import d3.e;
import ic.l;
import s2.c;
import s2.f;
import u0.d;
import vb.p;

/* compiled from: DialogCheckboxExt.kt */
/* loaded from: classes.dex */
public final class a {

    /* compiled from: DialogCheckboxExt.kt */
    /* renamed from: v2.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0384a implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ c f14788f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ String f14789g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ int f14790h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ boolean f14791i;

        /* renamed from: j, reason: collision with root package name */
        public final /* synthetic */ l f14792j;

        public C0384a(c cVar, String str, int i10, boolean z10, l lVar) {
            this.f14788f = cVar;
            this.f14789g = str;
            this.f14790h = i10;
            this.f14791i = z10;
            this.f14792j = lVar;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
            l lVar = this.f14792j;
            if (lVar != null) {
            }
        }
    }

    public static final c a(c cVar, int i10, String str, boolean z10, l<? super Boolean, p> lVar) {
        AppCompatCheckBox checkBoxPrompt;
        jc.l.g(cVar, "$this$checkBoxPrompt");
        e eVar = e.f5611a;
        eVar.a("checkBoxPrompt", str, Integer.valueOf(i10));
        DialogActionButtonLayout buttonsLayout = cVar.h().getButtonsLayout();
        if (buttonsLayout != null && (checkBoxPrompt = buttonsLayout.getCheckBoxPrompt()) != null) {
            checkBoxPrompt.setVisibility(0);
            checkBoxPrompt.setText(str != null ? str : e.u(eVar, cVar, Integer.valueOf(i10), null, false, 12, null));
            checkBoxPrompt.setChecked(z10);
            checkBoxPrompt.setOnCheckedChangeListener(new C0384a(cVar, str, i10, z10, lVar));
            e.j(eVar, checkBoxPrompt, cVar.i(), Integer.valueOf(f.f13665i), null, 4, null);
            Typeface d10 = cVar.d();
            if (d10 != null) {
                checkBoxPrompt.setTypeface(d10);
            }
            int[] e10 = d3.a.e(cVar, new int[]{f.f13667k, f.f13668l}, null, 2, null);
            d.c(checkBoxPrompt, eVar.b(cVar.i(), e10[1], e10[0]));
        }
        return cVar;
    }

    public static /* synthetic */ c b(c cVar, int i10, String str, boolean z10, l lVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        if ((i11 & 2) != 0) {
            str = null;
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return a(cVar, i10, str, z10, lVar);
    }

    public static final CheckBox c(c cVar) {
        AppCompatCheckBox checkBoxPrompt;
        jc.l.g(cVar, "$this$getCheckBoxPrompt");
        DialogActionButtonLayout buttonsLayout = cVar.h().getButtonsLayout();
        if (buttonsLayout == null || (checkBoxPrompt = buttonsLayout.getCheckBoxPrompt()) == null) {
            throw new IllegalStateException("The dialog does not have an attached buttons layout.");
        }
        return checkBoxPrompt;
    }
}
