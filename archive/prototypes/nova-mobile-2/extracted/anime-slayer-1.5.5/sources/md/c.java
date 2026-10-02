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

/* compiled from: TextViewTextChangeFlow.kt */
/* loaded from: classes2.dex */
public final class c {

    /* compiled from: TextViewTextChangeFlow.kt */
    @f(c = "reactivecircus.flowbinding.android.widget.TextViewTextChangeFlowKt$textChanges$1", f = "TextViewTextChangeFlow.kt", l = {53}, m = "invokeSuspend")
    /* loaded from: classes2.dex */
    public static final class a extends k implements p<r<? super CharSequence>, d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f11109f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f11110g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ TextView f11111h;

        /* compiled from: TextViewTextChangeFlow.kt */
        /* renamed from: md.c$a$a, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0264a extends m implements ic.a<vb.p> {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ TextView f11112f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ b f11113g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0264a(TextView textView, b bVar) {
                super(0);
                this.f11112f = textView;
                this.f11113g = bVar;
            }

            public final void a() {
                this.f11112f.removeTextChangedListener(this.f11113g);
            }

            @Override // ic.a
            public /* bridge */ /* synthetic */ vb.p invoke() {
                a();
                return vb.p.f15031a;
            }
        }

        /* compiled from: TextViewTextChangeFlow.kt */
        /* loaded from: classes2.dex */
        public static final class b implements TextWatcher {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ r<CharSequence> f11114f;

            /* JADX WARN: Multi-variable type inference failed */
            public b(r<? super CharSequence> rVar) {
                this.f11114f = rVar;
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                l.f(editable, "s");
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
                l.f(charSequence, "s");
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
                l.f(charSequence, "s");
                this.f11114f.m(charSequence);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(TextView textView, d<? super a> dVar) {
            super(2, dVar);
            this.f11111h = textView;
        }

        @Override // cc.a
        public final d<vb.p> create(Object obj, d<?> dVar) {
            a aVar = new a(this.f11111h, dVar);
            aVar.f11110g = obj;
            return aVar;
        }

        @Override // ic.p
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(r<? super CharSequence> rVar, d<? super vb.p> dVar) {
            return ((a) create(rVar, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f11109f;
            if (i10 == 0) {
                vb.k.b(obj);
                r rVar = (r) this.f11110g;
                od.a.a();
                b bVar = new b(rVar);
                this.f11111h.addTextChangedListener(bVar);
                C0264a c0264a = new C0264a(this.f11111h, bVar);
                this.f11109f = 1;
                if (tc.p.a(rVar, c0264a, this) == d10) {
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

    /* compiled from: TextViewTextChangeFlow.kt */
    /* loaded from: classes2.dex */
    public static final class b extends m implements ic.a<CharSequence> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ TextView f11115f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(TextView textView) {
            super(0);
            this.f11115f = textView;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CharSequence invoke() {
            CharSequence text = this.f11115f.getText();
            l.e(text, "text");
            return text;
        }
    }

    public static final od.b<CharSequence> a(TextView textView) {
        l.f(textView, "<this>");
        return od.c.a(h.h(h.c(new a(textView, null))), new b(textView));
    }
}
