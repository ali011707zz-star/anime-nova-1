package com.nguyenhoanglam.progresslayout;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import pa.a;
import pa.b;
import pa.c;
import pa.d;
import pa.e;

/* loaded from: classes.dex */
public class ProgressLayout extends RelativeLayout {
    public int A;
    public int B;
    public int C;
    public int D;
    public int E;
    public int F;
    public int G;
    public int H;
    public int I;
    public int J;
    public int K;
    public int L;
    public int M;
    public String N;

    /* renamed from: f, reason: collision with root package name */
    public final String f4882f;

    /* renamed from: g, reason: collision with root package name */
    public final String f4883g;

    /* renamed from: h, reason: collision with root package name */
    public final String f4884h;

    /* renamed from: i, reason: collision with root package name */
    public final String f4885i;

    /* renamed from: j, reason: collision with root package name */
    public LayoutInflater f4886j;

    /* renamed from: k, reason: collision with root package name */
    public View f4887k;

    /* renamed from: l, reason: collision with root package name */
    public RelativeLayout.LayoutParams f4888l;

    /* renamed from: m, reason: collision with root package name */
    public Drawable f4889m;

    /* renamed from: n, reason: collision with root package name */
    public List<View> f4890n;

    /* renamed from: o, reason: collision with root package name */
    public RelativeLayout f4891o;

    /* renamed from: p, reason: collision with root package name */
    public ProgressWheel f4892p;

    /* renamed from: q, reason: collision with root package name */
    public RelativeLayout f4893q;

    /* renamed from: r, reason: collision with root package name */
    public ImageView f4894r;

    /* renamed from: s, reason: collision with root package name */
    public TextView f4895s;

    /* renamed from: t, reason: collision with root package name */
    public RelativeLayout f4896t;

    /* renamed from: u, reason: collision with root package name */
    public ImageView f4897u;

    /* renamed from: v, reason: collision with root package name */
    public TextView f4898v;

    /* renamed from: w, reason: collision with root package name */
    public Button f4899w;

    /* renamed from: x, reason: collision with root package name */
    public int f4900x;

    /* renamed from: y, reason: collision with root package name */
    public int f4901y;

    /* renamed from: z, reason: collision with root package name */
    public int f4902z;

