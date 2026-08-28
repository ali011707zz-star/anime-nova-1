package c3;

import android.text.Html;
import android.widget.TextView;
import d3.e;
import jc.l;
import s2.c;

/* compiled from: DialogMessageSettings.kt */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public boolean f3665a;

    /* renamed from: b, reason: collision with root package name */
    public final c f3666b;

    /* renamed from: c, reason: collision with root package name */
    public final TextView f3667c;

    public a(c cVar, TextView textView) {
        l.g(cVar, "dialog");
        l.g(textView, "messageTextView");
        this.f3666b = cVar;
        this.f3667c = textView;
    }

    public final CharSequence a(CharSequence charSequence, boolean z10) {
        if (charSequence == null) {
            return null;
        }
        return z10 ? Html.fromHtml(charSequence.toString()) : charSequence;
    }

    public final void b(Integer num, CharSequence charSequence) {
        TextView textView = this.f3667c;
        CharSequence a10 = a(charSequence, this.f3665a);
        if (a10 == null) {
            a10 = e.u(e.f5611a, this.f3666b, num, null, this.f3665a, 4, null);
        }
        textView.setText(a10);
    }
}
