package c6;

import android.content.Context;
import android.util.AttributeSet;
import com.anslayer.R;
import jc.l;

/* compiled from: ChangelogDialog.kt */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final C0077a f3711a = new C0077a(null);

    /* compiled from: ChangelogDialog.kt */
    /* renamed from: c6.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0077a {
        public C0077a() {
        }

        public /* synthetic */ C0077a(jc.g gVar) {
            this();
        }

        public final void a(Context context) {
            l.f(context, "context");
            s2.c.v(w2.a.b(s2.c.y(new s2.c(context, null, 2, null), Integer.valueOf(R.string.changelog), null, 2, null), null, new b(context), false, false, false, false, 57, null), Integer.valueOf(R.string.Ok), null, null, 6, null).show();
        }
    }

    /* compiled from: ChangelogDialog.kt */
    /* loaded from: classes.dex */
    public static final class b extends tb.a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Context context) {
            super(context);
            l.f(context, "context");
        }

        @Override // tb.a
        public void c(AttributeSet attributeSet, int i10) {
            this.f14107f = R.layout.changelog_row_layout;
            this.f14108g = R.layout.changelog_header_layout;
            this.f14109h = R.raw.changelog_release;
        }
    }
}
