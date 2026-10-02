package com.pierfrancescosoffritti.androidyoutubeplayer.core.ui.views;

import ab.b;
import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.pierfrancescosoffritti.androidyoutubeplayer.core.ui.views.YouTubePlayerSeekBar;
import jc.l;
import qa.g;
import qa.h;
import ra.f;
import sa.d;
import za.c;

/* compiled from: YouTubePlayerSeekBar.kt */
/* loaded from: classes.dex */
public final class YouTubePlayerSeekBar extends LinearLayout implements SeekBar.OnSeekBarChangeListener, d {

    /* renamed from: f, reason: collision with root package name */
    public boolean f4957f;

    /* renamed from: g, reason: collision with root package name */
    public int f4958g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f4959h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f4960i;

    /* renamed from: j, reason: collision with root package name */
    public b f4961j;

    /* renamed from: k, reason: collision with root package name */
    public final TextView f4962k;

    /* renamed from: l, reason: collision with root package name */
    public final TextView f4963l;

    /* renamed from: m, reason: collision with root package name */
    public final SeekBar f4964m;

    /* compiled from: YouTubePlayerSeekBar.kt */
    /* loaded from: classes.dex */
    public /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4965a;

        static {
            int[] iArr = new int[ra.d.values().length];
            iArr[ra.d.ENDED.ordinal()] = 1;
            iArr[ra.d.PAUSED.ordinal()] = 2;
            iArr[ra.d.PLAYING.ordinal()] = 3;
            iArr[ra.d.UNSTARTED.ordinal()] = 4;
            f4965a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public YouTubePlayerSeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        l.f(context, "context");
        this.f4958g = -1;
        this.f4960i = true;
        TextView textView = new TextView(context);
        this.f4962k = textView;
        TextView textView2 = new TextView(context);
        this.f4963l = textView2;
        SeekBar seekBar = new SeekBar(context);
        this.f4964m = seekBar;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, h.W, 0, 0);
        l.e(obtainStyledAttributes, "context.theme.obtainStyl…uTubePlayerSeekBar, 0, 0)");
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(h.Y, getResources().getDimensionPixelSize(qa.b.f12619a));
        int color = obtainStyledAttributes.getColor(h.X, f0.a.d(context, qa.a.f12618a));
        obtainStyledAttributes.recycle();
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(qa.b.f12620b);
        Resources resources = getResources();
        int i10 = g.f12642a;
        textView.setText(resources.getString(i10));
        textView.setPadding(dimensionPixelSize2, dimensionPixelSize2, 0, dimensionPixelSize2);
        textView.setTextColor(f0.a.d(context, R.color.white));
        textView.setGravity(16);
        textView2.setText(getResources().getString(i10));
        textView2.setPadding(0, dimensionPixelSize2, dimensionPixelSize2, dimensionPixelSize2);
        textView2.setTextColor(f0.a.d(context, R.color.white));
        textView2.setGravity(16);
        setFontSize(dimensionPixelSize);
        int i11 = dimensionPixelSize2 * 2;
        seekBar.setPadding(i11, dimensionPixelSize2, i11, dimensionPixelSize2);
        setColor(color);
        addView(textView, new LinearLayout.LayoutParams(-2, -2));
        addView(seekBar, new LinearLayout.LayoutParams(0, -2, 1.0f));
        addView(textView2, new LinearLayout.LayoutParams(-2, -2));
        setGravity(16);
        seekBar.setOnSeekBarChangeListener(this);
    }

    public static final void m(YouTubePlayerSeekBar youTubePlayerSeekBar) {
        l.f(youTubePlayerSeekBar, "this$0");
        youTubePlayerSeekBar.f4963l.setText("");
    }

    @Override // sa.d
    public void a(f fVar, float f10) {
        l.f(fVar, "youTubePlayer");
        if (this.f4957f) {
            return;
        }
        if (this.f4958g <= 0 || l.a(c.a(f10), c.a(this.f4958g))) {
            this.f4958g = -1;
            this.f4964m.setProgress((int) f10);
        }
    }

    @Override // sa.d
    public void b(f fVar, String str) {
        l.f(fVar, "youTubePlayer");
        l.f(str, "videoId");
    }

    @Override // sa.d
    public void c(f fVar, ra.b bVar) {
        l.f(fVar, "youTubePlayer");
        l.f(bVar, "playbackRate");
    }

    @Override // sa.d
    public void d(f fVar) {
        l.f(fVar, "youTubePlayer");
    }

    @Override // sa.d
    public void e(f fVar) {
        l.f(fVar, "youTubePlayer");
    }

    @Override // sa.d
    public void f(f fVar, float f10) {
        l.f(fVar, "youTubePlayer");
        this.f4963l.setText(c.a(f10));
        this.f4964m.setMax((int) f10);
    }

    @Override // sa.d
    public void g(f fVar, ra.c cVar) {
        l.f(fVar, "youTubePlayer");
        l.f(cVar, "error");
    }

    public final SeekBar getSeekBar() {
        return this.f4964m;
    }

    public final boolean getShowBufferingProgress() {
        return this.f4960i;
    }

    public final TextView getVideoCurrentTimeTextView() {
        return this.f4962k;
    }

    public final TextView getVideoDurationTextView() {
        return this.f4963l;
    }

    public final b getYoutubePlayerSeekBarListener() {
        return this.f4961j;
    }

    @Override // sa.d
    public void h(f fVar, float f10) {
        l.f(fVar, "youTubePlayer");
        if (this.f4960i) {
            this.f4964m.setSecondaryProgress((int) (f10 * r2.getMax()));
        } else {
            this.f4964m.setSecondaryProgress(0);
        }
    }

    @Override // sa.d
    public void i(f fVar, ra.d dVar) {
        l.f(fVar, "youTubePlayer");
        l.f(dVar, "state");
        this.f4958g = -1;
        n(dVar);
    }

    @Override // sa.d
    public void j(f fVar, ra.a aVar) {
        l.f(fVar, "youTubePlayer");
        l.f(aVar, "playbackQuality");
    }

    public final void l() {
        this.f4964m.setProgress(0);
        this.f4964m.setMax(0);
        this.f4963l.post(new Runnable() { // from class: ab.a
            @Override // java.lang.Runnable
            public final void run() {
                YouTubePlayerSeekBar.m(YouTubePlayerSeekBar.this);
            }
        });
    }

    public final void n(ra.d dVar) {
        int i10 = a.f4965a[dVar.ordinal()];
        if (i10 == 1) {
            this.f4959h = false;
            return;
        }
        if (i10 == 2) {
            this.f4959h = false;
        } else if (i10 == 3) {
            this.f4959h = true;
        } else {
            if (i10 != 4) {
                return;
            }
            l();
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i10, boolean z10) {
        l.f(seekBar, "seekBar");
        this.f4962k.setText(c.a(i10));
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
        l.f(seekBar, "seekBar");
        this.f4957f = true;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        l.f(seekBar, "seekBar");
        if (this.f4959h) {
            this.f4958g = seekBar.getProgress();
        }
        b bVar = this.f4961j;
        if (bVar != null) {
            bVar.a(seekBar.getProgress());
        }
        this.f4957f = false;
    }

    public final void setColor(int i10) {
        i0.a.n(this.f4964m.getThumb(), i10);
        i0.a.n(this.f4964m.getProgressDrawable(), i10);
    }

    public final void setFontSize(float f10) {
        this.f4962k.setTextSize(0, f10);
        this.f4963l.setTextSize(0, f10);
    }

    public final void setShowBufferingProgress(boolean z10) {
        this.f4960i = z10;
    }

    public final void setYoutubePlayerSeekBarListener(b bVar) {
        this.f4961j = bVar;
    }
}
