package i5;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import com.anslayer.R;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.google.android.material.button.MaterialButtonToggleGroup;
import j4.m0;

/* compiled from: ContentRatingBottomSheet.kt */
/* loaded from: classes.dex */
public final class e extends BottomSheetDialog {

    /* renamed from: m, reason: collision with root package name */
    public static final a f7613m = new a(null);

    /* renamed from: n, reason: collision with root package name */
    public static final String f7614n = "none";

    /* renamed from: o, reason: collision with root package name */
    public static final String f7615o = "mild";

    /* renamed from: p, reason: collision with root package name */
    public static final String f7616p = "moderate";

    /* renamed from: q, reason: collision with root package name */
    public static final String f7617q = "severe";

    /* renamed from: f, reason: collision with root package name */
    public final x f7618f;

    /* renamed from: g, reason: collision with root package name */
    public final m0 f7619g;

    /* renamed from: h, reason: collision with root package name */
    public final b f7620h;

    /* renamed from: i, reason: collision with root package name */
    public int f7621i;

    /* renamed from: j, reason: collision with root package name */
    public String f7622j;

    /* renamed from: k, reason: collision with root package name */
    public long f7623k;

    /* renamed from: l, reason: collision with root package name */
    public p4.g f7624l;

    /* compiled from: ContentRatingBottomSheet.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }

        public final String a() {
            return e.f7615o;
        }

        public final String b() {
            return e.f7616p;
        }

        public final String c() {
            return e.f7614n;
        }

        public final String d() {
            return e.f7617q;
        }
    }

    /* compiled from: ContentRatingBottomSheet.kt */
    /* loaded from: classes.dex */
    public interface b {
        void q(long j10, String str, p4.g gVar, int i10);

        void u(long j10, String str, String str2, p4.g gVar, int i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(x xVar) {
        super(xVar.requireActivity());
        jc.l.f(xVar, "fragment");
        this.f7618f = xVar;
        m0 c10 = m0.c(xVar.requireActivity().getLayoutInflater());
        jc.l.e(c10, "inflate(fragment.requireActivity().layoutInflater)");
        this.f7619g = c10;
        this.f7620h = xVar;
        this.f7621i = -1;
        this.f7623k = -1L;
        setContentView(c10.b());
        c10.f8540m.addOnButtonCheckedListener(new MaterialButtonToggleGroup.OnButtonCheckedListener() { // from class: i5.d
            @Override // com.google.android.material.button.MaterialButtonToggleGroup.OnButtonCheckedListener
            public final void onButtonChecked(MaterialButtonToggleGroup materialButtonToggleGroup, int i10, boolean z10) {
                e.c(e.this, materialButtonToggleGroup, i10, z10);
            }
        });
        setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: i5.c
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                e.d(e.this, dialogInterface);
            }
        });
    }

    public static final void c(e eVar, MaterialButtonToggleGroup materialButtonToggleGroup, int i10, boolean z10) {
        jc.l.f(eVar, "this$0");
        switch (i10) {
            case R.id.mild_button /* 2131362436 */:
                eVar.f7622j = z10 ? "mild" : null;
                return;
            case R.id.moderate_button /* 2131362438 */:
                eVar.f7622j = z10 ? "moderate" : null;
                return;
            case R.id.none_button /* 2131362524 */:
                eVar.f7622j = z10 ? "none" : null;
                return;
            case R.id.severe_button /* 2131362674 */:
                eVar.f7622j = z10 ? "severe" : null;
                return;
            default:
                return;
        }
    }

    public static final void d(e eVar, DialogInterface dialogInterface) {
        p4.g gVar;
        String str;
        jc.l.f(eVar, "this$0");
        if (eVar.f7621i == -1 || eVar.f7623k == -1 || (gVar = eVar.f7624l) == null) {
            return;
        }
        String a10 = gVar.a();
        if (((jc.l.a(gVar.e(), "empty") || gVar.e() == null) && eVar.f7622j == null) || jc.l.a(eVar.f7622j, gVar.e())) {
            return;
        }
        if (!jc.l.a(eVar.f7622j, "empty") && (str = eVar.f7622j) != null) {
            b bVar = eVar.f7620h;
            long j10 = eVar.f7623k;
            jc.l.c(str);
            bVar.u(j10, a10, str, gVar, eVar.f7621i);
            return;
        }
        eVar.f7620h.q(eVar.f7623k, a10, gVar, eVar.f7621i);
    }

    public final void i(p4.g gVar, long j10, int i10) {
        jc.l.f(gVar, "contentRating");
        this.f7621i = i10;
        this.f7623k = j10;
        this.f7624l = gVar;
        this.f7622j = gVar.e();
        this.f7619g.f8540m.clearChecked();
        h7.a aVar = h7.a.f7376a;
        String a10 = aVar.a(gVar.a());
        String string = getContext().getString(R.string.content_rating_votes_count, Integer.valueOf(gVar.f()));
        jc.l.e(string, "context.getString(R.stri…contentRating.vote_count)");
        Context context = getContext();
        jc.l.e(context, "context");
        Drawable d10 = aVar.d(context, gVar.c());
        String b10 = aVar.b(gVar.c());
        this.f7619g.f8539l.setBackground(d10);
        this.f7619g.f8531d.setText(a10);
        this.f7619g.f8529b.setText(b10);
        this.f7619g.f8541n.setText(string);
        this.f7619g.f8530c.setText(getContext().getString(R.string.content_rating_question, a10));
        String e10 = gVar.e();
        if (jc.l.a(e10, f7614n)) {
            this.f7619g.f8540m.check(R.id.none_button);
            return;
        }
        if (jc.l.a(e10, f7615o)) {
            this.f7619g.f8540m.check(R.id.mild_button);
        } else if (jc.l.a(e10, f7616p)) {
            this.f7619g.f8540m.check(R.id.moderate_button);
        } else if (jc.l.a(e10, f7617q)) {
            this.f7619g.f8540m.check(R.id.severe_button);
        }
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetDialog, e.b, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Context context = getContext();
        jc.l.e(context, "context");
        Display f10 = k7.b.f(context);
        if (f10 == null) {
            return;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        f10.getRealMetrics(displayMetrics);
        getBehavior().setPeekHeight(displayMetrics.heightPixels / 2);
    }
}
