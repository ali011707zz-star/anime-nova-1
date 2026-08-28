package a1;

import android.annotation.SuppressLint;
import android.text.Editable;
import androidx.emoji2.text.m;

/* compiled from: EmojiEditableFactory.java */
/* loaded from: classes.dex */
public final class b extends Editable.Factory {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f340a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public static volatile Editable.Factory f341b;

    /* renamed from: c, reason: collision with root package name */
    public static Class<?> f342c;

    @SuppressLint({"PrivateApi"})
    public b() {
        try {
            f342c = Class.forName("android.text.DynamicLayout$ChangeWatcher", false, b.class.getClassLoader());
        } catch (Throwable unused) {
        }
    }

    public static Editable.Factory getInstance() {
        if (f341b == null) {
            synchronized (f340a) {
                if (f341b == null) {
                    f341b = new b();
                }
            }
        }
        return f341b;
    }

    @Override // android.text.Editable.Factory
    public Editable newEditable(CharSequence charSequence) {
        Class<?> cls = f342c;
        if (cls != null) {
            return m.c(cls, charSequence);
        }
        return super.newEditable(charSequence);
    }
}
