package x2;

import android.R;
import android.annotation.SuppressLint;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.view.View;
import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;
import ic.l;
import jc.m;
import vb.p;

/* compiled from: DialogInputExt.kt */
/* loaded from: classes.dex */
public final class a {

    /* compiled from: DialogInputExt.kt */
    /* renamed from: x2.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0409a extends m implements l<s2.c, p> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ s2.c f15833f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0409a(s2.c cVar) {
            super(1);
            this.f15833f = cVar;
        }

        public final void a(s2.c cVar) {
            jc.l.g(cVar, "it");
            x2.b.b(this.f15833f);
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(s2.c cVar) {
            a(cVar);
            return p.f15031a;
        }
    }

    /* compiled from: DialogInputExt.kt */
    /* loaded from: classes.dex */
    public static final class b extends m implements l<s2.c, p> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ s2.c f15834f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ ic.p f15835g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(s2.c cVar, ic.p pVar) {
            super(1);
            this.f15834f = cVar;
            this.f15835g = pVar;
        }

        public final void a(s2.c cVar) {
            jc.l.g(cVar, "it");
            ic.p pVar = this.f15835g;
            s2.c cVar2 = this.f15834f;
            CharSequence text = a.a(cVar2).getText();
            if (text == null) {
                text = "";
            }
            pVar.invoke(cVar2, text);
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(s2.c cVar) {
            a(cVar);
            return p.f15031a;
        }
    }

    /* compiled from: DialogInputExt.kt */
    /* loaded from: classes.dex */
    public static final class c extends m implements l<CharSequence, p> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ s2.c f15836f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ boolean f15837g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ Integer f15838h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ boolean f15839i;

        /* renamed from: j, reason: collision with root package name */
        public final /* synthetic */ ic.p f15840j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(s2.c cVar, boolean z10, Integer num, boolean z11, ic.p pVar) {
            super(1);
            this.f15836f = cVar;
            this.f15837g = z10;
            this.f15838h = num;
            this.f15839i = z11;
            this.f15840j = pVar;
        }

        public final void a(CharSequence charSequence) {
            ic.p pVar;
            jc.l.g(charSequence, "it");
            if (!this.f15837g) {
                t2.a.d(this.f15836f, s2.m.POSITIVE, charSequence.length() > 0);
            }
            Integer num = this.f15838h;
            if (num != null) {
                num.intValue();
                x2.b.a(this.f15836f, this.f15837g);
            }
            if (this.f15839i || (pVar = this.f15840j) == null) {
                return;
            }
            pVar.invoke(this.f15836f, charSequence);
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(CharSequence charSequence) {
            a(charSequence);
            return p.f15031a;
        }
    }

    /* compiled from: DialogInputExt.kt */
    /* loaded from: classes.dex */
    public static final class d extends m implements l<s2.c, p> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ EditText f15841f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ CharSequence f15842g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(EditText editText, CharSequence charSequence) {
            super(1);
            this.f15841f = editText;
            this.f15842g = charSequence;
        }

        public final void a(s2.c cVar) {
            jc.l.g(cVar, "it");
            this.f15841f.setSelection(this.f15842g.length());
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(s2.c cVar) {
            a(cVar);
            return p.f15031a;
        }
    }

    public static final EditText a(s2.c cVar) {
        jc.l.g(cVar, "$this$getInputField");
        EditText editText = b(cVar).getEditText();
        if (editText != null) {
            return editText;
        }
        throw new IllegalStateException("You have not setup this dialog as an input dialog.");
    }

    public static final TextInputLayout b(s2.c cVar) {
        jc.l.g(cVar, "$this$getInputLayout");
        Object obj = cVar.e().get("[custom_view_input_layout]");
        if (!(obj instanceof TextInputLayout)) {
            obj = null;
        }
        TextInputLayout textInputLayout = (TextInputLayout) obj;
        if (textInputLayout != null) {
            return textInputLayout;
        }
        TextInputLayout e10 = e(cVar);
        cVar.e().put("[custom_view_input_layout]", e10);
        return e10;
    }