    public ProgressLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4882f = "type_content";
        this.f4883g = "type_loading";
        this.f4884h = "type_empty";
        this.f4885i = "type_error";
        this.f4890n = new ArrayList();
        this.N = "type_content";
        d(attributeSet);
    }

    public final void a() {
        RelativeLayout relativeLayout = this.f4893q;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(8);
            if (this.F != 0) {
                setBackgroundDrawable(this.f4889m);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i10, layoutParams);
        if (view.getTag() == null || !(view.getTag().equals("ProgressView.TAG_LOADING") || view.getTag().equals("ProgressView.TAG_EMPTY") || view.getTag().equals("ProgressView.TAG_ERROR"))) {
            this.f4890n.add(view);
        }
    }

    public final void b() {
        RelativeLayout relativeLayout = this.f4896t;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(8);
            if (this.M != 0) {
                setBackgroundDrawable(this.f4889m);
            }
        }
    }

    public final void c() {
        RelativeLayout relativeLayout = this.f4891o;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(8);
            if (this.f4901y != 0) {
                setBackgroundDrawable(this.f4889m);
            }
        }
    }

    public final void d(AttributeSet attributeSet) {
        this.f4886j = (LayoutInflater) getContext().getSystemService("layout_inflater");
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, e.f12198y);
        Resources resources = getResources();
        float f10 = resources.getDisplayMetrics().density;
        this.f4900x = (int) resources.getDimension(b.f12152c);
        this.A = (int) resources.getDimension(b.f12153d);
        int dimension = (int) resources.getDimension(b.f12151b);
        this.H = dimension;
        this.G = dimension;
        this.C = dimension;
        this.B = dimension;
        int dimension2 = (int) resources.getDimension(b.f12150a);
        this.J = dimension2;
        this.I = dimension2;
        this.D = dimension2;
        this.f4900x = (int) (obtainStyledAttributes.getDimension(e.N, this.f4900x) / f10);
        this.A = (int) (obtainStyledAttributes.getDimension(e.O, this.A) / f10);
        this.f4901y = obtainStyledAttributes.getColor(e.L, 0);
        this.f4902z = obtainStyledAttributes.getColor(e.M, 0);
        this.B = (int) (obtainStyledAttributes.getDimension(e.D, this.B) / f10);
        this.C = (int) (obtainStyledAttributes.getDimension(e.C, this.C) / f10);
        this.D = (int) (obtainStyledAttributes.getDimension(e.B, this.D) / f10);
        int i10 = e.A;
        Context context = getContext();
        int i11 = a.f12148a;
        this.E = obtainStyledAttributes.getColor(i10, f0.a.d(context, i11));
        this.F = obtainStyledAttributes.getColor(e.f12199z, 0);
        this.G = (int) (obtainStyledAttributes.getDimension(e.K, this.G) / f10);
        this.H = (int) (obtainStyledAttributes.getDimension(e.J, this.H) / f10);
        this.I = (int) (obtainStyledAttributes.getDimension(e.I, this.I) / f10);
        this.J = (int) (obtainStyledAttributes.getDimension(e.G, this.J) / f10);
        this.K = obtainStyledAttributes.getColor(e.H, f0.a.d(getContext(), i11));
        this.L = obtainStyledAttributes.getColor(e.F, f0.a.d(getContext(), a.f12149b));
        this.M = obtainStyledAttributes.getColor(e.E, 0);
        obtainStyledAttributes.recycle();
        this.f4889m = getBackground();
    }

    public boolean e() {
        return this.N.equals("type_content");
    }

    public boolean f() {
        return this.N.equals("type_empty");
    }

    public boolean g() {
        return this.N.equals("type_error");
    }

    public String getState() {
        return this.N;
    }

    public boolean h() {
        return this.N.equals("type_loading");
    }

    public final void i(boolean z10, List<Integer> list) {
        for (View view : this.f4890n) {
            if (!list.contains(Integer.valueOf(view.getId()))) {
                view.setVisibility(z10 ? 0 : 8);
            }
        }
    }

    public final void j() {
        RelativeLayout relativeLayout = this.f4893q;
        if (relativeLayout == null) {
            View inflate = this.f4886j.inflate(d.f12163a, (ViewGroup) null);
            this.f4887k = inflate;
            RelativeLayout relativeLayout2 = (RelativeLayout) inflate.findViewById(c.f12156c);
            this.f4893q = relativeLayout2;
            relativeLayout2.setTag("ProgressView.TAG_EMPTY");
            this.f4894r = (ImageView) this.f4887k.findViewById(c.f12155b);
            this.f4895s = (TextView) this.f4887k.findViewById(c.f12154a);
            this.f4894r.getLayoutParams().width = this.B;
            this.f4894r.getLayoutParams().height = this.C;
            this.f4894r.requestLayout();
            this.f4895s.setTextSize(2, this.D);
            this.f4895s.setTextColor(this.E);
            int i10 = this.F;
            if (i10 != 0) {
                setBackgroundColor(i10);
            }
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            this.f4888l = layoutParams;
            layoutParams.addRule(13);
            addView(this.f4893q, this.f4888l);
            return;
        }
        relativeLayout.setVisibility(0);
    }

    public final void k() {
        RelativeLayout relativeLayout = this.f4896t;
        if (relativeLayout == null) {
            View inflate = this.f4886j.inflate(d.f12164b, (ViewGroup) null);
            this.f4887k = inflate;
            RelativeLayout relativeLayout2 = (RelativeLayout) inflate.findViewById(c.f12160g);
            this.f4896t = relativeLayout2;
            relativeLayout2.setTag("ProgressView.TAG_ERROR");
            this.f4897u = (ImageView) this.f4887k.findViewById(c.f12159f);
            this.f4898v = (TextView) this.f4887k.findViewById(c.f12158e);
            this.f4899w = (Button) this.f4887k.findViewById(c.f12157d);
            this.f4897u.getLayoutParams().width = this.G;
            this.f4897u.getLayoutParams().height = this.H;
            this.f4897u.requestLayout();
            this.f4898v.setTextSize(2, this.I);
            this.f4898v.setTextColor(this.K);
            this.f4899w.setTextSize(2, this.J);
            this.f4899w.setTextColor(this.L);
            int i10 = this.M;
            if (i10 != 0) {
                setBackgroundColor(i10);
            }
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            this.f4888l = layoutParams;
            layoutParams.addRule(13);
            addView(this.f4896t, this.f4888l);
            return;
        }
        relativeLayout.setVisibility(0);
    }

    public final void l() {
        RelativeLayout relativeLayout = this.f4891o;
        if (relativeLayout == null) {
            View inflate = this.f4886j.inflate(d.f12165c, (ViewGroup) null);
            this.f4887k = inflate;
            RelativeLayout relativeLayout2 = (RelativeLayout) inflate.findViewById(c.f12162i);
            this.f4891o = relativeLayout2;
            relativeLayout2.setTag("ProgressView.TAG_LOADING");
            ProgressWheel progressWheel = (ProgressWheel) this.f4887k.findViewById(c.f12161h);
            this.f4892p = progressWheel;
            progressWheel.getLayoutParams().width = this.f4900x;
            this.f4892p.getLayoutParams().height = this.f4900x;
            this.f4892p.setBarWidth(this.A);
            int i10 = this.f4902z;
            if (i10 != 0) {
                this.f4892p.setBarColor(i10);
            }
            this.f4892p.requestLayout();
            int i11 = this.f4901y;
            if (i11 != 0) {
                setBackgroundColor(i11);
            }
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            this.f4888l = layoutParams;
            layoutParams.addRule(13);
            addView(this.f4891o, this.f4888l);
            return;
        }
        relativeLayout.setVisibility(0);
    }

    public void m() {
        p("type_content", null, null, null, null, Collections.emptyList());
    }

    public void n(Drawable drawable, String str, String str2, View.OnClickListener onClickListener) {
        p("type_error", drawable, str, str2, onClickListener, Collections.emptyList());
    }

    public void o() {
        p("type_loading", null, null, null, null, Collections.emptyList());
    }

    public final void p(String str, Drawable drawable, String str2, String str3, View.OnClickListener onClickListener, List<Integer> list) {
        this.N = str;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1093164024:
                if (str.equals("type_empty")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1093013309:
                if (str.equals("type_error")) {
                    c10 = 1;
                    break;
                }
                break;
            case -598131401:
                if (str.equals("type_loading")) {
                    c10 = 2;
                    break;
                }
                break;
            case 16748660:
                if (str.equals("type_content")) {
                    c10 = 3;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                c();
                b();
                j();
                if (drawable != null) {
                    this.f4894r.setImageDrawable(drawable);
                    this.f4894r.setVisibility(0);
                } else {
                    this.f4894r.setVisibility(8);
                }
                this.f4895s.setText(str2);
                i(false, list);
                return;
            case 1:
                c();
                a();
                k();
                if (drawable != null) {
                    this.f4897u.setImageDrawable(drawable);
                    this.f4897u.setVisibility(0);
                } else {
                    this.f4897u.setVisibility(8);
                }
                this.f4898v.setText(str2);
                this.f4899w.setText(str3);
                this.f4899w.setOnClickListener(onClickListener);
                i(false, list);
                return;
            case 2:
                a();
                b();
                l();
                i(false, list);
                return;
            case 3:
                c();
                a();
                b();
                i(true, list);
                return;
            default:
                return;
        }
    }
}
