package qc;

import java.util.Iterator;
import java.util.regex.MatchResult;
import java.util.regex.Matcher;

/* compiled from: Regex.kt */
/* loaded from: classes2.dex */
public final class h implements g {

    /* renamed from: a, reason: collision with root package name */
    public final Matcher f12696a;

    /* renamed from: b, reason: collision with root package name */
    public final CharSequence f12697b;

    /* renamed from: c, reason: collision with root package name */
    public final f f12698c;

    /* compiled from: Regex.kt */
    /* loaded from: classes2.dex */
    public static final class a extends wb.a<e> implements f {

        /* compiled from: Regex.kt */
        /* renamed from: qc.h$a$a, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0307a extends jc.m implements ic.l<Integer, e> {
            public C0307a() {
                super(1);
            }

            public final e a(int i10) {
                return a.this.get(i10);
            }

            @Override // ic.l
            public /* bridge */ /* synthetic */ e invoke(Integer num) {
                return a(num.intValue());
            }
        }

        public a() {
        }

        @Override // wb.a
        public int a() {
            return h.this.c().groupCount() + 1;
        }

        public /* bridge */ boolean b(e eVar) {
            return super.contains(eVar);
        }

        @Override // wb.a, java.util.Collection, java.util.List
        public final /* bridge */ boolean contains(Object obj) {
            if (obj == null ? true : obj instanceof e) {
                return b((e) obj);
            }
            return false;
        }

        @Override // qc.f
        public e get(int i10) {
            nc.e d10;
            d10 = j.d(h.this.c(), i10);
            if (d10.b().intValue() < 0) {
                return null;
            }
            String group = h.this.c().group(i10);
            jc.l.e(group, "matchResult.group(index)");
            return new e(group, d10);
        }

        @Override // wb.a, java.util.Collection
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator<e> iterator() {
            return pc.h.e(wb.t.w(wb.l.j(this)), new C0307a()).iterator();
        }
    }

    public h(Matcher matcher, CharSequence charSequence) {
        jc.l.f(matcher, "matcher");
        jc.l.f(charSequence, "input");
        this.f12696a = matcher;
        this.f12697b = charSequence;
        this.f12698c = new a();
    }

    @Override // qc.g
    public f a() {
        return this.f12698c;
    }

    public final MatchResult c() {
        return this.f12696a;
    }
}
