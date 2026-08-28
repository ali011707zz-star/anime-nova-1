package d5;

import androidx.appcompat.widget.AppCompatImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.anslayer.widget.SlayerImage;
import io.wax911.support.custom.widget.SingleLineTextView;
import j4.e0;
import kotlin.NoWhenBranchMatchedException;
import p4.p;

/* compiled from: CharacterRelatedAnimeHolder.kt */
/* loaded from: classes.dex */
public final class i extends RecyclerView.e0 {

    /* renamed from: a, reason: collision with root package name */
    public final e0 f5657a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(e0 e0Var) {
        super(e0Var.b());
        jc.l.f(e0Var, "binding");
        this.f5657a = e0Var;
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x00ef, code lost:
    
        if ((r7 == null || r7.length() == 0) != false) goto L60;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(p pVar) {
        String str;
        jc.l.f(pVar, "anime");
        SlayerImage slayerImage = this.f5657a.f8276d;
        jc.l.e(slayerImage, "binding.seriesImage");
        l7.b.b(slayerImage, pVar.e());
        this.f5657a.f8280h.setText(pVar.n());
        this.f5657a.f8281i.setText(pVar.c0());
        AppCompatImageView appCompatImageView = this.f5657a.f8282j;
        jc.l.e(appCompatImageView, "binding.star");
        boolean z10 = true;
        appCompatImageView.setVisibility(pVar.q() != null ? 0 : 8);
        SingleLineTextView singleLineTextView = this.f5657a.f8277e;
        jc.l.e(singleLineTextView, "binding.seriesRating");
        singleLineTextView.setVisibility(pVar.q() != null ? 0 : 8);
        this.f5657a.f8277e.setText(pVar.j0());
        SingleLineTextView singleLineTextView2 = this.f5657a.f8275c;
        String E = pVar.E();
        if (E == null) {
            E = pVar.l();
        }
        singleLineTextView2.setText(E);
        SingleLineTextView singleLineTextView3 = this.f5657a.f8279g;
        String E2 = pVar.E();
        boolean z11 = E2 == null || E2.length() == 0;
        String str2 = "";
        if (z11) {
            str = pVar.Z();
        } else {
            if (z11) {
                throw new NoWhenBranchMatchedException();
            }
            str = "";
        }
        singleLineTextView3.setText(str);
        SingleLineTextView singleLineTextView4 = this.f5657a.f8278f;
        String E3 = pVar.E();
        boolean z12 = E3 == null || E3.length() == 0;
        if (z12) {
            str2 = pVar.k0();
        } else if (z12) {
            throw new NoWhenBranchMatchedException();
        }
        singleLineTextView4.setText(str2);
        SingleLineTextView singleLineTextView5 = this.f5657a.f8278f;
        jc.l.e(singleLineTextView5, "binding.seriesSeason");
        String E4 = pVar.E();
        if (E4 == null || E4.length() == 0) {
            String t10 = pVar.t();
        }
        z10 = false;
        singleLineTextView5.setVisibility(z10 ? 8 : 0);
    }

    public final e0 b() {
        return this.f5657a;
    }
}
