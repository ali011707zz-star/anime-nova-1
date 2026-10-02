package com.anslayer.widget;

import android.content.Context;
import android.graphics.Point;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import com.anslayer.R;
import com.bumptech.glide.c;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.base.view.CustomView;
import jc.l;
import jc.m;
import org.apache.http.impl.auth.NTLMEngineImpl;
import vb.e;
import vb.f;

/* compiled from: SlayerImage.kt */
/* loaded from: classes.dex */
public final class SlayerImage extends AppCompatImageView implements CustomView {

    /* renamed from: f, reason: collision with root package name */
    public int f4450f;

    /* renamed from: g, reason: collision with root package name */
    public int f4451g;

    /* renamed from: h, reason: collision with root package name */
    public final e f4452h;

    /* compiled from: SlayerImage.kt */
    /* loaded from: classes.dex */
    public static final class a extends m implements ic.a<Point> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Context f4453f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Context context) {
            super(0);
            this.f4453f = context;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Point invoke() {
            return SupportExtentionKt.getScreenDimens(this.f4453f);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SlayerImage(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        l.f(context, "context");
        this.f4452h = f.a(new a(context));
        onInit();
    }

    private final Point getDeviceDimens() {
        return (Point) this.f4452h.getValue();
    }

    @Override // io.wax911.support.base.view.CustomView
    public void onInit() {
        this.f4450f = getResources().getDimensionPixelSize(R.dimen.md_margin);
        this.f4451g = getResources().getInteger(R.integer.grid_list_x3);
        setAdjustViewBounds(true);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i10, int i11) {
        int size = View.MeasureSpec.getSize(i10);
        if (size == 0) {
            size = (getDeviceDimens().x / this.f4451g) - this.f4450f;
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH), View.MeasureSpec.makeMeasureSpec((int) (size * 1.4f), NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH));
    }

    @Override // io.wax911.support.base.view.CustomView
    public void onViewRecycled() {
        c.t(getContext()).m(this);
    }
}
