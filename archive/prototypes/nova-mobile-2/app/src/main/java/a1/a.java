package a1;

import android.os.Build;
import android.text.method.KeyListener;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import com.google.android.gms.common.api.Api;
import p0.i;

/* compiled from: EmojiEditTextHelper.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final b f335a;

    /* renamed from: b, reason: collision with root package name */
    public int f336b = Api.BaseClientBuilder.API_PRIORITY_OTHER;

    /* renamed from: c, reason: collision with root package name */
    public int f337c = 0;

    /* compiled from: EmojiEditTextHelper.java */
    /* renamed from: a1.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0004a extends b {

        /* renamed from: a, reason: collision with root package name */
        public final EditText f338a;

        /* renamed from: b, reason: collision with root package name */
        public final g f339b;

        public C0004a(EditText editText, boolean z10) {
            this.f338a = editText;
            g gVar = new g(editText, z10);
            this.f339b = gVar;
            editText.addTextChangedListener(gVar);
            editText.setEditableFactory(a1.b.getInstance());
        }

        @Override // a1.a.b
        public KeyListener a(KeyListener keyListener) {
            if (keyListener instanceof e) {
                return keyListener;
            }
            if (keyListener == null) {
                return null;
            }
            return new e(keyListener);
        }

        @Override // a1.a.b
        public boolean b() {
            return this.f339b.b();
        }

        @Override // a1.a.b
        public InputConnection c(InputConnection inputConnection, EditorInfo editorInfo) {
            return inputConnection instanceof c ? inputConnection : new c(this.f338a, inputConnection, editorInfo);
        }

        @Override // a1.a.b
        public void d(boolean z10) {
            this.f339b.d(z10);
        }
    }

    /* compiled from: EmojiEditTextHelper.java */
    /* loaded from: classes.dex */
    public static class b {
        public KeyListener a(KeyListener keyListener) {
            return keyListener;
        }

        public boolean b() {
            return false;
        }

        public InputConnection c(InputConnection inputConnection, EditorInfo editorInfo) {
            return inputConnection;
        }

        public void d(boolean z10) {
        }
    }

    public a(EditText editText, boolean z10) {
        i.h(editText, "editText cannot be null");
        if (Build.VERSION.SDK_INT < 19) {
            this.f335a = new b();
        } else {
            this.f335a = new C0004a(editText, z10);
        }
    }

    public KeyListener a(KeyListener keyListener) {
        return this.f335a.a(keyListener);
    }

    public boolean b() {
        return this.f335a.b();
    }

    public InputConnection c(InputConnection inputConnection, EditorInfo editorInfo) {
        if (inputConnection == null) {
            return null;
        }
        return this.f335a.c(inputConnection, editorInfo);
    }

    public void d(boolean z10) {
        this.f335a.d(z10);
    }
}
