package md;

import ac.d;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.TextView;
import cc.f;
import cc.k;
import ic.p;
import jc.l;
import jc.m;
import tc.r;
import uc.h;

/* compiled from: TextViewAfterTextChangeEventFlow.kt */
/* loaded from: classes2.dex */
public final class b {

    /* compiled from: TextViewAfterTextChangeEventFlow.kt */
    @f(c = "reactivecircus.flowbinding.android.widget.TextViewAfterTextChangeEventFlowKt$afterTextChanges$1", f = "TextViewAfterTextChangeEventFlow.kt", l = {48}, m = "invokeSuspend")
    /* loaded from: classes2.dex */
    public static final class a extends k implements p<r<? super md.a>, d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f11101f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f11102g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ TextView f11103h;

        /* compiled from: TextViewAfterTextChangeEventFlow.kt */
        /* renamed from: md.b$a$a, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0261a extends m implements ic.a<vb.p> {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ TextView f11104f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ C0262b f11105g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0261a(TextView textView, C0262b c0262b) {
                super(0);
                this.f11104f = textView;
                this.f11105g = c0262b;
            }

            public final void a() {
                this.f11104f.removeTextChangedListener(this.f11105g);
            }

            @Override // ic.a
            public /* bridge */ /* synthetic */ vb.p invoke() {
                a();
                return vb.p.f15031a;
            }
        }

        /* compiled from: TextViewAfterTextChangeEventFlow.kt */
        /* renamed from: md.b$a$b, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0262b implements TextWatcher {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ r<md.a> f11106f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ TextView f11107g;

            /* JADX WARN: Multi-variable type inference failed */
            public C0262b(r<? super md.a> rVar, TextView textView) {
                this.f11106f = rVar;
                this.f11107g = textView;
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                l.f(editable, "s");
                this.f11106f.m(new md.a(this.f11107g, editable));
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
                l.f(charSequence, "s");
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
                l.f(charSequence, "s");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(TextView textView, d<? super a> dVar) {
            super(2, dVar);
            this.f11103h = textView;
        }

        @Override // cc.a
        public final d<vb.p> create(Object obj, d<?> dVar) {
            a aVar = new a(this.f11103h, dVar);
            aVar.f11102g = obj;
            return aVar;
        }

        @Override // ic.p
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(r<? super md.a> rVar, d<? super vb.p> dVar) {
            return ((a) create(rVar, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f11101f;
            if (i10 == 0) {
                vb.k.b(obj);
                r rVar = (r) this.f11102g;
                od.a.a();
                C0262b c0262b = new C0262b(rVar, this.f11103h);
                this.f11103h.addTextChangedListener(c0262b);
                C0261a c0261a = new C0261a(this.f11103h, c0262b);
                this.f11101f = 1;
                if (tc.p.a(rVar, c0261a, this) == d10) {
                    return d10;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: TextViewAfterTextChangeEventFlow.kt */
    /* renamed from: md.b$b, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0263b extends m implements ic.a<md.a> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ TextView f11108f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0263b(TextView textView) {
            super(0);
            this.f11108f = textView;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final md.a invoke() {
            TextView textView = this.f11108f;
            return new md.a(textView, textView.getEditableText());
        }
    }

    public static final od.b<md.a> a(TextView textView) {
        l.f(textView, "<this>");
        return od.c.a(h.h(h.c(new a(textView, null))), new C0263b(textView));
    }
}
