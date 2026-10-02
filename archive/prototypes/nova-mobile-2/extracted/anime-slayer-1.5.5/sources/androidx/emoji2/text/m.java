package androidx.emoji2.text;

import android.annotation.SuppressLint;
import android.text.Editable;
import android.text.SpanWatcher;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextWatcher;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: SpannableBuilder.java */
/* loaded from: classes.dex */
public final class m extends SpannableStringBuilder {

    /* renamed from: f, reason: collision with root package name */
    public final Class<?> f2002f;

    /* renamed from: g, reason: collision with root package name */
    public final List<a> f2003g;

    /* compiled from: SpannableBuilder.java */
    /* loaded from: classes.dex */
    public static class a implements TextWatcher, SpanWatcher {

        /* renamed from: f, reason: collision with root package name */
        public final Object f2004f;

        /* renamed from: g, reason: collision with root package name */
        public final AtomicInteger f2005g = new AtomicInteger(0);

        public a(Object obj) {
            this.f2004f = obj;
        }

        public final void a() {
            this.f2005g.incrementAndGet();
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            ((TextWatcher) this.f2004f).afterTextChanged(editable);
        }

        public final boolean b(Object obj) {
            return obj instanceof h;
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            ((TextWatcher) this.f2004f).beforeTextChanged(charSequence, i10, i11, i12);
        }

        public final void c() {
            this.f2005g.decrementAndGet();
        }

        @Override // android.text.SpanWatcher
        public void onSpanAdded(Spannable spannable, Object obj, int i10, int i11) {
            if (this.f2005g.get() <= 0 || !b(obj)) {
                ((SpanWatcher) this.f2004f).onSpanAdded(spannable, obj, i10, i11);
            }
        }

        @Override // android.text.SpanWatcher
        public void onSpanChanged(Spannable spannable, Object obj, int i10, int i11, int i12, int i13) {
            if (this.f2005g.get() <= 0 || !b(obj)) {
                ((SpanWatcher) this.f2004f).onSpanChanged(spannable, obj, i10, i11, i12, i13);
            }
        }

        @Override // android.text.SpanWatcher
        public void onSpanRemoved(Spannable spannable, Object obj, int i10, int i11) {
            if (this.f2005g.get() <= 0 || !b(obj)) {
                ((SpanWatcher) this.f2004f).onSpanRemoved(spannable, obj, i10, i11);
            }
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            ((TextWatcher) this.f2004f).onTextChanged(charSequence, i10, i11, i12);
        }
    }

    public m(Class<?> cls, CharSequence charSequence) {
        super(charSequence);
        this.f2003g = new ArrayList();
        p0.i.h(cls, "watcherClass cannot be null");
        this.f2002f = cls;
    }

    public static m c(Class<?> cls, CharSequence charSequence) {
        return new m(cls, charSequence);
    }

    public void a() {
        b();
    }

    public final void b() {
        for (int i10 = 0; i10 < this.f2003g.size(); i10++) {
            this.f2003g.get(i10).a();
        }
    }

    public void d() {
        i();
        e();
    }

    public final void e() {
        for (int i10 = 0; i10 < this.f2003g.size(); i10++) {
            this.f2003g.get(i10).onTextChanged(this, 0, length(), length());
        }
    }

    public final a f(Object obj) {
        for (int i10 = 0; i10 < this.f2003g.size(); i10++) {
            a aVar = this.f2003g.get(i10);
            if (aVar.f2004f == obj) {
                return aVar;
            }
        }
        return null;
    }

    public final boolean g(Class<?> cls) {
        return this.f2002f == cls;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public int getSpanEnd(Object obj) {
        a f10;
        if (h(obj) && (f10 = f(obj)) != null) {
            obj = f10;
        }
        return super.getSpanEnd(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public int getSpanFlags(Object obj) {
        a f10;
        if (h(obj) && (f10 = f(obj)) != null) {
            obj = f10;
        }
        return super.getSpanFlags(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public int getSpanStart(Object obj) {
        a f10;
        if (h(obj) && (f10 = f(obj)) != null) {
            obj = f10;
        }
        return super.getSpanStart(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    @SuppressLint({"UnknownNullness"})
    public <T> T[] getSpans(int i10, int i11, Class<T> cls) {
        if (g(cls)) {
            a[] aVarArr = (a[]) super.getSpans(i10, i11, a.class);
            T[] tArr = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, aVarArr.length));
            for (int i12 = 0; i12 < aVarArr.length; i12++) {
                tArr[i12] = aVarArr[i12].f2004f;
            }
            return tArr;
        }
        return (T[]) super.getSpans(i10, i11, cls);
    }

    public final boolean h(Object obj) {
        return obj != null && g(obj.getClass());
    }

    public final void i() {
        for (int i10 = 0; i10 < this.f2003g.size(); i10++) {
            this.f2003g.get(i10).c();
        }
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public int nextSpanTransition(int i10, int i11, Class cls) {
        if (cls == null || g(cls)) {
            cls = a.class;
        }
        return super.nextSpanTransition(i10, i11, cls);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spannable
    public void removeSpan(Object obj) {
        a aVar;
        if (h(obj)) {
            aVar = f(obj);
            if (aVar != null) {
                obj = aVar;
            }
        } else {
            aVar = null;
        }
        super.removeSpan(obj);
        if (aVar != null) {
            this.f2003g.remove(aVar);
        }
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spannable
    public void setSpan(Object obj, int i10, int i11, int i12) {
        if (h(obj)) {
            a aVar = new a(obj);
            this.f2003g.add(aVar);
            obj = aVar;
        }
        super.setSpan(obj, i10, i11, i12);
    }

    @Override // android.text.SpannableStringBuilder, java.lang.CharSequence
    @SuppressLint({"UnknownNullness"})
    public CharSequence subSequence(int i10, int i11) {
        return new m(this.f2002f, this, i10, i11);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder delete(int i10, int i11) {
        super.delete(i10, i11);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder insert(int i10, CharSequence charSequence) {
        super.insert(i10, charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder replace(int i10, int i11, CharSequence charSequence) {
        b();
        super.replace(i10, i11, charSequence);
        i();
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder insert(int i10, CharSequence charSequence, int i11, int i12) {
        super.insert(i10, charSequence, i11, i12);
        return this;
    }

    public m(Class<?> cls, CharSequence charSequence, int i10, int i11) {
        super(charSequence, i10, i11);
        this.f2003g = new ArrayList();
        p0.i.h(cls, "watcherClass cannot be null");
        this.f2002f = cls;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder replace(int i10, int i11, CharSequence charSequence, int i12, int i13) {
        b();
        super.replace(i10, i11, charSequence, i12, i13);
        i();
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public SpannableStringBuilder append(@SuppressLint({"UnknownNullness"}) CharSequence charSequence) {
        super.append(charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public SpannableStringBuilder append(char c10) {
        super.append(c10);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public SpannableStringBuilder append(@SuppressLint({"UnknownNullness"}) CharSequence charSequence, int i10, int i11) {
        super.append(charSequence, i10, i11);
        return this;
    }

    @Override // android.text.SpannableStringBuilder
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder append(CharSequence charSequence, Object obj, int i10) {
        super.append(charSequence, obj, i10);
        return this;
    }
}