    @SuppressLint({"CheckResult"})
    public static final s2.c c(s2.c cVar, String str, Integer num, CharSequence charSequence, Integer num2, int i10, Integer num3, boolean z10, boolean z11, ic.p<? super s2.c, ? super CharSequence, p> pVar) {
        jc.l.g(cVar, "$this$input");
        w2.a.b(cVar, Integer.valueOf(e.f15848a), null, false, false, false, false, 62, null);
        u2.a.b(cVar, new C0409a(cVar));
        if (!t2.a.c(cVar)) {
            s2.c.v(cVar, Integer.valueOf(R.string.ok), null, null, 6, null);
        }
        if (pVar != null && z10) {
            s2.c.v(cVar, null, null, new b(cVar, pVar), 3, null);
        }
        f(cVar, charSequence, num2, z11);
        g(cVar, str, num, i10);
        if (num3 != null) {
            TextInputLayout b10 = b(cVar);
            b10.setCounterEnabled(true);
            b10.setCounterMaxLength(num3.intValue());
            x2.b.a(cVar, z11);
        }
        d3.e.f5611a.v(a(cVar), new c(cVar, z11, num3, z10, pVar));
        return cVar;
    }

    public static /* synthetic */ s2.c d(s2.c cVar, String str, Integer num, CharSequence charSequence, Integer num2, int i10, Integer num3, boolean z10, boolean z11, ic.p pVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = null;
        }
        if ((i11 & 2) != 0) {
            num = null;
        }
        if ((i11 & 4) != 0) {
            charSequence = null;
        }
        if ((i11 & 8) != 0) {
            num2 = null;
        }
        if ((i11 & 16) != 0) {
            i10 = 1;
        }
        if ((i11 & 32) != 0) {
            num3 = null;
        }
        if ((i11 & 64) != 0) {
            z10 = true;
        }
        if ((i11 & 128) != 0) {
            z11 = false;
        }
        if ((i11 & 256) != 0) {
            pVar = null;
        }
        return c(cVar, str, num, charSequence, num2, i10, num3, z10, z11, pVar);
    }

    public static final TextInputLayout e(s2.c cVar) {
        View findViewById = w2.a.c(cVar).findViewById(x2.d.f15847a);
        if (!(findViewById instanceof TextInputLayout)) {
            findViewById = null;
        }
        TextInputLayout textInputLayout = (TextInputLayout) findViewById;
        if (textInputLayout != null) {
            return textInputLayout;
        }
        throw new IllegalStateException("You have not setup this dialog as an input dialog.");
    }

    public static final void f(s2.c cVar, CharSequence charSequence, Integer num, boolean z10) {
        Resources resources = cVar.i().getResources();
        EditText a10 = a(cVar);
        if (charSequence == null) {
            charSequence = num != null ? resources.getString(num.intValue()) : "";
            jc.l.b(charSequence, "if (prefillRes != null) …tring(prefillRes) else \"\"");
        }
        boolean z11 = true;
        if (charSequence.length() > 0) {
            a10.setText(charSequence);
            u2.a.c(cVar, new d(a10, charSequence));
        }
        s2.m mVar = s2.m.POSITIVE;
        if (!z10) {
            if (!(charSequence.length() > 0)) {
                z11 = false;
            }
        }
        t2.a.d(cVar, mVar, z11);
    }

    public static final void g(s2.c cVar, String str, Integer num, int i10) {
        Resources resources = cVar.i().getResources();
        EditText a10 = a(cVar);
        if (str == null) {
            str = num != null ? resources.getString(num.intValue()) : null;
        }
        a10.setHint(str);
        a10.setInputType(i10);
        d3.e.f5611a.i(a10, cVar.i(), Integer.valueOf(x2.c.f15845a), Integer.valueOf(x2.c.f15846b));
        Typeface d10 = cVar.d();
        if (d10 != null) {
            a10.setTypeface(d10);
        }
    }
}
