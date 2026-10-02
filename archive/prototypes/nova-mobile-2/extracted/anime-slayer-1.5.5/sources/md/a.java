package md;

import android.text.Editable;
import android.widget.TextView;
import jc.l;

/* compiled from: TextViewAfterTextChangeEventFlow.kt */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final TextView f11099a;

    /* renamed from: b, reason: collision with root package name */
    public final Editable f11100b;

    public a(TextView textView, Editable editable) {
        l.f(textView, "view");
        this.f11099a = textView;
        this.f11100b = editable;
    }

    public final Editable a() {
        return this.f11100b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return l.a(this.f11099a, aVar.f11099a) && l.a(this.f11100b, aVar.f11100b);
    }

    public int hashCode() {
        int hashCode = this.f11099a.hashCode() * 31;
        Editable editable = this.f11100b;
        return hashCode + (editable == null ? 0 : editable.hashCode());
    }

    public String toString() {
        return "AfterTextChangeEvent(view=" + this.f11099a + ", editable=" + ((Object) this.f11100b) + ")";
    }
}
