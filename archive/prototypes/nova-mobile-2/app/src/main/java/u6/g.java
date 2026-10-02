package u6;

import android.R;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.anslayer.widget.SlayerImage;
import com.google.android.gms.common.internal.ImagesContract;
import j4.x2;
import jc.l;
import r7.j;

/* compiled from: RecommendationHolderNew.kt */
/* loaded from: classes.dex */
public final class g extends RecyclerView.e0 {

    /* renamed from: b, reason: collision with root package name */
    public static final a f14458b = new a(null);

    /* renamed from: a, reason: collision with root package name */
    public final x2 f14459a;

    /* compiled from: RecommendationHolderNew.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }

        public final g a(ViewGroup viewGroup) {
            l.f(viewGroup, "parent");
            x2 c10 = x2.c(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            l.e(c10, "inflate(inflater, parent, false)");
            return new g(c10, null);
        }
    }

    public g(x2 x2Var) {
        super(x2Var.b());
        this.f14459a = x2Var;
    }

    public /* synthetic */ g(x2 x2Var, jc.g gVar) {
        this(x2Var);
    }

    public final void a(u4.a aVar) {
        l.f(aVar, "model");
        x2 x2Var = this.f14459a;
        x2Var.f8821g.setText(aVar.g());
        x2Var.f8817c.setText(aVar.p());
        x2Var.f8818d.setText(aVar.m());
        ImageView imageView = x2Var.f8816b;
        l.e(imageView, "approved");
        imageView.setVisibility(aVar.u() ? 0 : 8);
        SlayerImage slayerImage = x2Var.f8819e;
        l.e(slayerImage, "seriesImage");
        c(slayerImage, aVar.e());
        SlayerImage slayerImage2 = x2Var.f8820f;
        l.e(slayerImage2, "seriesImageRecommended");
        c(slayerImage2, aVar.n());
    }

    public final x2 b() {
        return this.f14459a;
    }

    public final void c(ImageView imageView, String str) {
        l.f(imageView, "image");
        l.f(str, ImagesContract.URL);
        d4.a.a(this.itemView.getContext()).m(imageView);
        d4.a.a(this.itemView.getContext()).s(str).g(j.f12974c).G0().T(R.color.transparent).u0(imageView);
    }
}
