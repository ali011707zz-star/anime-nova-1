package a1;

import android.os.Build;
import android.text.InputFilter;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.SparseArray;
import android.widget.TextView;
import p0.i;

/* compiled from: EmojiTextViewHelper.java */
/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final b f351a;

    /* compiled from: EmojiTextViewHelper.java */
    /* loaded from: classes.dex */
    public static class a extends b {

        /* renamed from: a, reason: collision with root package name */
        public final TextView f352a;

        /* renamed from: b, reason: collision with root package name */
        public final d f353b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f354c = true;

        public a(TextView textView) {
            this.f352a = textView;
            this.f353b = new d(textView);
        }

        @Override // a1.f.b
        public InputFilter[] a(InputFilter[] inputFilterArr) {
            if (!this.f354c) {
                return h(inputFilterArr);
            }
            return f(inputFilterArr);
        }

        @Override // a1.f.b
        public boolean b() {
            return this.f354c;
        }

        @Override // a1.f.b
        public void c(boolean z10) {
            if (z10) {
                l();
            }
        }

        @Override // a1.f.b
        public void d(boolean z10) {
            this.f354c = z10;
            l();
            k();
        }

        @Override // a1.f.b
        public TransformationMethod e(TransformationMethod transformationMethod) {
            if (this.f354c) {
                return m(transformationMethod);
            }
            return j(transformationMethod);
        }

        public final InputFilter[] f(InputFilter[] inputFilterArr) {
            int length = inputFilterArr.length;
            for (InputFilter inputFilter : inputFilterArr) {
                if (inputFilter == this.f353b) {
                    return inputFilterArr;
                }
            }
            InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length + 1];
            System.arraycopy(inputFilterArr, 0, inputFilterArr2, 0, length);
            inputFilterArr2[length] = this.f353b;
            return inputFilterArr2;
        }

        public final SparseArray<InputFilter> g(InputFilter[] inputFilterArr) {
            SparseArray<InputFilter> sparseArray = new SparseArray<>(1);
            for (int i10 = 0; i10 < inputFilterArr.length; i10++) {
                if (inputFilterArr[i10] instanceof d) {
                    sparseArray.put(i10, inputFilterArr[i10]);
                }
            }
            return sparseArray;
        }

        public final InputFilter[] h(InputFilter[] inputFilterArr) {
            SparseArray<InputFilter> g10 = g(inputFilterArr);
            if (g10.size() == 0) {
                return inputFilterArr;
            }
            int length = inputFilterArr.length;
            InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length - g10.size()];
            int i10 = 0;
            for (int i11 = 0; i11 < length; i11++) {
                if (g10.indexOfKey(i11) < 0) {
                    inputFilterArr2[i10] = inputFilterArr[i11];
                    i10++;
                }
            }
            return inputFilterArr2;
        }

        public void i(boolean z10) {
            this.f354c = z10;
        }

        public final TransformationMethod j(TransformationMethod transformationMethod) {
            return transformationMethod instanceof h ? ((h) transformationMethod).a() : transformationMethod;
        }

        public final void k() {
            this.f352a.setFilters(a(this.f352a.getFilters()));
        }

        public void l() {
            this.f352a.setTransformationMethod(e(this.f352a.getTransformationMethod()));
        }

        public final TransformationMethod m(TransformationMethod transformationMethod) {
            return ((transformationMethod instanceof h) || (transformationMethod instanceof PasswordTransformationMethod)) ? transformationMethod : new h(transformationMethod);
        }
    }

    /* compiled from: EmojiTextViewHelper.java */
    /* loaded from: classes.dex */
    public static class b {
        public InputFilter[] a(InputFilter[] inputFilterArr) {
            return inputFilterArr;
        }

        public boolean b() {
            return false;
        }

        public void c(boolean z10) {
        }

        public void d(boolean z10) {
        }

        public TransformationMethod e(TransformationMethod transformationMethod) {
            return transformationMethod;
        }
    }

    /* compiled from: EmojiTextViewHelper.java */
    /* loaded from: classes.dex */
    public static class c extends b {

        /* renamed from: a, reason: collision with root package name */
        public final a f355a;

        public c(TextView textView) {
            this.f355a = new a(textView);
        }

        @Override // a1.f.b
        public InputFilter[] a(InputFilter[] inputFilterArr) {
            return f() ? inputFilterArr : this.f355a.a(inputFilterArr);
        }

        @Override // a1.f.b
        public boolean b() {
            return this.f355a.b();
        }

        @Override // a1.f.b
        public void c(boolean z10) {
            if (f()) {
                return;
            }
            this.f355a.c(z10);
        }

        @Override // a1.f.b
        public void d(boolean z10) {
            if (f()) {
                this.f355a.i(z10);
            } else {
                this.f355a.d(z10);
            }
        }

        @Override // a1.f.b
        public TransformationMethod e(TransformationMethod transformationMethod) {
            return f() ? transformationMethod : this.f355a.e(transformationMethod);
        }

        public final boolean f() {
            return !androidx.emoji2.text.d.h();
        }
    }

    public f(TextView textView, boolean z10) {
        i.h(textView, "textView cannot be null");
        if (Build.VERSION.SDK_INT < 19) {
            this.f351a = new b();
        } else if (!z10) {
            this.f351a = new c(textView);
        } else {
            this.f351a = new a(textView);
        }
    }

    public InputFilter[] a(InputFilter[] inputFilterArr) {
        return this.f351a.a(inputFilterArr);
    }

    public boolean b() {
        return this.f351a.b();
    }

    public void c(boolean z10) {
        this.f351a.c(z10);
    }

    public void d(boolean z10) {
        this.f351a.d(z10);
    }

    public TransformationMethod e(TransformationMethod transformationMethod) {
        return this.f351a.e(transformationMethod);
    }
}
