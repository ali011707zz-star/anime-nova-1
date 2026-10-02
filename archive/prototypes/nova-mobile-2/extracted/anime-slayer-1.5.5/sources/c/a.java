package c;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;

/* compiled from: ActivityResultContract.java */
/* loaded from: classes.dex */
public abstract class a<I, O> {

    /* compiled from: ActivityResultContract.java */
    /* renamed from: c.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0072a<T> {

        /* renamed from: a, reason: collision with root package name */
        @SuppressLint({"UnknownNullness"})
        public final T f3621a;

        public C0072a(@SuppressLint({"UnknownNullness"}) T t10) {
            this.f3621a = t10;
        }

        @SuppressLint({"UnknownNullness"})
        public T a() {
            return this.f3621a;
        }
    }

    public abstract Intent a(Context context, @SuppressLint({"UnknownNullness"}) I i10);

    public C0072a<O> b(Context context, @SuppressLint({"UnknownNullness"}) I i10) {
        return null;
    }

    @SuppressLint({"UnknownNullness"})
    public abstract O c(int i10, Intent intent);
}
