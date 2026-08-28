package i5;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;

/* compiled from: CoverImageViewTarget.kt */
/* loaded from: classes.dex */
public final class g extends i8.f<Drawable> {

    /* renamed from: n, reason: collision with root package name */
    public final ic.a<vb.p> f7632n;

    /* renamed from: o, reason: collision with root package name */
    public Drawable f7633o;

    /* renamed from: p, reason: collision with root package name */
    public final ImageView.ScaleType f7634p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(ImageView imageView, ic.a<vb.p> aVar) {
        super(imageView);
        jc.l.f(imageView, "view");
        jc.l.f(aVar, "onResourceReadyLongClick");
        this.f7632n = aVar;
        this.f7634p = imageView.getScaleType();
    }

    public static final boolean t(g gVar, View view) {
        jc.l.f(gVar, "this$0");
        gVar.f7632n.invoke();
        return false;
    }

    @Override // i8.f, i8.i
    /* renamed from: s, reason: merged with bridge method [inline-methods] */
    public void i(Drawable drawable, j8.d<? super Drawable> dVar) {
        jc.l.f(drawable, "resource");
        ((ImageView) this.f7917f).setScaleType(this.f7634p);
        ((ImageView) this.f7917f).setOnLongClickListener(new View.OnLongClickListener() { // from class: i5.f
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                boolean t10;
                t10 = g.t(g.this, view);
                return t10;
            }
        });
        super.i(drawable, dVar);
        this.f7633o = drawable;
    }

    @Override // i8.f
    /* renamed from: u, reason: merged with bridge method [inline-methods] */
    public void p(Drawable drawable) {
        ((ImageView) this.f7917f).setImageDrawable(drawable);
    }
}
