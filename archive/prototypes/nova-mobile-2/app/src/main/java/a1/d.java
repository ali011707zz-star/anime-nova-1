package a1;

import android.text.InputFilter;
import android.text.Selection;
import android.text.Spannable;
import android.text.Spanned;
import android.widget.TextView;
import androidx.emoji2.text.d;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

/* compiled from: EmojiInputFilter.java */
/* loaded from: classes.dex */
public final class d implements InputFilter {

    /* renamed from: a, reason: collision with root package name */
    public final TextView f345a;

    /* renamed from: b, reason: collision with root package name */
    public d.e f346b;

    /* compiled from: EmojiInputFilter.java */
    /* loaded from: classes.dex */
    public static class a extends d.e {

        /* renamed from: a, reason: collision with root package name */
        public final Reference<TextView> f347a;

        /* renamed from: b, reason: collision with root package name */
        public final Reference<d> f348b;

        public a(TextView textView, d dVar) {
            this.f347a = new WeakReference(textView);
            this.f348b = new WeakReference(dVar);
        }

        @Override // androidx.emoji2.text.d.e
        public void b() {
            super.b();
            TextView textView = this.f347a.get();
            if (c(textView, this.f348b.get()) && textView.isAttachedToWindow()) {
                CharSequence o10 = androidx.emoji2.text.d.b().o(textView.getText());
                int selectionStart = Selection.getSelectionStart(o10);
                int selectionEnd = Selection.getSelectionEnd(o10);
                textView.setText(o10);
                if (o10 instanceof Spannable) {
                    d.b((Spannable) o10, selectionStart, selectionEnd);
                }
            }
        }

        public final boolean c(TextView textView, InputFilter inputFilter) {
            InputFilter[] filters;
            if (inputFilter == null || textView == null || (filters = textView.getFilters()) == null) {
                return false;
            }
            for (InputFilter inputFilter2 : filters) {
                if (inputFilter2 == inputFilter) {
                    return true;
                }
            }
            return false;
        }
    }

    public d(TextView textView) {
        this.f345a = textView;
    }

    public static void b(Spannable spannable, int i10, int i11) {
        if (i10 >= 0 && i11 >= 0) {
            Selection.setSelection(spannable, i10, i11);
        } else if (i10 >= 0) {
            Selection.setSelection(spannable, i10);
        } else if (i11 >= 0) {
            Selection.setSelection(spannable, i11);
        }
    }

    public final d.e a() {
        if (this.f346b == null) {
            this.f346b = new a(this.f345a, this);
        }
        return this.f346b;
    }

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i10, int i11, Spanned spanned, int i12, int i13) {
        if (this.f345a.isInEditMode()) {
            return charSequence;
        }
        int d10 = androidx.emoji2.text.d.b().d();
        if (d10 != 0) {
            boolean z10 = true;
            if (d10 == 1) {
                if (i13 == 0 && i12 == 0 && spanned.length() == 0 && charSequence == this.f345a.getText()) {
                    z10 = false;
                }
                if (!z10 || charSequence == null) {
                    return charSequence;
                }
                if (i10 != 0 || i11 != charSequence.length()) {
                    charSequence = charSequence.subSequence(i10, i11);
                }
                return androidx.emoji2.text.d.b().p(charSequence, 0, charSequence.length());
            }
            if (d10 != 3) {
                return charSequence;
            }
        }
        androidx.emoji2.text.d.b().s(a());
        return charSequence;
    }
}
