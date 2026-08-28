package m7;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.anslayer.R;
import org.apache.http.impl.auth.NTLMEngineImpl;

/* compiled from: BannerView.kt */
/* loaded from: classes.dex */
public final class b extends FrameLayout {

    /* renamed from: f, reason: collision with root package name */
    public final ImageView f10983f;

    /* renamed from: g, reason: collision with root package name */
    public final FrameLayout f10984g;

    /* renamed from: h, reason: collision with root package name */
    public r4.j f10985h;

    public /* synthetic */ b(Context context, AttributeSet attributeSet, int i10, jc.g gVar) {
        this(context, (i10 & 2) != 0 ? null : attributeSet);
    }

    public static final void b(b bVar, Context context, View view) {
        jc.l.f(bVar, "this$0");
        jc.l.f(context, "$context");
        r4.j jVar = bVar.f10985h;
        if (jVar == null) {
            return;
        }
        if (jVar.c().length() > 0) {
            k7.b.l(context, jVar.c());
        }
    }

    public final void c() {
        setPadding(k7.b.g(16), 0, k7.b.g(16), 0);
    }

    public final FrameLayout getAdRectangle() {
        return this.f10984g;
    }

    public final ImageView getImageView() {
        return this.f10983f;
    }

    public final r4.j getModel() {
        return this.f10985h;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, View.MeasureSpec.makeMeasureSpec(k7.b.g(50), NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH));
    }

    public final void setData(r4.j jVar) {
        jc.l.f(jVar, "model");
        this.f10985h = jVar;
        com.bumptech.glide.c.u(this).m(this.f10983f);
        com.bumptech.glide.c.u(this).s(jVar.a()).g(r7.j.f12973b).b0(true).u0(this.f10983f);
    }

    public final void setModel(r4.j jVar) {
        this.f10985h = jVar;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(final Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        jc.l.f(context, "context");
        ImageView imageView = new ImageView(context);
        this.f10983f = imageView;
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        imageView.setImageResource(R.drawable.screenshot);
        addView(imageView, new FrameLayout.LayoutParams(-1, -1));
        FrameLayout frameLayout = new FrameLayout(context);
        this.f10984g = frameLayout;
        frameLayout.setBackgroundResource(R.drawable.ad_rectangle);
        frameLayout.setPadding(k7.b.g(4), 0, k7.b.g(4), 0);
        addView(frameLayout, new FrameLayout.LayoutParams(-2, k7.b.g(14)));
        TextView textView = new TextView(context);
        textView.setText("Ad");
        textView.setIncludeFontPadding(false);
        textView.setTextColor(-16777216);
        textView.setTextSize(11.0f);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        frameLayout.addView(textView, layoutParams);
        setOnClickListener(new View.OnClickListener() { // from class: m7.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                b.b(b.this, context, view);
            }
        });
    }
}
