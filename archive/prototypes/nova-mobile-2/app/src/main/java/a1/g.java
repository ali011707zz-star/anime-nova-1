package a1;

import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.TextWatcher;
import android.widget.EditText;
import androidx.emoji2.text.d;
import com.google.android.gms.common.api.Api;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

/* compiled from: EmojiTextWatcher.java */
/* loaded from: classes.dex */
public final class g implements TextWatcher {

    /* renamed from: f, reason: collision with root package name */
    public final EditText f356f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f357g;

    /* renamed from: h, reason: collision with root package name */
    public d.e f358h;

    /* renamed from: i, reason: collision with root package name */
    public int f359i = Api.BaseClientBuilder.API_PRIORITY_OTHER;

    /* renamed from: j, reason: collision with root package name */
    public int f360j = 0;

    /* renamed from: k, reason: collision with root package name */
    public boolean f361k = true;

    /* compiled from: EmojiTextWatcher.java */
    /* loaded from: classes.dex */
    public static class a extends d.e {

        /* renamed from: a, reason: collision with root package name */
        public final Reference<EditText> f362a;

        public a(EditText editText) {
            this.f362a = new WeakReference(editText);
        }

        @Override // androidx.emoji2.text.d.e
        public void b() {
            super.b();
            g.c(this.f362a.get(), 1);
        }
    }

    public g(EditText editText, boolean z10) {
        this.f356f = editText;
        this.f357g = z10;
    }

    public static void c(EditText editText, int i10) {
        if (i10 == 1 && editText != null && editText.isAttachedToWindow()) {
            Editable editableText = editText.getEditableText();
            int selectionStart = Selection.getSelectionStart(editableText);
            int selectionEnd = Selection.getSelectionEnd(editableText);
            androidx.emoji2.text.d.b().o(editableText);
            d.b(editableText, selectionStart, selectionEnd);
        }
    }

    public final d.e a() {
        if (this.f358h == null) {
            this.f358h = new a(this.f356f);
        }
        return this.f358h;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    public boolean b() {
        return this.f361k;
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
    }

    public void d(boolean z10) {
        if (this.f361k != z10) {
            if (this.f358h != null) {
                androidx.emoji2.text.d.b().t(this.f358h);
            }
            this.f361k = z10;
            if (z10) {
                c(this.f356f, androidx.emoji2.text.d.b().d());
            }
        }
    }

    public final boolean e() {
        return (this.f361k && (this.f357g || androidx.emoji2.text.d.h())) ? false : true;
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        if (this.f356f.isInEditMode() || e() || i11 > i12 || !(charSequence instanceof Spannable)) {
            return;
        }
        int d10 = androidx.emoji2.text.d.b().d();
        if (d10 != 0) {
            if (d10 == 1) {
                androidx.emoji2.text.d.b().r((Spannable) charSequence, i10, i10 + i12, this.f359i, this.f360j);
                return;
            } else if (d10 != 3) {
                return;
            }
        }
        androidx.emoji2.text.d.b().s(a());
    }
}
